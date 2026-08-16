.class public abstract Lcom/jme3/post/Filter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/post/Filter$Pass;
    }
.end annotation


# instance fields
.field protected defaultPass:Lcom/jme3/post/Filter$Pass;

.field protected enabled:Z

.field protected material:Lcom/jme3/material/Material;

.field private name:Ljava/lang/String;

.field protected postRenderPasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/post/Filter$Pass;",
            ">;"
        }
    .end annotation
.end field

.field protected processor:Lcom/jme3/post/FilterPostProcessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    const-string v0, "filter"

    invoke-direct {p0, v0}, Lcom/jme3/post/Filter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jme3/post/Filter;->enabled:Z

    .line 3
    iput-object p1, p0, Lcom/jme3/post/Filter;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cleanUpFilter(Lcom/jme3/renderer/Renderer;)V
    .locals 0

    return-void
.end method

.method public final cleanup(Lcom/jme3/renderer/Renderer;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/post/Filter;->processor:Lcom/jme3/post/FilterPostProcessor;

    iget-object v0, p0, Lcom/jme3/post/Filter;->defaultPass:Lcom/jme3/post/Filter$Pass;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/post/Filter$Pass;->cleanup(Lcom/jme3/renderer/Renderer;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/post/Filter;->postRenderPasses:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/post/Filter$Pass;

    invoke-virtual {v1, p1}, Lcom/jme3/post/Filter$Pass;->cleanup(Lcom/jme3/renderer/Renderer;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/jme3/post/Filter;->cleanUpFilter(Lcom/jme3/renderer/Renderer;)V

    return-void
.end method

.method public getDefaultPassDepthFormat()Lcom/jme3/texture/Image$Format;
    .locals 1

    sget-object v0, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    return-object v0
.end method

.method public getDefaultPassTextureFormat()Lcom/jme3/texture/Image$Format;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter;->processor:Lcom/jme3/post/FilterPostProcessor;

    invoke-virtual {v0}, Lcom/jme3/post/FilterPostProcessor;->getDefaultPassTextureFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    return-object v0
.end method

.method public abstract getMaterial()Lcom/jme3/material/Material;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPostRenderPasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/post/Filter$Pass;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/post/Filter;->postRenderPasses:Ljava/util/List;

    return-object v0
.end method

.method public getRenderFrameBuffer()Lcom/jme3/texture/FrameBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter;->defaultPass:Lcom/jme3/post/Filter$Pass;

    iget-object v0, v0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    return-object v0
.end method

.method public getRenderedTexture()Lcom/jme3/texture/Texture2D;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter;->defaultPass:Lcom/jme3/post/Filter$Pass;

    iget-object v0, v0, Lcom/jme3/post/Filter$Pass;->renderedTexture:Lcom/jme3/texture/Texture2D;

    return-object v0
.end method

.method public final init(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;II)V
    .locals 6

    new-instance v0, Lcom/jme3/post/Filter$Pass;

    invoke-direct {v0, p0}, Lcom/jme3/post/Filter$Pass;-><init>(Lcom/jme3/post/Filter;)V

    iput-object v0, p0, Lcom/jme3/post/Filter;->defaultPass:Lcom/jme3/post/Filter$Pass;

    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/post/Filter;->getDefaultPassTextureFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v4

    invoke-virtual {p0}, Lcom/jme3/post/Filter;->getDefaultPassDepthFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v5

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/post/Filter$Pass;->init(Lcom/jme3/renderer/Renderer;IILcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;)V

    invoke-virtual/range {p0 .. p5}, Lcom/jme3/post/Filter;->initFilter(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;II)V

    return-void
.end method

.method public abstract initFilter(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;II)V
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/post/Filter;->enabled:Z

    return v0
.end method

.method public isRequiresBilinear()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRequiresDepthTexture()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRequiresSceneTexture()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public postFilter(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;)V
    .locals 0

    return-void
.end method

.method public postFrame(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;)V
    .locals 0

    return-void
.end method

.method public postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V
    .locals 0

    return-void
.end method

.method public preFrame(F)V
    .locals 0

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "name"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/post/Filter;->name:Ljava/lang/String;

    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/post/Filter;->enabled:Z

    return-void
.end method

.method public setDepthTexture(Lcom/jme3/texture/Texture;)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/post/Filter;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    const-string v1, "DepthTexture"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter;->processor:Lcom/jme3/post/FilterPostProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/jme3/post/FilterPostProcessor;->setFilterState(Lcom/jme3/post/Filter;Z)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/jme3/post/Filter;->enabled:Z

    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/post/Filter;->name:Ljava/lang/String;

    return-void
.end method

.method public setProcessor(Lcom/jme3/post/FilterPostProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/post/Filter;->processor:Lcom/jme3/post/FilterPostProcessor;

    return-void
.end method

.method public setRenderFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter;->defaultPass:Lcom/jme3/post/Filter$Pass;

    iput-object p1, v0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    return-void
.end method

.method public setRenderedTexture(Lcom/jme3/texture/Texture2D;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter;->defaultPass:Lcom/jme3/post/Filter$Pass;

    iput-object p1, v0, Lcom/jme3/post/Filter$Pass;->renderedTexture:Lcom/jme3/texture/Texture2D;

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

    iget-object v0, p0, Lcom/jme3/post/Filter;->name:Ljava/lang/String;

    const-string v1, "name"

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jme3/post/Filter;->enabled:Z

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
