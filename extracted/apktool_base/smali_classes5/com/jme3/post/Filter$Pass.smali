.class public Lcom/jme3/post/Filter$Pass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/post/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pass"
.end annotation


# instance fields
.field protected depthTexture:Lcom/jme3/texture/Texture2D;

.field protected name:Ljava/lang/String;

.field protected passMaterial:Lcom/jme3/material/Material;

.field protected renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

.field protected renderedTexture:Lcom/jme3/texture/Texture2D;

.field final synthetic this$0:Lcom/jme3/post/Filter;


# direct methods
.method public constructor <init>(Lcom/jme3/post/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/jme3/post/Filter$Pass;->this$0:Lcom/jme3/post/Filter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/post/Filter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jme3/post/Filter$Pass;->this$0:Lcom/jme3/post/Filter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/jme3/post/Filter$Pass;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public beforeRender()V
    .locals 0

    return-void
.end method

.method public cleanup(Lcom/jme3/renderer/Renderer;)V
    .locals 0

    iget-object p1, p0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->dispose()V

    iget-object p1, p0, Lcom/jme3/post/Filter$Pass;->renderedTexture:Lcom/jme3/texture/Texture2D;

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->dispose()V

    iget-object p1, p0, Lcom/jme3/post/Filter$Pass;->depthTexture:Lcom/jme3/texture/Texture2D;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->dispose()V

    :cond_0
    return-void
.end method

.method public getDepthTexture()Lcom/jme3/texture/Texture2D;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter$Pass;->depthTexture:Lcom/jme3/texture/Texture2D;

    return-object v0
.end method

.method public getPassMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter$Pass;->passMaterial:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getRenderFrameBuffer()Lcom/jme3/texture/FrameBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    return-object v0
.end method

.method public getRenderedTexture()Lcom/jme3/texture/Texture2D;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter$Pass;->renderedTexture:Lcom/jme3/texture/Texture2D;

    return-object v0
.end method

.method public init(Lcom/jme3/renderer/Renderer;IILcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/jme3/post/Filter$Pass;->init(Lcom/jme3/renderer/Renderer;IILcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;I)V

    return-void
.end method

.method public init(Lcom/jme3/renderer/Renderer;IILcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;I)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 16
    invoke-virtual/range {v0 .. v7}, Lcom/jme3/post/Filter$Pass;->init(Lcom/jme3/renderer/Renderer;IILcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;IZ)V

    return-void
.end method

.method public init(Lcom/jme3/renderer/Renderer;IILcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;ILcom/jme3/material/Material;)V
    .locals 0

    .line 17
    invoke-virtual/range {p0 .. p6}, Lcom/jme3/post/Filter$Pass;->init(Lcom/jme3/renderer/Renderer;IILcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;I)V

    .line 18
    iput-object p7, p0, Lcom/jme3/post/Filter$Pass;->passMaterial:Lcom/jme3/material/Material;

    return-void
.end method

.method public init(Lcom/jme3/renderer/Renderer;IILcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;IZ)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    const/4 v0, 0x1

    if-le p6, v0, :cond_0

    .line 2
    sget-object v1, Lcom/jme3/renderer/Caps;->FrameBufferMultisample:Lcom/jme3/renderer/Caps;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGL31:Lcom/jme3/renderer/Caps;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/jme3/texture/FrameBuffer;

    invoke-direct {p1, p2, p3, p6}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    iput-object p1, p0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    .line 4
    new-instance p1, Lcom/jme3/texture/Texture2D;

    invoke-direct {p1, p2, p3, p6, p4}, Lcom/jme3/texture/Texture2D;-><init>(IIILcom/jme3/texture/Image$Format;)V

    iput-object p1, p0, Lcom/jme3/post/Filter$Pass;->renderedTexture:Lcom/jme3/texture/Texture2D;

    .line 5
    iget-object p1, p0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-static {p5}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/jme3/texture/FrameBuffer;->setDepthTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;)V

    if-eqz p7, :cond_1

    .line 6
    new-instance p1, Lcom/jme3/texture/Texture2D;

    invoke-direct {p1, p2, p3, p6, p5}, Lcom/jme3/texture/Texture2D;-><init>(IIILcom/jme3/texture/Image$Format;)V

    iput-object p1, p0, Lcom/jme3/post/Filter$Pass;->depthTexture:Lcom/jme3/texture/Texture2D;

    .line 7
    iget-object p2, p0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-static {p1}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jme3/texture/FrameBuffer;->setDepthTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/jme3/texture/FrameBuffer;

    invoke-direct {p1, p2, p3, v0}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    iput-object p1, p0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    .line 9
    new-instance p1, Lcom/jme3/texture/Texture2D;

    invoke-direct {p1, p2, p3, p4}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object p1, p0, Lcom/jme3/post/Filter$Pass;->renderedTexture:Lcom/jme3/texture/Texture2D;

    .line 10
    iget-object p1, p0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-static {p5}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/jme3/texture/FrameBuffer;->setDepthTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;)V

    if-eqz p7, :cond_1

    .line 11
    new-instance p1, Lcom/jme3/texture/Texture2D;

    invoke-direct {p1, p2, p3, p5}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object p1, p0, Lcom/jme3/post/Filter$Pass;->depthTexture:Lcom/jme3/texture/Texture2D;

    .line 12
    iget-object p2, p0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-static {p1}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jme3/texture/FrameBuffer;->setDepthTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    iget-object p2, p0, Lcom/jme3/post/Filter$Pass;->renderedTexture:Lcom/jme3/texture/Texture2D;

    invoke-static {p2}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/texture/FrameBuffer;->addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    .line 14
    iget-object p1, p0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/texture/FrameBuffer;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public requiresDepthAsTexture()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requiresSceneAsTexture()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPassMaterial(Lcom/jme3/material/Material;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/post/Filter$Pass;->passMaterial:Lcom/jme3/material/Material;

    return-void
.end method

.method public setRenderFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/post/Filter$Pass;->renderFrameBuffer:Lcom/jme3/texture/FrameBuffer;

    return-void
.end method

.method public setRenderedTexture(Lcom/jme3/texture/Texture2D;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/post/Filter$Pass;->renderedTexture:Lcom/jme3/texture/Texture2D;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter$Pass;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
