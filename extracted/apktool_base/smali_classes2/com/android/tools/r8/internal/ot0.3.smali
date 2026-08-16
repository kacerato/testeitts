.class public final Lcom/android/tools/r8/internal/ot0;
.super Lcom/android/tools/r8/internal/Rx;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# instance fields
.field public volatile i:Lcom/android/tools/r8/internal/nt0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Rx;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/nt0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/nt0;-><init>(Lcom/android/tools/r8/internal/ot0;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ot0;->i:Lcom/android/tools/r8/internal/nt0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/tools/r8/internal/u;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/tools/r8/internal/u;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/u;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ot0;->i:Lcom/android/tools/r8/internal/nt0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    instance-of v2, v1, Ljava/lang/Thread;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/tools/r8/internal/zJ;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/zJ;-><init>(Lcom/android/tools/r8/internal/nt0;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/zJ;->a(Lcom/android/tools/r8/internal/zJ;Ljava/lang/Thread;)V

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/android/tools/r8/internal/BJ;->b:Lcom/android/tools/r8/internal/AJ;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    sget-object v2, Lcom/android/tools/r8/internal/BJ;->c:Lcom/android/tools/r8/internal/AJ;

    if-ne v0, v2, :cond_1

    check-cast v1, Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lcom/android/tools/r8/internal/BJ;->b:Lcom/android/tools/r8/internal/AJ;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    sget-object v3, Lcom/android/tools/r8/internal/BJ;->c:Lcom/android/tools/r8/internal/AJ;

    if-ne v0, v3, :cond_0

    check-cast v1, Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    throw v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ot0;->i:Lcom/android/tools/r8/internal/nt0;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ot0;->i:Lcom/android/tools/r8/internal/nt0;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "task=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/tools/r8/internal/D;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ot0;->i:Lcom/android/tools/r8/internal/nt0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/BJ;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ot0;->i:Lcom/android/tools/r8/internal/nt0;

    return-void
.end method
