.class public final Lcom/google/common/util/concurrent/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/f0$a;
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;

.field public c:Lcom/google/common/util/concurrent/f0$a;
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/f0;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/util/concurrent/f0;->c:Lcom/google/common/util/concurrent/f0$a;

    .line 4
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/f0;->a:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static E(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sub-long v0, p2, v0

    :goto_0
    return-wide v0
.end method

.method public static H(JLjava/util/concurrent/TimeUnit;)J
    .locals 6

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide v4, 0x5ffffffffffffffdL    # 2.6815615859885185E154

    invoke-static/range {v0 .. v5}, Lcom/google/common/primitives/n;->f(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/f0;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static y(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p0

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/16 p0, 0x1

    :cond_1
    return-wide p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public final C(Lcom/google/common/util/concurrent/f0$a;)Z
    .locals 0
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f0;->F()V

    throw p1
.end method

.method public D()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f0;->G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public final F()V
    .locals 2
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->c:Lcom/google/common/util/concurrent/f0$a;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/common/util/concurrent/f0$a;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v0, v0, Lcom/google/common/util/concurrent/f0$a;->d:Lcom/google/common/util/concurrent/f0$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 2
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->c:Lcom/google/common/util/concurrent/f0$a;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/f0;->C(Lcom/google/common/util/concurrent/f0$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/common/util/concurrent/f0$a;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/google/common/util/concurrent/f0$a;->d:Lcom/google/common/util/concurrent/f0$a;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public J(Lcom/google/common/util/concurrent/f0$a;)Z
    .locals 2

    iget-object v0, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public K(Lcom/google/common/util/concurrent/f0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/f0;->b(Lcom/google/common/util/concurrent/f0$a;Z)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public L(Lcom/google/common/util/concurrent/f0$a;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/f0;->H(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    iget-object p4, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne p4, p0, :cond_2

    iget-object p4, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/util/concurrent/f0;->c(Lcom/google/common/util/concurrent/f0$a;JZ)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public M(Lcom/google/common/util/concurrent/f0$a;)V
    .locals 1

    iget-object v0, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/f0;->d(Lcom/google/common/util/concurrent/f0$a;Z)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public N(Lcom/google/common/util/concurrent/f0$a;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/f0;->H(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    iget-object p4, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne p4, p0, :cond_4

    iget-object p4, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    invoke-static {p2, p3}, Lcom/google/common/util/concurrent/f0;->y(J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p4

    move-wide v3, p2

    move v5, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/google/common/util/concurrent/f0;->c(Lcom/google/common/util/concurrent/f0$a;JZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    move v0, p4

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p4, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return v0

    :cond_2
    :try_start_2
    invoke-static {v1, v2, p2, p3}, Lcom/google/common/util/concurrent/f0;->E(JJ)J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v5, 0x0

    move p4, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public final b(Lcom/google/common/util/concurrent/f0$a;Z)V
    .locals 0
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f0;->G()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f0;->e(Lcom/google/common/util/concurrent/f0$a;)V

    :cond_1
    :try_start_0
    iget-object p2, p1, Lcom/google/common/util/concurrent/f0$a;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->await()V

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f0;->f(Lcom/google/common/util/concurrent/f0$a;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f0;->f(Lcom/google/common/util/concurrent/f0$a;)V

    throw p2
.end method

.method public final c(Lcom/google/common/util/concurrent/f0$a;JZ)Z
    .locals 4
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f0;->f(Lcom/google/common/util/concurrent/f0$a;)V

    :cond_1
    return v3

    :cond_2
    if-eqz v1, :cond_4

    if-eqz p4, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f0;->G()V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f0;->e(Lcom/google/common/util/concurrent/f0$a;)V

    move v1, v3

    :cond_4
    iget-object v2, p1, Lcom/google/common/util/concurrent/f0$a;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f0;->f(Lcom/google/common/util/concurrent/f0$a;)V

    :cond_5
    return v0

    :goto_1
    if-nez v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f0;->f(Lcom/google/common/util/concurrent/f0$a;)V

    :cond_6
    throw p2
.end method

.method public final d(Lcom/google/common/util/concurrent/f0$a;Z)V
    .locals 0
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f0;->G()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f0;->e(Lcom/google/common/util/concurrent/f0$a;)V

    :cond_1
    :try_start_0
    iget-object p2, p1, Lcom/google/common/util/concurrent/f0$a;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f0;->f(Lcom/google/common/util/concurrent/f0$a;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f0;->f(Lcom/google/common/util/concurrent/f0$a;)V

    throw p2
.end method

.method public final e(Lcom/google/common/util/concurrent/f0$a;)V
    .locals 2
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget v0, p1, Lcom/google/common/util/concurrent/f0$a;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/google/common/util/concurrent/f0$a;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->c:Lcom/google/common/util/concurrent/f0$a;

    iput-object v0, p1, Lcom/google/common/util/concurrent/f0$a;->d:Lcom/google/common/util/concurrent/f0$a;

    iput-object p1, p0, Lcom/google/common/util/concurrent/f0;->c:Lcom/google/common/util/concurrent/f0$a;

    :cond_0
    return-void
.end method

.method public final f(Lcom/google/common/util/concurrent/f0$a;)V
    .locals 4
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget v0, p1, Lcom/google/common/util/concurrent/f0$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/google/common/util/concurrent/f0$a;->c:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->c:Lcom/google/common/util/concurrent/f0$a;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ne v0, p1, :cond_1

    if-nez v2, :cond_0

    iget-object p1, v0, Lcom/google/common/util/concurrent/f0$a;->d:Lcom/google/common/util/concurrent/f0$a;

    iput-object p1, p0, Lcom/google/common/util/concurrent/f0;->c:Lcom/google/common/util/concurrent/f0$a;

    goto :goto_1

    :cond_0
    iget-object p1, v0, Lcom/google/common/util/concurrent/f0$a;->d:Lcom/google/common/util/concurrent/f0$a;

    iput-object p1, v2, Lcom/google/common/util/concurrent/f0$a;->d:Lcom/google/common/util/concurrent/f0$a;

    :goto_1
    iput-object v1, v0, Lcom/google/common/util/concurrent/f0$a;->d:Lcom/google/common/util/concurrent/f0$a;

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lcom/google/common/util/concurrent/f0$a;->d:Lcom/google/common/util/concurrent/f0$a;

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public h(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7

    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/f0;->H(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/f0;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v4, p1

    :goto_0
    :try_start_1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    move v1, v0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {v2, v3, p1, p2}, Lcom/google/common/util/concurrent/f0;->E(JJ)J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw p1
.end method

.method public i(Lcom/google/common/util/concurrent/f0$a;)Z
    .locals 1

    iget-object v0, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public j(Lcom/google/common/util/concurrent/f0$a;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    iget-object v0, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne v0, p0, :cond_2

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/common/util/concurrent/f0;->h(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    iget-object p2, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public k(Lcom/google/common/util/concurrent/f0$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public l(Lcom/google/common/util/concurrent/f0$a;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    return-void
.end method

.method public n(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public o(Lcom/google/common/util/concurrent/f0$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/google/common/util/concurrent/f0;->b(Lcom/google/common/util/concurrent/f0$a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f0;->D()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public p(Lcom/google/common/util/concurrent/f0$a;JLjava/util/concurrent/TimeUnit;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/f0;->H(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne v2, p0, :cond_8

    iget-object v2, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/common/util/concurrent/f0;->a:Z

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v4

    if-eqz v4, :cond_1

    move-wide v8, v6

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :cond_1
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/f0;->y(J)J

    move-result-wide v8

    invoke-virtual {v2, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_2

    return v5

    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result p2

    if-nez p2, :cond_4

    cmp-long p2, v8, v6

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v8, v9, v0, v1}, Lcom/google/common/util/concurrent/f0;->E(JJ)J

    move-result-wide v0

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/google/common/util/concurrent/f0;->c(Lcom/google/common/util/concurrent/f0$a;JZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x1

    :cond_5
    if-nez v5, :cond_6

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_6
    return v5

    :goto_3
    if-nez v3, :cond_7

    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f0;->G()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_7
    :goto_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public q(Lcom/google/common/util/concurrent/f0$a;)V
    .locals 2

    iget-object v0, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/google/common/util/concurrent/f0;->d(Lcom/google/common/util/concurrent/f0$a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f0;->D()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public r(Lcom/google/common/util/concurrent/f0$a;JLjava/util/concurrent/TimeUnit;)Z
    .locals 11

    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/f0;->H(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    iget-object p4, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne p4, p0, :cond_9

    iget-object p4, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/f0;->a:Z

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, v4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_1
    :goto_0
    invoke-static {p2, p3}, Lcom/google/common/util/concurrent/f0;->y(J)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v9, p2

    :goto_1
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v9, v10, v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_6

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0$a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    cmp-long v2, v7, v4

    if-nez v2, :cond_3

    invoke-static {p2, p3}, Lcom/google/common/util/concurrent/f0;->y(J)J

    move-result-wide v7

    move-wide v9, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_3
    invoke-static {v7, v8, p2, p3}, Lcom/google/common/util/concurrent/f0;->E(JJ)J

    move-result-wide v9

    :goto_3
    invoke-virtual {p0, p1, v9, v10, v0}, Lcom/google/common/util/concurrent/f0;->c(Lcom/google/common/util/concurrent/f0$a;JZ)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-nez v6, :cond_4

    :try_start_3
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    return v6

    :goto_5
    :try_start_4
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move v0, v3

    move v1, v6

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    return v3

    :catch_1
    :try_start_5
    invoke-static {v7, v8, p2, p3}, Lcom/google/common/util/concurrent/f0;->E(JJ)J

    move-result-wide v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v1, v6

    goto :goto_1

    :catchall_2
    move-exception p1

    move v1, v6

    :goto_6
    if-eqz v1, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_8
    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public u(Lcom/google/common/util/concurrent/f0$a;)I
    .locals 1

    iget-object v0, p1, Lcom/google/common/util/concurrent/f0$a;->a:Lcom/google/common/util/concurrent/f0;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget p1, p1, Lcom/google/common/util/concurrent/f0$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p1
.end method

.method public v(Ljava/lang/Thread;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThread(Ljava/lang/Thread;)Z

    move-result p1

    return p1
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public x(Lcom/google/common/util/concurrent/f0$a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f0;->u(Lcom/google/common/util/concurrent/f0$a;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/f0;->a:Z

    return v0
.end method
