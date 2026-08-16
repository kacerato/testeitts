.class public final Lcom/ardor3d/framework/FrameHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final _canvases:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ardor3d/framework/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private _timeoutSeconds:J

.field private final _timer:Lcom/ardor3d/util/Timer;

.field private final _updaters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ardor3d/framework/Updater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/framework/FrameHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/framework/FrameHandler;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/util/Timer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/ardor3d/framework/FrameHandler;->_timeoutSeconds:J

    iput-object p1, p0, Lcom/ardor3d/framework/FrameHandler;->_timer:Lcom/ardor3d/util/Timer;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/framework/FrameHandler;->_updaters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/framework/FrameHandler;->_canvases:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized addCanvas(Lcom/ardor3d/framework/Canvas;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/framework/FrameHandler;->_canvases:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addUpdater(Lcom/ardor3d/framework/Updater;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/framework/FrameHandler;->_updaters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTimeoutSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/framework/FrameHandler;->_timeoutSeconds:J

    return-wide v0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/framework/FrameHandler;->_canvases:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/framework/Canvas;

    invoke-interface {v1}, Lcom/ardor3d/framework/Canvas;->init()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/framework/FrameHandler;->_updaters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/framework/Updater;

    invoke-interface {v1}, Lcom/ardor3d/framework/Updater;->init()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public declared-synchronized removeCanvas(Lcom/ardor3d/framework/Canvas;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/framework/FrameHandler;->_canvases:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeUpdater(Lcom/ardor3d/framework/Updater;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/framework/FrameHandler;->_updaters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setTimeoutSeconds(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/framework/FrameHandler;->_timeoutSeconds:J

    return-void
.end method

.method public updateFrame()V
    .locals 5
    .annotation runtime Lcom/ardor3d/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/framework/FrameHandler;->_timer:Lcom/ardor3d/util/Timer;

    invoke-virtual {v0}, Lcom/ardor3d/util/Timer;->update()V

    iget-object v0, p0, Lcom/ardor3d/framework/FrameHandler;->_updaters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/framework/Updater;

    iget-object v2, p0, Lcom/ardor3d/framework/FrameHandler;->_timer:Lcom/ardor3d/util/Timer;

    invoke-interface {v1, v2}, Lcom/ardor3d/framework/Updater;->update(Lcom/ardor3d/util/ReadOnlyTimer;)V

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/framework/FrameHandler;->_canvases:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ardor3d/framework/FrameHandler;->_canvases:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/framework/Canvas;

    invoke-interface {v0, v2}, Lcom/ardor3d/framework/Canvas;->draw(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_1

    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/ardor3d/framework/FrameHandler;->_timeoutSeconds:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/ardor3d/framework/FrameHandler;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-class v2, Lcom/ardor3d/framework/FrameHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updateFrame"

    const-string v4, "Timeout while waiting for renderers"

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
