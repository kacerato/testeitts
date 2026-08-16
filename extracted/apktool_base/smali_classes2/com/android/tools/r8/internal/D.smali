.class public abstract Lcom/android/tools/r8/internal/D;
.super Lcom/android/tools/r8/internal/cJ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/BT;


# static fields
.field public static final e:Z

.field public static final f:Ljava/util/logging/Logger;

.field public static final g:Lcom/android/tools/r8/internal/t;

.field public static final h:Ljava/lang/Object;


# instance fields
.field public volatile b:Ljava/lang/Object;

.field public volatile c:Lcom/android/tools/r8/internal/x;

.field public volatile d:Lcom/android/tools/r8/internal/C;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "b"

    const-class v1, Lcom/android/tools/r8/internal/C;

    :try_start_0
    const-string v2, "guava.concurrent.generate_cancellation_cause"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/android/tools/r8/internal/D;->e:Z

    const-class v2, Lcom/android/tools/r8/internal/D;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sput-object v3, Lcom/android/tools/r8/internal/D;->f:Ljava/util/logging/Logger;

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Lcom/android/tools/r8/internal/B;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/B;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    move-object v4, v3

    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    :goto_1
    :try_start_2
    new-instance v11, Lcom/android/tools/r8/internal/y;

    const-class v5, Ljava/lang/Thread;

    const-string v6, "a"

    invoke-static {v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    invoke-static {v1, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-string v5, "d"

    invoke-static {v2, v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    const-class v1, Lcom/android/tools/r8/internal/x;

    const-string v5, "c"

    invoke-static {v2, v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v9

    const-class v1, Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/internal/y;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v11

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    :goto_2
    move-object v3, v0

    new-instance v0, Lcom/android/tools/r8/internal/z;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/z;-><init>()V

    :goto_3
    sput-object v0, Lcom/android/tools/r8/internal/D;->g:Lcom/android/tools/r8/internal/t;

    if-eqz v3, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/D;->f:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/D;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cJ;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 10
    instance-of v0, p0, Lcom/android/tools/r8/internal/u;

    if-nez v0, :cond_2

    .line 11
    instance-of v0, p0, Lcom/android/tools/r8/internal/w;

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lcom/android/tools/r8/internal/D;->h:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 13
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/android/tools/r8/internal/w;

    iget-object p0, p0, Lcom/android/tools/r8/internal/w;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 14
    :cond_2
    check-cast p0, Lcom/android/tools/r8/internal/u;

    iget-object p0, p0, Lcom/android/tools/r8/internal/u;->b:Ljava/lang/RuntimeException;

    .line 15
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 17
    throw v0
.end method

.method public static a(Lcom/android/tools/r8/internal/D;)V
    .locals 3

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    sget-object v0, Lcom/android/tools/r8/internal/D;->g:Lcom/android/tools/r8/internal/t;

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/t;->b(Lcom/android/tools/r8/internal/D;)Lcom/android/tools/r8/internal/C;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 20
    iget-object v2, v0, Lcom/android/tools/r8/internal/C;->a:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 21
    iput-object v1, v0, Lcom/android/tools/r8/internal/C;->a:Ljava/lang/Thread;

    .line 22
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 23
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/C;->b:Lcom/android/tools/r8/internal/C;

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D;->a()V

    .line 25
    sget-object v0, Lcom/android/tools/r8/internal/D;->g:Lcom/android/tools/r8/internal/t;

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/t;->a(Lcom/android/tools/r8/internal/D;)Lcom/android/tools/r8/internal/x;

    move-result-object p0

    move-object v0, v1

    :goto_1
    if-eqz p0, :cond_2

    .line 26
    iget-object v2, p0, Lcom/android/tools/r8/internal/x;->a:Lcom/android/tools/r8/internal/x;

    .line 27
    iput-object v0, p0, Lcom/android/tools/r8/internal/x;->a:Lcom/android/tools/r8/internal/x;

    move-object v0, p0

    move-object p0, v2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 28
    :cond_3
    throw v1
.end method

.method public static b(Lcom/android/tools/r8/internal/D;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/C;)V
    .locals 4

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/android/tools/r8/internal/C;->a:Ljava/lang/Thread;

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/D;->d:Lcom/android/tools/r8/internal/C;

    .line 4
    sget-object v1, Lcom/android/tools/r8/internal/C;->c:Lcom/android/tools/r8/internal/C;

    if-ne p1, v1, :cond_0

    goto :goto_3

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 5
    iget-object v2, p1, Lcom/android/tools/r8/internal/C;->b:Lcom/android/tools/r8/internal/C;

    .line 6
    iget-object v3, p1, Lcom/android/tools/r8/internal/C;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    move-object v1, p1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    .line 7
    iput-object v2, v1, Lcom/android/tools/r8/internal/C;->b:Lcom/android/tools/r8/internal/C;

    .line 8
    iget-object p1, v1, Lcom/android/tools/r8/internal/C;->a:Ljava/lang/Thread;

    if-nez p1, :cond_3

    goto :goto_0

    .line 9
    :cond_2
    sget-object v3, Lcom/android/tools/r8/internal/D;->g:Lcom/android/tools/r8/internal/t;

    invoke-virtual {v3, p0, p1, v2}, Lcom/android/tools/r8/internal/t;->a(Lcom/android/tools/r8/internal/D;Lcom/android/tools/r8/internal/C;Lcom/android/tools/r8/internal/C;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 29
    :try_start_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/D;->b(Lcom/android/tools/r8/internal/D;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/D;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 33
    :goto_0
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 34
    :catch_2
    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 35
    :goto_1
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    .line 36
    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    if-ne p2, p0, :cond_1

    .line 37
    const-string p2, "this future"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 38
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 4
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remaining delay=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v2, Lcom/android/tools/r8/internal/D;->e:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/tools/r8/internal/u;

    new-instance v3, Ljava/util/concurrent/CancellationException;

    const-string v4, "Future.cancel() was called."

    invoke-direct {v3, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p1, v3}, Lcom/android/tools/r8/internal/u;-><init>(ZLjava/lang/RuntimeException;)V

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/tools/r8/internal/u;->c:Lcom/android/tools/r8/internal/u;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/u;->d:Lcom/android/tools/r8/internal/u;

    goto :goto_0

    :goto_1
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object p1, Lcom/android/tools/r8/internal/D;->g:Lcom/android/tools/r8/internal/t;

    invoke-virtual {p1, p0, v0, v2}, Lcom/android/tools/r8/internal/t;->a(Lcom/android/tools/r8/internal/D;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/android/tools/r8/internal/D;->a(Lcom/android/tools/r8/internal/D;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    .line 45
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {v0}, Lcom/android/tools/r8/internal/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/D;->d:Lcom/android/tools/r8/internal/C;

    .line 49
    sget-object v1, Lcom/android/tools/r8/internal/C;->c:Lcom/android/tools/r8/internal/C;

    if-eq v0, v1, :cond_5

    .line 50
    new-instance v1, Lcom/android/tools/r8/internal/C;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/C;-><init>()V

    .line 51
    :cond_1
    sget-object v2, Lcom/android/tools/r8/internal/D;->g:Lcom/android/tools/r8/internal/t;

    .line 52
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/t;->a(Lcom/android/tools/r8/internal/C;Lcom/android/tools/r8/internal/C;)V

    .line 53
    invoke-virtual {v2, p0, v0, v1}, Lcom/android/tools/r8/internal/t;->a(Lcom/android/tools/r8/internal/D;Lcom/android/tools/r8/internal/C;Lcom/android/tools/r8/internal/C;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    :cond_2
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 57
    invoke-static {v0}, Lcom/android/tools/r8/internal/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 58
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/D;->a(Lcom/android/tools/r8/internal/C;)V

    .line 59
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/D;->d:Lcom/android/tools/r8/internal/C;

    .line 61
    sget-object v2, Lcom/android/tools/r8/internal/C;->c:Lcom/android/tools/r8/internal/C;

    if-ne v0, v2, :cond_1

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/tools/r8/internal/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 63
    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_13

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v2}, Lcom/android/tools/r8/internal/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    const-wide/16 v6, 0x3e8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_8

    .line 6
    iget-object v8, p0, Lcom/android/tools/r8/internal/D;->d:Lcom/android/tools/r8/internal/C;

    .line 7
    sget-object v9, Lcom/android/tools/r8/internal/C;->c:Lcom/android/tools/r8/internal/C;

    if-eq v8, v9, :cond_7

    .line 8
    new-instance v9, Lcom/android/tools/r8/internal/C;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/C;-><init>()V

    .line 9
    :cond_2
    sget-object v10, Lcom/android/tools/r8/internal/D;->g:Lcom/android/tools/r8/internal/t;

    .line 10
    invoke-virtual {v10, v9, v8}, Lcom/android/tools/r8/internal/t;->a(Lcom/android/tools/r8/internal/C;Lcom/android/tools/r8/internal/C;)V

    .line 11
    invoke-virtual {v10, p0, v8, v9}, Lcom/android/tools/r8/internal/t;->a(Lcom/android/tools/r8/internal/D;Lcom/android/tools/r8/internal/C;Lcom/android/tools/r8/internal/C;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_3
    const-wide v10, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    .line 12
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 13
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 15
    invoke-static {v0}, Lcom/android/tools/r8/internal/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    cmp-long v8, v0, v6

    if-gez v8, :cond_3

    .line 17
    invoke-virtual {p0, v9}, Lcom/android/tools/r8/internal/D;->a(Lcom/android/tools/r8/internal/C;)V

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/tools/r8/internal/D;->a(Lcom/android/tools/r8/internal/C;)V

    .line 19
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 20
    :cond_6
    iget-object v8, p0, Lcom/android/tools/r8/internal/D;->d:Lcom/android/tools/r8/internal/C;

    .line 21
    sget-object v10, Lcom/android/tools/r8/internal/C;->c:Lcom/android/tools/r8/internal/C;

    if-ne v8, v10, :cond_2

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/tools/r8/internal/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    cmp-long v8, v0, v2

    if-lez v8, :cond_b

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 24
    invoke-static {v0}, Lcom/android/tools/r8/internal/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_a

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    goto :goto_1

    .line 27
    :cond_a
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 28
    :cond_b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D;->toString()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 30
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Waited "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-long v8, v0, v6

    cmp-long v8, v8, v2

    if-gez v8, :cond_11

    .line 31
    const-string v8, " (plus "

    invoke-static {p2, v8}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    neg-long v0, v0

    .line 32
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 33
    invoke-virtual {p3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    sub-long/2addr v0, v10

    cmp-long p3, v8, v2

    if-eqz p3, :cond_d

    cmp-long v2, v0, v6

    if-lez v2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    :cond_d
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-lez p3, :cond_f

    .line 34
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_e

    .line 35
    const-string p3, ","

    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    :cond_e
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_f
    if-eqz v2, :cond_10

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " nanoseconds "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 38
    :cond_10
    const-string p1, "delay)"

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 39
    :cond_11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D;->isDone()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 40
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    .line 41
    const-string p3, " but future completed as timeout expired"

    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_12
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_13
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/tools/r8/internal/u;

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_1

    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/D;->a(Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, "PENDING"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/n60;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception thrown from implementation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_3

    const-string v4, ", info=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D;->isDone()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/D;->a(Ljava/lang/StringBuilder;)V

    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
