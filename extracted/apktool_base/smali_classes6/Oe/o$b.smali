.class public final LOe/o$b;
.super LJe/v;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "LJe/v<",
        "TT;TU;TU;>;",
        "LBe/I<",
        "TT;>;",
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

.field public final M:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/G<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field public N:LDe/c;

.field public final O:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field

.field public P:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/I;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/G<",
            "TB;>;>;)V"
        }
    .end annotation

    new-instance v0, LRe/a;

    invoke-direct {v0}, LRe/a;-><init>()V

    invoke-direct {p0, p1, v0}, LJe/v;-><init>(LBe/I;LIe/n;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/o$b;->O:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, LOe/o$b;->L:Ljava/util/concurrent/Callable;

    iput-object p3, p0, LOe/o$b;->M:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LOe/o$b;->P:Ljava/util/Collection;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, LOe/o$b;->P:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LJe/v;->H:LIe/n;

    invoke-interface {v1, v0}, LIe/o;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LJe/v;->J:Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LJe/v;->H:LIe/n;

    iget-object v1, p0, LJe/v;->G:LBe/I;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/u;->d(LIe/n;LBe/I;ZLDe/c;Lio/reactivex/internal/util/q;)V

    :cond_1
    return-void

    :goto_0
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

    iget-object v0, p0, LOe/o$b;->N:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, LOe/o$b;->o()V

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJe/v;->H:LIe/n;

    invoke-interface {v0}, LIe/o;->clear()V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 4

    iget-object v0, p0, LOe/o$b;->N:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/o$b;->N:LDe/c;

    iget-object v0, p0, LJe/v;->G:LBe/I;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, LOe/o$b;->L:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The buffer supplied is null"

    invoke-static {v2, v3}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iput-object v2, p0, LOe/o$b;->P:Ljava/util/Collection;

    :try_start_1
    iget-object v2, p0, LOe/o$b;->M:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The boundary ObservableSource supplied is null"

    invoke-static {v2, v3}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LBe/G;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p1, LOe/o$a;

    invoke-direct {p1, p0}, LOe/o$a;-><init>(LOe/o$b;)V

    iget-object v1, p0, LOe/o$b;->O:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, LBe/I;->e(LDe/c;)V

    iget-boolean v0, p0, LJe/v;->I:Z

    if-nez v0, :cond_0

    invoke-interface {v2, p1}, LBe/G;->c(LBe/I;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v1, p0, LJe/v;->I:Z

    invoke-interface {p1}, LDe/c;->dispose()V

    invoke-static {v2, v0}, LGe/e;->h(Ljava/lang/Throwable;LBe/I;)V

    return-void

    :catchall_1
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v1, p0, LJe/v;->I:Z

    invoke-interface {p1}, LDe/c;->dispose()V

    invoke-static {v2, v0}, LGe/e;->h(Ljava/lang/Throwable;LBe/I;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LOe/o$b;->P:Ljava/util/Collection;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic l(LBe/I;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, LOe/o$b;->n(LBe/I;Ljava/util/Collection;)V

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

    iget-object p1, p0, LJe/v;->G:LBe/I;

    invoke-interface {p1, p2}, LBe/I;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, LOe/o$b;->O:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, LOe/o$b;->dispose()V

    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public p()V
    .locals 4

    :try_start_0
    iget-object v0, p0, LOe/o$b;->L:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, LOe/o$b;->M:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The boundary ObservableSource supplied is null"

    invoke-static {v1, v2}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LBe/G;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v2, LOe/o$a;

    invoke-direct {v2, p0}, LOe/o$a;-><init>(LOe/o$b;)V

    iget-object v3, p0, LOe/o$b;->O:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v2}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, LOe/o$b;->P:Ljava/util/Collection;

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iput-object v0, p0, LOe/o$b;->P:Ljava/util/Collection;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1, v2}, LBe/G;->c(LBe/I;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, p0}, LJe/v;->j(Ljava/lang/Object;ZLDe/c;)V

    goto :goto_1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, LJe/v;->I:Z

    iget-object v1, p0, LOe/o$b;->N:LDe/c;

    invoke-interface {v1}, LDe/c;->dispose()V

    iget-object v1, p0, LJe/v;->G:LBe/I;

    invoke-interface {v1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LOe/o$b;->dispose()V

    iget-object v1, p0, LJe/v;->G:LBe/I;

    invoke-interface {v1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
