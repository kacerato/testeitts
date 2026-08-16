.class public final Lcom/google/common/util/concurrent/e$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/e$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Lcom/google/common/util/concurrent/f;

.field public final e:Ljava/util/concurrent/locks/ReentrantLock;

.field public f:Lcom/google/common/util/concurrent/e$d$c;
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic g:Lcom/google/common/util/concurrent/e$d;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/e$d;Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/e$d$a;->g:Lcom/google/common/util/concurrent/e$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/e$d$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p4, p0, Lcom/google/common/util/concurrent/e$d$a;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/common/util/concurrent/e$d$a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/common/util/concurrent/e$d$a;->d:Lcom/google/common/util/concurrent/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$d$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/e$d$a;->c()Lcom/google/common/util/concurrent/e$c;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lcom/google/common/util/concurrent/e$d$b;)Lcom/google/common/util/concurrent/e$c;
    .locals 2
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$d$a;->f:Lcom/google/common/util/concurrent/e$d$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/util/concurrent/e$d$c;

    iget-object v1, p0, Lcom/google/common/util/concurrent/e$d$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/e$d$a;->d(Lcom/google/common/util/concurrent/e$d$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/common/util/concurrent/e$d$c;-><init>(Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/Future;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/e$d$a;->f:Lcom/google/common/util/concurrent/e$d$c;

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/e$d$c;->a(Lcom/google/common/util/concurrent/e$d$c;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$d$a;->f:Lcom/google/common/util/concurrent/e$d$c;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/e$d$a;->d(Lcom/google/common/util/concurrent/e$d$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/e$d$c;->b(Lcom/google/common/util/concurrent/e$d$c;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    :cond_1
    iget-object p1, p0, Lcom/google/common/util/concurrent/e$d$a;->f:Lcom/google/common/util/concurrent/e$d$c;

    return-object p1
.end method

.method public c()Lcom/google/common/util/concurrent/e$c;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/e$d$a;->g:Lcom/google/common/util/concurrent/e$d;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/e$d;->d()Lcom/google/common/util/concurrent/e$d$b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lcom/google/common/util/concurrent/e$d$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/e$d$a;->b(Lcom/google/common/util/concurrent/e$d$b;)Lcom/google/common/util/concurrent/e$c;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/common/util/concurrent/e$d$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    new-instance v0, Lcom/google/common/util/concurrent/e$e;

    invoke-static {}, Lcom/google/common/util/concurrent/Q;->k()Lcom/google/common/util/concurrent/Z;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/util/concurrent/e$e;-><init>(Ljava/util/concurrent/Future;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v2, p0, Lcom/google/common/util/concurrent/e$d$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/common/util/concurrent/e$d$a;->d:Lcom/google/common/util/concurrent/f;

    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/f;->t(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/e$d$a;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/e$d$a;->d:Lcom/google/common/util/concurrent/f;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/f;->t(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/common/util/concurrent/e$e;

    invoke-static {}, Lcom/google/common/util/concurrent/Q;->k()Lcom/google/common/util/concurrent/Z;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/e$e;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/e$d$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/common/util/concurrent/e$d$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/e$d$b;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$d$a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1}, Lcom/google/common/util/concurrent/e$d$b;->b(Lcom/google/common/util/concurrent/e$d$b;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/google/common/util/concurrent/e$d$b;->a(Lcom/google/common/util/concurrent/e$d$b;)Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-interface {v0, p0, v1, v2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method
