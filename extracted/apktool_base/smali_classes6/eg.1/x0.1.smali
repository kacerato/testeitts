.class public final Leg/x0;
.super Leg/w0;
.source "SourceFile"

# interfaces
.implements Leg/b0;


# instance fields
.field public final c:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Leg/w0;-><init>()V

    iput-object p1, p0, Leg/x0;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Leg/x0;->s()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p1}, Lmg/e;->c(Ljava/util/concurrent/Executor;)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-virtual {p0}, Leg/x0;->s()Ljava/util/concurrent/Executor;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public dispatch(Lyf/j;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p0}, Leg/x0;->s()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Leg/b;->i(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v1, p2

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Leg/b;->f()V

    :cond_2
    invoke-virtual {p0, p1, v0}, Leg/x0;->t(Lyf/j;Ljava/util/concurrent/RejectedExecutionException;)V

    invoke-static {}, Leg/j0;->c()Leg/M;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Leg/M;->dispatch(Lyf/j;Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Leg/x0;

    if-eqz v0, :cond_0

    check-cast p1, Leg/x0;

    invoke-virtual {p1}, Leg/x0;->s()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0}, Leg/x0;->s()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Leg/x0;->s()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public m(JLjava/lang/Runnable;Lyf/j;)Leg/m0;
    .locals 9
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Leg/x0;->s()Ljava/util/concurrent/Executor;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    move-object v3, p0

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Leg/x0;->u(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lyf/j;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    new-instance p1, Leg/l0;

    invoke-direct {p1, v2}, Leg/l0;-><init>(Ljava/util/concurrent/Future;)V

    goto :goto_1

    :cond_2
    sget-object v0, Leg/X;->h:Leg/X;

    invoke-virtual {v0, p1, p2, p3, p4}, Leg/X;->m(JLjava/lang/Runnable;Lyf/j;)Leg/m0;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public o(JLeg/p;)V
    .locals 9
    .param p3    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Leg/p<",
            "-",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Leg/x0;->s()Ljava/util/concurrent/Executor;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    new-instance v5, Leg/e1;

    invoke-direct {v5, p0, p3}, Leg/e1;-><init>(Leg/M;Leg/p;)V

    invoke-interface {p3}, Lyf/f;->getContext()Lyf/j;

    move-result-object v6

    move-object v3, p0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Leg/x0;->u(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lyf/j;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p3, v2}, Leg/N0;->w(Leg/p;Ljava/util/concurrent/Future;)V

    return-void

    :cond_2
    sget-object v0, Leg/X;->h:Leg/X;

    invoke-virtual {v0, p1, p2, p3}, Leg/r0;->o(JLeg/p;)V

    return-void
.end method

.method public p(JLyf/f;)Ljava/lang/Object;
    .locals 0
    .param p3    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Leg/b0$a;->a(Leg/b0;JLyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Leg/x0;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final t(Lyf/j;Ljava/util/concurrent/RejectedExecutionException;)V
    .locals 1

    const-string v0, "The task was rejected"

    invoke-static {v0, p2}, Leg/v0;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p2

    invoke-static {p1, p2}, Leg/N0;->g(Lyf/j;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Leg/x0;->s()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lyf/j;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/lang/Runnable;",
            "Lyf/j;",
            "J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p4, p5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p3, p1}, Leg/x0;->t(Lyf/j;Ljava/util/concurrent/RejectedExecutionException;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
