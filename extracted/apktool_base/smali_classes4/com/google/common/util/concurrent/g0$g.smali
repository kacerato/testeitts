.class public final Lcom/google/common/util/concurrent/g0$g;
.super Lcom/google/common/util/concurrent/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation build Lv2/c;
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:I
    .annotation build LJ2/a;
        value = "lock"
    .end annotation
.end field

.field public d:Z
    .annotation build LJ2/a;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/d;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/g0$g;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/common/util/concurrent/g0$g;->c:I

    .line 4
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/g0$g;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/g0$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/common/util/concurrent/g0$g;-><init>()V

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/google/common/util/concurrent/g0$g;->b:Ljava/lang/Object;

    monitor-enter p3

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/g0$g;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/util/concurrent/g0$g;->c:I

    if-nez v0, :cond_0

    monitor-exit p3

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    monitor-exit p3

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/common/util/concurrent/g0$g;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sub-long/2addr p1, v2

    goto :goto_0

    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/g0$g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/common/util/concurrent/g0$g;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/util/concurrent/g0$g;->c:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/common/util/concurrent/g0$g;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/g0$g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/g0$g;->d:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/common/util/concurrent/g0$g;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/util/concurrent/g0$g;->c:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Executor already shutdown"

    invoke-direct {v1, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/g0$g;->d()V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/g0$g;->c()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/g0$g;->c()V

    throw p1
.end method

.method public isShutdown()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/g0$g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/g0$g;->d:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTerminated()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/g0$g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/g0$g;->d:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/common/util/concurrent/g0$g;->c:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/g0$g;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/g0$g;->d:Z

    iget v1, p0, Lcom/google/common/util/concurrent/g0$g;->c:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/common/util/concurrent/g0$g;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/g0$g;->shutdown()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
