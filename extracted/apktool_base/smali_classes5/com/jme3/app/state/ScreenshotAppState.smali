.class public Lcom/jme3/app/state/ScreenshotAppState;
.super Lcom/jme3/app/state/AbstractAppState;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/ActionListener;
.implements Lcom/jme3/post/SceneProcessor;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private capture:Z

.field private filePath:Ljava/lang/String;

.field private height:I

.field private inputManager:Lcom/jme3/input/InputManager;

.field private last:Lcom/jme3/renderer/ViewPort;

.field private numbered:Z

.field private outBuf:Ljava/nio/ByteBuffer;

.field private renderer:Lcom/jme3/renderer/Renderer;

.field private rm:Lcom/jme3/renderer/RenderManager;

.field private shotIndex:J

.field private shotName:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/app/state/ScreenshotAppState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/app/state/ScreenshotAppState;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/jme3/app/state/ScreenshotAppState;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->capture:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->numbered:Z

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotIndex:J

    .line 6
    iput-object p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->capture:Z

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->numbered:Z

    .line 16
    iput-object p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->filePath:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotIndex:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->capture:Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->numbered:Z

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotIndex:J

    .line 11
    iput-object p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->filePath:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->capture:Z

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->numbered:Z

    .line 21
    iput-object p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->filePath:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotName:Ljava/lang/String;

    .line 23
    iput-wide p3, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotIndex:J

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->inputManager:Lcom/jme3/input/InputManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "ScreenShot"

    invoke-virtual {v0, v2}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {v0, p0}, Lcom/jme3/input/InputManager;->removeListener(Lcom/jme3/input/controls/InputListener;)V

    iput-object v1, p0, Lcom/jme3/app/state/ScreenshotAppState;->inputManager:Lcom/jme3/input/InputManager;

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->last:Lcom/jme3/renderer/ViewPort;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/jme3/app/state/ScreenshotAppState;->last:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0, p0}, Lcom/jme3/renderer/ViewPort;->removeProcessor(Lcom/jme3/post/SceneProcessor;)V

    :cond_1
    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->cleanup()V

    return-void
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/app/state/ScreenshotAppState;->inputManager:Lcom/jme3/input/InputManager;

    .line 3
    new-instance v2, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v3, 0xb7

    invoke-direct {v2, v3}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v3, v0, [Lcom/jme3/input/controls/Trigger;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "ScreenShot"

    invoke-virtual {v1, v2, v3}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    .line 4
    iget-object v1, p0, Lcom/jme3/app/state/ScreenshotAppState;->inputManager:Lcom/jme3/input/InputManager;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    .line 5
    invoke-interface {p2}, Lcom/jme3/app/Application;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/renderer/RenderManager;->getPostViews()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/ViewPort;

    iput-object v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->last:Lcom/jme3/renderer/ViewPort;

    .line 7
    invoke-virtual {v0, p0}, Lcom/jme3/renderer/ViewPort;->addProcessor(Lcom/jme3/post/SceneProcessor;)V

    .line 8
    iget-object v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotName:Ljava/lang/String;

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jme3/app/state/AbstractAppState;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    return-void
.end method

.method public initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 1

    .line 11
    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->renderer:Lcom/jme3/renderer/Renderer;

    .line 12
    iput-object p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->rm:Lcom/jme3/renderer/RenderManager;

    .line 13
    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/jme3/app/state/ScreenshotAppState;->reshape(Lcom/jme3/renderer/ViewPort;II)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->renderer:Lcom/jme3/renderer/Renderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAction(Ljava/lang/String;ZF)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->capture:Z

    :cond_0
    return-void
.end method

.method public postFrame(Lcom/jme3/texture/FrameBuffer;)V
    .locals 8

    iget-boolean v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->capture:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->capture:Z

    iget-object v1, p0, Lcom/jme3/app/state/ScreenshotAppState;->rm:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v1}, Lcom/jme3/renderer/RenderManager;->getCurrentCamera()Lcom/jme3/renderer/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v2

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v3

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getViewPortRight()F

    move-result v4

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getViewPortTop()F

    move-result v5

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v5, v1

    float-to-int v1, v5

    iget-object v5, p0, Lcom/jme3/app/state/ScreenshotAppState;->renderer:Lcom/jme3/renderer/Renderer;

    iget v6, p0, Lcom/jme3/app/state/ScreenshotAppState;->width:I

    iget v7, p0, Lcom/jme3/app/state/ScreenshotAppState;->height:I

    invoke-interface {v5, v0, v0, v6, v7}, Lcom/jme3/renderer/Renderer;->setViewPort(IIII)V

    iget-object v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->renderer:Lcom/jme3/renderer/Renderer;

    iget-object v5, p0, Lcom/jme3/app/state/ScreenshotAppState;->outBuf:Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1, v5}, Lcom/jme3/renderer/Renderer;->readFrameBuffer(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {p1, v2, v3, v4, v1}, Lcom/jme3/renderer/Renderer;->setViewPort(IIII)V

    iget-boolean p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->numbered:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotIndex:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotIndex:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotName:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->filePath:Ljava/lang/String;

    const-string v1, ".png"

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jme3/system/JmeSystem;->getStorageFolder()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jme3/app/state/ScreenshotAppState;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    :goto_1
    sget-object v0, Lcom/jme3/app/state/ScreenshotAppState;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Saving ScreenShot to: {0}"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jme3/app/state/ScreenshotAppState;->writeImageFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object v0, Lcom/jme3/app/state/ScreenshotAppState;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Error while saving screenshot"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
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

.method public reshape(Lcom/jme3/renderer/ViewPort;II)V
    .locals 0

    mul-int p1, p2, p3

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->outBuf:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/jme3/app/state/ScreenshotAppState;->width:I

    iput p3, p0, Lcom/jme3/app/state/ScreenshotAppState;->height:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotName:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setIsNumbered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->numbered:Z

    return-void
.end method

.method public setProfiler(Lcom/jme3/profile/AppProfiler;)V
    .locals 0

    return-void
.end method

.method public setShotIndex(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jme3/app/state/ScreenshotAppState;->shotIndex:J

    return-void
.end method

.method public takeScreenshot()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/app/state/ScreenshotAppState;->capture:Z

    return-void
.end method

.method public writeImageFile(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    const-string p1, "png"

    iget-object v1, p0, Lcom/jme3/app/state/ScreenshotAppState;->outBuf:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/jme3/app/state/ScreenshotAppState;->width:I

    iget v3, p0, Lcom/jme3/app/state/ScreenshotAppState;->height:I

    invoke-static {v0, p1, v1, v2, v3}, Lcom/jme3/system/JmeSystem;->writeImageFile(Ljava/io/OutputStream;Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p1
.end method
