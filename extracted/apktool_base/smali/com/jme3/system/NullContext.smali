.class public Lcom/jme3/system/NullContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/system/JmeContext;
.implements Ljava/lang/Runnable;


# static fields
.field protected static final THREAD_NAME:Ljava/lang/String; = "jME3 Headless Main"

.field protected static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected created:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final createdLock:Ljava/lang/Object;

.field protected frameRate:I

.field protected listener:Lcom/jme3/system/SystemListener;

.field protected needClose:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected renderer:Lcom/jme3/system/NullRenderer;

.field protected settings:Lcom/jme3/system/AppSettings;

.field private timeLate:J

.field private timeThen:J

.field protected timer:Lcom/jme3/system/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/system/NullContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/system/NullContext;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jme3/system/NullContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jme3/system/NullContext;->needClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jme3/system/NullContext;->createdLock:Ljava/lang/Object;

    new-instance v0, Lcom/jme3/system/AppSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/jme3/system/AppSettings;-><init>(Z)V

    iput-object v0, p0, Lcom/jme3/system/NullContext;->settings:Lcom/jme3/system/AppSettings;

    return-void
.end method


# virtual methods
.method public create()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/jme3/system/NullContext;->create(Z)V

    return-void
.end method

.method public create(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/system/NullContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/jme3/system/NullContext;->logger:Ljava/util/logging/Logger;

    const-string v0, "create() called when NullContext is already created!"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "jME3 Headless Main"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/system/NullContext;->waitFor(Z)V

    :cond_1
    return-void
.end method

.method public deinitInThread()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/system/NullContext;->listener:Lcom/jme3/system/SystemListener;

    invoke-interface {v0}, Lcom/jme3/system/SystemListener;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/system/NullContext;->timer:Lcom/jme3/system/Timer;

    iget-object v0, p0, Lcom/jme3/system/NullContext;->createdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/jme3/system/NullContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/jme3/system/NullContext;->createdLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/jme3/system/NullContext;->destroy(Z)V

    return-void
.end method

.method public destroy(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/system/NullContext;->needClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/system/NullContext;->waitFor(Z)V

    :cond_0
    return-void
.end method

.method public getDisplays()Lcom/jme3/system/Displays;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFramebufferHeight()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFramebufferWidth()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJoyInput()Lcom/jme3/input/JoyInput;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyInput()Lcom/jme3/input/KeyInput;
    .locals 1

    new-instance v0, Lcom/jme3/input/dummy/DummyKeyInput;

    invoke-direct {v0}, Lcom/jme3/input/dummy/DummyKeyInput;-><init>()V

    return-object v0
.end method

.method public getMouseInput()Lcom/jme3/input/MouseInput;
    .locals 1

    new-instance v0, Lcom/jme3/input/dummy/DummyMouseInput;

    invoke-direct {v0}, Lcom/jme3/input/dummy/DummyMouseInput;-><init>()V

    return-object v0
.end method

.method public getOpenCLContext()Lcom/jme3/opencl/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryDisplay()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRenderer()Lcom/jme3/renderer/Renderer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/NullContext;->renderer:Lcom/jme3/system/NullRenderer;

    return-object v0
.end method

.method public getSettings()Lcom/jme3/system/AppSettings;
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/NullContext;->settings:Lcom/jme3/system/AppSettings;

    return-object v0
.end method

.method public getSystemListener()Lcom/jme3/system/SystemListener;
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/NullContext;->listener:Lcom/jme3/system/SystemListener;

    return-object v0
.end method

.method public getTimer()Lcom/jme3/system/Timer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/NullContext;->timer:Lcom/jme3/system/Timer;

    return-object v0
.end method

.method public getTouchInput()Lcom/jme3/input/TouchInput;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/jme3/system/JmeContext$Type;
    .locals 1

    sget-object v0, Lcom/jme3/system/JmeContext$Type;->Headless:Lcom/jme3/system/JmeContext$Type;

    return-object v0
.end method

.method public getWindowXPosition()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindowYPosition()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initInThread()V
    .locals 4

    sget-object v0, Lcom/jme3/system/NullContext;->logger:Ljava/util/logging/Logger;

    const-string v1, "NullContext created."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Running on thread: {0}"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/jme3/system/NullContext$1;

    invoke-direct {v0, p0}, Lcom/jme3/system/NullContext$1;-><init>(Lcom/jme3/system/NullContext;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance v0, Lcom/jme3/system/NanoTimer;

    invoke-direct {v0}, Lcom/jme3/system/NanoTimer;-><init>()V

    iput-object v0, p0, Lcom/jme3/system/NullContext;->timer:Lcom/jme3/system/Timer;

    new-instance v0, Lcom/jme3/system/NullRenderer;

    invoke-direct {v0}, Lcom/jme3/system/NullRenderer;-><init>()V

    iput-object v0, p0, Lcom/jme3/system/NullContext;->renderer:Lcom/jme3/system/NullRenderer;

    iget-object v0, p0, Lcom/jme3/system/NullContext;->createdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/jme3/system/NullContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/jme3/system/NullContext;->createdLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/jme3/system/NullContext;->listener:Lcom/jme3/system/SystemListener;

    invoke-interface {v0}, Lcom/jme3/system/SystemListener;->initialize()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isCreated()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/NullContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isRenderable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public restart()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/system/NullContext;->initInThread()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/system/NullContext;->listener:Lcom/jme3/system/SystemListener;

    invoke-interface {v0}, Lcom/jme3/system/SystemListener;->update()V

    iget v0, p0, Lcom/jme3/system/NullContext;->frameRate:I

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/jme3/system/NullContext;->sync(I)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/system/NullContext;->needClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/system/NullContext;->deinitInThread()V

    sget-object v0, Lcom/jme3/system/NullContext;->logger:Ljava/util/logging/Logger;

    const-string v1, "NullContext destroyed."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoFlushFrames(Z)V
    .locals 0

    return-void
.end method

.method public setSettings(Lcom/jme3/system/AppSettings;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/NullContext;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v0, p1}, Lcom/jme3/system/AppSettings;->copyFrom(Lcom/jme3/system/AppSettings;)V

    invoke-virtual {p1}, Lcom/jme3/system/AppSettings;->getFrameRate()I

    move-result p1

    iput p1, p0, Lcom/jme3/system/NullContext;->frameRate:I

    if-gtz p1, :cond_0

    const/16 p1, 0x3c

    iput p1, p0, Lcom/jme3/system/NullContext;->frameRate:I

    :cond_0
    return-void
.end method

.method public setSystemListener(Lcom/jme3/system/SystemListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/system/NullContext;->listener:Lcom/jme3/system/SystemListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sync(I)V
    .locals 8

    iget-object v0, p0, Lcom/jme3/system/NullContext;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v0}, Lcom/jme3/system/Timer;->getResolution()J

    move-result-wide v0

    int-to-long v2, p1

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/jme3/system/NullContext;->timeThen:J

    add-long/2addr v0, v2

    iget-object p1, p0, Lcom/jme3/system/NullContext;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {p1}, Lcom/jme3/system/Timer;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jme3/system/NullContext;->timeLate:J

    :goto_0
    add-long v6, v2, v4

    cmp-long p1, v0, v6

    if-lez p1, :cond_0

    const-wide/16 v6, 0x1

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    iget-object p1, p0, Lcom/jme3/system/NullContext;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {p1}, Lcom/jme3/system/Timer;->getTime()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/jme3/system/NullContext;->timeLate:J

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jme3/system/NullContext;->timeLate:J

    :goto_1
    iput-wide v2, p0, Lcom/jme3/system/NullContext;->timeThen:J

    return-void
.end method

.method public waitFor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/system/NullContext;->createdLock:Ljava/lang/Object;

    monitor-enter v0

    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/jme3/system/NullContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/jme3/system/NullContext;->createdLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
