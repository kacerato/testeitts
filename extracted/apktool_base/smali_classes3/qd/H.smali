.class public Lqd/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/J;


# instance fields
.field public final a:Ljava/util/concurrent/locks/Lock;

.field public final b:Ljava/util/concurrent/locks/Condition;

.field public final c:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lqd/H;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lqd/H;->b:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lqd/H;->c:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lqd/H;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lqd/H;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lqd/H;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lqd/H;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(JLqd/z;Lqd/z;Lqd/A;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/AlertException;,
            Ljava/lang/InterruptedException;,
            Lcom/lmax/disruptor/TimeoutException;
        }
    .end annotation

    iget-wide v0, p0, Lqd/H;->c:J

    invoke-virtual {p3}, Lqd/z;->c()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_2

    iget-object v2, p0, Lqd/H;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    :try_start_0
    invoke-virtual {p3}, Lqd/z;->c()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    invoke-interface {p5}, Lqd/A;->b()V

    iget-object v2, p0, Lqd/H;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/lmax/disruptor/TimeoutException;->INSTANCE:Lcom/lmax/disruptor/TimeoutException;

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lqd/H;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    iget-object p2, p0, Lqd/H;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_2
    :goto_2
    invoke-virtual {p4}, Lqd/z;->c()J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-gez p3, :cond_3

    invoke-interface {p5}, Lqd/A;->b()V

    goto :goto_2

    :cond_3
    return-wide v0
.end method
