.class public LU2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, LU2/o;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static synthetic a(LU2/o;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-virtual/range {p0 .. p5}, LU2/o;->s(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(LU2/o;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-virtual/range {p0 .. p7}, LU2/o;->x(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(LU2/o;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-virtual/range {p0 .. p7}, LU2/o;->v(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/util/concurrent/Callable;LU2/p$b;)V
    .locals 0

    invoke-static {p0, p1}, LU2/o;->q(Ljava/util/concurrent/Callable;LU2/p$b;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;LU2/p$b;)V
    .locals 0

    invoke-static {p0, p1}, LU2/o;->t(Ljava/lang/Runnable;LU2/p$b;)V

    return-void
.end method

.method public static synthetic f(LU2/o;Ljava/lang/Runnable;LU2/p$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LU2/o;->u(Ljava/lang/Runnable;LU2/p$b;)V

    return-void
.end method

.method public static synthetic g(LU2/o;Ljava/util/concurrent/Callable;LU2/p$b;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1, p2}, LU2/o;->r(Ljava/util/concurrent/Callable;LU2/p$b;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Runnable;LU2/p$b;)V
    .locals 0

    invoke-static {p0, p1}, LU2/o;->y(Ljava/lang/Runnable;LU2/p$b;)V

    return-void
.end method

.method public static synthetic j(LU2/o;Ljava/lang/Runnable;LU2/p$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LU2/o;->o(Ljava/lang/Runnable;LU2/p$b;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/Runnable;LU2/p$b;)V
    .locals 0

    invoke-static {p0, p1}, LU2/o;->n(Ljava/lang/Runnable;LU2/p$b;)V

    return-void
.end method

.method public static synthetic l(LU2/o;Ljava/lang/Runnable;LU2/p$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LU2/o;->w(Ljava/lang/Runnable;LU2/p$b;)V

    return-void
.end method

.method public static synthetic m(LU2/o;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-virtual/range {p0 .. p5}, LU2/o;->p(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ljava/lang/Runnable;LU2/p$b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, LU2/p$b;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, LU2/p$b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic q(Ljava/util/concurrent/Callable;LU2/p$b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, LU2/p$b;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, LU2/p$b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic t(Ljava/lang/Runnable;LU2/p$b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, LU2/p$b;->a(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static synthetic y(Ljava/lang/Runnable;LU2/p$b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, LU2/p$b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public final synthetic o(Ljava/lang/Runnable;LU2/p$b;)V
    .locals 2

    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LU2/i;

    invoke-direct {v1, p1, p2}, LU2/i;-><init>(Ljava/lang/Runnable;LU2/p$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic p(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    iget-object v0, p0, LU2/o;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, LU2/g;

    invoke-direct {v1, p0, p1, p5}, LU2/g;-><init>(LU2/o;Ljava/lang/Runnable;LU2/p$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic r(Ljava/util/concurrent/Callable;LU2/p$b;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LU2/l;

    invoke-direct {v1, p1, p2}, LU2/l;-><init>(Ljava/util/concurrent/Callable;LU2/p$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic s(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    iget-object v0, p0, LU2/o;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, LU2/m;

    invoke-direct {v1, p0, p1, p5}, LU2/m;-><init>(LU2/o;Ljava/util/concurrent/Callable;LU2/p$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, LU2/p;

    new-instance v7, LU2/c;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LU2/c;-><init>(LU2/o;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v7}, LU2/p;-><init>(LU2/p$c;)V

    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, LU2/p;

    new-instance v7, LU2/k;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LU2/k;-><init>(LU2/o;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v7}, LU2/p;-><init>(LU2/p$c;)V

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    new-instance v0, LU2/p;

    new-instance v9, LU2/h;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, LU2/h;-><init>(LU2/o;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v9}, LU2/p;-><init>(LU2/p$c;)V

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    new-instance v0, LU2/p;

    new-instance v9, LU2/j;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, LU2/j;-><init>(LU2/o;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v9}, LU2/p;-><init>(LU2/p$c;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shutting down is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shutting down is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic u(Ljava/lang/Runnable;LU2/p$b;)V
    .locals 2

    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LU2/n;

    invoke-direct {v1, p1, p2}, LU2/n;-><init>(Ljava/lang/Runnable;LU2/p$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic v(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    iget-object v0, p0, LU2/o;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, LU2/f;

    invoke-direct {v1, p0, p1, p7}, LU2/f;-><init>(LU2/o;Ljava/lang/Runnable;LU2/p$b;)V

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic w(Ljava/lang/Runnable;LU2/p$b;)V
    .locals 2

    iget-object v0, p0, LU2/o;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LU2/d;

    invoke-direct {v1, p1, p2}, LU2/d;-><init>(Ljava/lang/Runnable;LU2/p$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic x(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;LU2/p$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    iget-object v0, p0, LU2/o;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, LU2/e;

    invoke-direct {v1, p0, p1, p7}, LU2/e;-><init>(LU2/o;Ljava/lang/Runnable;LU2/p$b;)V

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method
