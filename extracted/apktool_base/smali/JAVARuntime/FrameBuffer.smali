.class public final LJAVARuntime/FrameBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Shaders"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/FrameBuffer$ExtractCallback;
    }
.end annotation


# instance fields
.field public transient frameBuffer:LTb/a;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "width",
            "height"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 7
    new-instance v0, LTb/a;

    const/16 v1, 0x64

    invoke-direct {v0, p1, p2, v1}, LTb/a;-><init>(III)V

    iput-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "width",
            "height",
            "renderPercentage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "renderPercentage"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 11
    new-instance v0, LTb/a;

    invoke-direct {v0, p1, p2, p3}, LTb/a;-><init>(III)V

    iput-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "width",
            "height",
            "renderPercentage",
            "colorAttachments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "renderPercentage",
            "colorAttachments"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 14
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 15
    new-instance v0, LTb/a;

    invoke-direct {v0, p1, p2, p3, p4}, LTb/a;-><init>(IIII)V

    iput-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    return-void
.end method

.method public constructor <init>(IIIILJAVARuntime/Texture;)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "width",
            "height",
            "renderPercentage",
            "colorAttachments",
            "depthAttachment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "renderPercentage",
            "colorAttachments",
            "depthAttachment"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 18
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p5, :cond_1

    .line 19
    iget-object p5, p5, LJAVARuntime/Texture;->instance:Lub/p;

    instance-of v0, p5, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, LTb/a;

    move-object v6, p5

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, LTb/a;-><init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V

    iput-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "DepthAttachment needs to be a depth texture. You can create one using Texture.newDepth()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "DepthAttachment can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(LTb/a;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameBuffer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0}, LTb/a;->c()V

    :cond_0
    return-void
.end method

.method public extractGPUImageToBtm(LJAVARuntime/FrameBuffer$ExtractCallback;)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->getColorTexture()LJAVARuntime/Texture;

    move-result-object v0

    iget-object v1, v0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->getColorTexture()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {v0}, LJAVARuntime/Texture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->getColorTexture()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {v0}, LJAVARuntime/Texture;->getHeight()I

    move-result v5

    new-instance v6, LJAVARuntime/FrameBuffer$1;

    invoke-direct {v6, p0, p1}, LJAVARuntime/FrameBuffer$1;-><init>(LJAVARuntime/FrameBuffer;LJAVARuntime/FrameBuffer$ExtractCallback;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lub/p;->z(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callback can`t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColorTexture()LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .line 1
    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColorTexture(I)LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0, p1}, LTb/a;->m(I)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object p1

    invoke-virtual {p1}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getColorTextureArray()[LJAVARuntime/Texture;
    .locals 3

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0}, LTb/a;->j()I

    move-result v0

    new-array v0, v0, [LJAVARuntime/Texture;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v2}, LTb/a;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v2, v1}, LTb/a;->m(I)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v2

    invoke-virtual {v2}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColorTexturesCount()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0}, LTb/a;->j()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDepthTexture()LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0}, LTb/a;->n()Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    move-result-object v0

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0}, LTb/a;->h()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxHeight()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0}, LTb/a;->o()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0}, LTb/a;->p()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRenderPercentage()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0}, LTb/a;->q()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0}, LTb/a;->i()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resize(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "width",
            "height"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0, p1, p2}, LTb/a;->u(II)Z

    :cond_0
    return-void
.end method

.method public resize(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "width",
            "height",
            "renderPercentage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "renderPercentage"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0, p3}, LTb/a;->x(I)V

    .line 5
    iget-object p3, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {p3, p1, p2}, LTb/a;->u(II)Z

    :cond_0
    return-void
.end method

.method public saveGPUImageToFile(LJAVARuntime/File;)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "outputFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFile"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->getColorTexture()LJAVARuntime/Texture;

    move-result-object v0

    iget-object v1, v0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->getColorTexture()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {v0}, LJAVARuntime/Texture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->getColorTexture()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {v0}, LJAVARuntime/Texture;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lub/p;->W(IIIILjava/io/File;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callback can`t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveGPUImageToFile(LJAVARuntime/File;Ljava/lang/Runnable;)V
    .locals 8
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "outputFile",
            "postRunnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputFile",
            "postRunnable"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->getColorTexture()LJAVARuntime/Texture;

    move-result-object v0

    iget-object v1, v0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->getColorTexture()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {v0}, LJAVARuntime/Texture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->getColorTexture()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {v0}, LJAVARuntime/Texture;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lub/p;->X(IIIILjava/io/File;Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "postRunnable can`t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callback can`t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRenderPercentage(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/FrameBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    invoke-virtual {v0, p1}, LTb/a;->x(I)V

    :cond_0
    return-void
.end method

.method public validate()Z
    .locals 2

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/FrameBuffer;->frameBuffer:LTb/a;

    iget-boolean v0, v0, LTb/a;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Framebuffer was destroyed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
