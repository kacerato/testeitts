.class public final LOe/q$a;
.super LJe/v;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "LJe/v<",
        "TT;TU;TU;>;",
        "Ljava/lang/Runnable;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final L:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final M:J

.field public final N:Ljava/util/concurrent/TimeUnit;

.field public final O:I

.field public final P:Z

.field public final Q:LBe/J$c;

.field public R:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public S:LDe/c;

.field public T:LDe/c;

.field public U:J

.field public V:J


# direct methods
.method public constructor <init>(LBe/I;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLBe/J$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "IZ",
            "LBe/J$c;",
            ")V"
        }
    .end annotation

    new-instance v0, LRe/a;

    invoke-direct {v0}, LRe/a;-><init>()V

    invoke-direct {p0, p1, v0}, LJe/v;-><init>(LBe/I;LIe/n;)V

    iput-object p2, p0, LOe/q$a;->L:Ljava/util/concurrent/Callable;

    iput-wide p3, p0, LOe/q$a;->M:J

    iput-object p5, p0, LOe/q$a;->N:Ljava/util/concurrent/TimeUnit;

    iput p6, p0, LOe/q$a;->O:I

    iput-boolean p7, p0, LOe/q$a;->P:Z

    iput-object p8, p0, LOe/q$a;->Q:LBe/J$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, LOe/q$a;->Q:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LOe/q$a;->R:Ljava/util/Collection;

    const/4 v1, 0x0

    iput-object v1, p0, LOe/q$a;->R:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LJe/v;->H:LIe/n;

    invoke-interface {v1, v0}, LIe/o;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LJe/v;->J:Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJe/v;->H:LIe/n;

    iget-object v1, p0, LJe/v;->G:LBe/I;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/u;->d(LIe/n;LBe/I;ZLDe/c;Lio/reactivex/internal/util/q;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LJe/v;->I:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, LJe/v;->I:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LJe/v;->I:Z

    iget-object v0, p0, LOe/q$a;->T:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/q$a;->Q:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, LOe/q$a;->R:Ljava/util/Collection;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 7

    iget-object v0, p0, LOe/q$a;->T:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/q$a;->T:LDe/c;

    :try_start_0
    iget-object v0, p0, LOe/q$a;->L:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, LOe/q$a;->R:Ljava/util/Collection;

    iget-object p1, p0, LJe/v;->G:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    iget-object v0, p0, LOe/q$a;->Q:LBe/J$c;

    iget-wide v4, p0, LOe/q$a;->M:J

    iget-object v6, p0, LOe/q$a;->N:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, LBe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    iput-object p1, p0, LOe/q$a;->S:LDe/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1}, LDe/c;->dispose()V

    iget-object p1, p0, LJe/v;->G:LBe/I;

    invoke-static {v0, p1}, LGe/e;->h(Ljava/lang/Throwable;LBe/I;)V

    iget-object p1, p0, LOe/q$a;->Q:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    :cond_0
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LOe/q$a;->R:Ljava/util/Collection;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    iget v1, p0, LOe/q$a;->O:I

    if-ge p1, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, LOe/q$a;->R:Ljava/util/Collection;

    iget-wide v1, p0, LOe/q$a;->U:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, LOe/q$a;->U:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, LOe/q$a;->P:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, LOe/q$a;->S:LDe/c;

    invoke-interface {p1}, LDe/c;->dispose()V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p0}, LJe/v;->m(Ljava/lang/Object;ZLDe/c;)V

    :try_start_1
    iget-object p1, p0, LOe/q$a;->L:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The buffer supplied is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-enter p0

    :try_start_2
    iput-object p1, p0, LOe/q$a;->R:Ljava/util/Collection;

    iget-wide v0, p0, LOe/q$a;->V:J

    add-long/2addr v0, v3

    iput-wide v0, p0, LOe/q$a;->V:J

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean p1, p0, LOe/q$a;->P:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, LOe/q$a;->Q:LBe/J$c;

    iget-wide v4, p0, LOe/q$a;->M:J

    iget-object v6, p0, LOe/q$a;->N:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, LBe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    iput-object p1, p0, LOe/q$a;->S:LDe/c;

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LOe/q$a;->dispose()V

    return-void

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public bridge synthetic l(LBe/I;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, LOe/q$a;->n(LBe/I;Ljava/util/Collection;)V

    return-void
.end method

.method public n(LBe/I;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TU;>;TU;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, LBe/I;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, LOe/q$a;->R:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LOe/q$a;->Q:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, LOe/q$a;->L:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, LOe/q$a;->R:Ljava/util/Collection;

    if-eqz v1, :cond_1

    iget-wide v2, p0, LOe/q$a;->U:J

    iget-wide v4, p0, LOe/q$a;->V:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, p0, LOe/q$a;->R:Ljava/util/Collection;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p0}, LJe/v;->m(Ljava/lang/Object;ZLDe/c;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LOe/q$a;->dispose()V

    iget-object v1, p0, LJe/v;->G:LBe/I;

    invoke-interface {v1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
