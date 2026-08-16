.class public Lcom/ardor3d/util/GameTaskQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RENDER:Ljava/lang/String; = "render"

.field public static final UPDATE:Ljava/lang/String; = "update"


# instance fields
.field private final _executeMultiple:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private _executionTime:J

.field private final _queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/ardor3d/util/GameTask<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/GameTaskQueue;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/GameTaskQueue;->_executeMultiple:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ardor3d/util/GameTaskQueue;->_executionTime:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/GameTaskQueue;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/ardor3d/util/GameTask;

    invoke-direct {v0, p1}, Lcom/ardor3d/util/GameTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p1, p0, Lcom/ardor3d/util/GameTaskQueue;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public enqueueAll(Lcom/ardor3d/util/GameTaskQueue;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/util/GameTaskQueue;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p1, Lcom/ardor3d/util/GameTaskQueue;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lcom/ardor3d/util/GameTaskQueue;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public execute()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/ardor3d/util/GameTaskQueue;->execute(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public execute(Lcom/ardor3d/renderer/Renderer;)V
    .locals 6

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/ardor3d/util/GameTaskQueue;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/util/GameTask;

    :cond_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v2}, Lcom/ardor3d/util/GameTask;->getCallable()Ljava/util/concurrent/Callable;

    move-result-object v3

    instance-of v3, v3, Lcom/ardor3d/renderer/RendererCallable;

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/ardor3d/util/GameTask;->getCallable()Ljava/util/concurrent/Callable;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/renderer/RendererCallable;

    invoke-virtual {v3, p1}, Lcom/ardor3d/renderer/RendererCallable;->setRenderer(Lcom/ardor3d/renderer/Renderer;)V

    .line 6
    :cond_2
    invoke-virtual {v2}, Lcom/ardor3d/util/GameTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    iget-object v2, p0, Lcom/ardor3d/util/GameTaskQueue;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/util/GameTask;

    if-nez v2, :cond_2

    return-void

    .line 8
    :cond_3
    invoke-virtual {v2}, Lcom/ardor3d/util/GameTask;->invoke()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 10
    iget-object v4, p0, Lcom/ardor3d/util/GameTaskQueue;->_executeMultiple:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lcom/ardor3d/util/GameTaskQueue;->_executionTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/ardor3d/util/GameTaskQueue;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/util/GameTask;

    if-nez v2, :cond_0

    :cond_4
    return-void
.end method

.method public getExecutionTime()J
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/util/GameTaskQueue;->_executeMultiple:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/ardor3d/util/GameTaskQueue;->_executionTime:J

    return-wide v0
.end method

.method public isExecuteAll()Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/GameTaskQueue;->_executeMultiple:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setExecuteMultiple(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/util/GameTaskQueue;->_executeMultiple:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/ardor3d/util/GameTaskQueue;->_executionTime:J

    :cond_0
    return-void
.end method

.method public setExecutionTime(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/ardor3d/util/GameTaskQueue;->_executionTime:J

    iget-object p1, p0, Lcom/ardor3d/util/GameTaskQueue;->_executeMultiple:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/GameTaskQueue;->_queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method
