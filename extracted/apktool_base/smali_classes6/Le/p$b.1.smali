.class public final LLe/p$b;
.super LTe/n;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/p;
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
        "LTe/n<",
        "TT;TU;TU;>;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final D0:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "TB;>;"
        }
    .end annotation
.end field

.field public b1:Lhn/d;

.field public i1:LDe/c;

.field public m1:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public final v0:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/c;Ljava/util/concurrent/Callable;Lhn/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "Lhn/b<",
            "TB;>;)V"
        }
    .end annotation

    new-instance v0, LRe/a;

    invoke-direct {v0}, LRe/a;-><init>()V

    invoke-direct {p0, p1, v0}, LTe/n;-><init>(Lhn/c;LIe/n;)V

    iput-object p2, p0, LLe/p$b;->v0:Ljava/util/concurrent/Callable;

    iput-object p3, p0, LLe/p$b;->D0:Lhn/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LLe/p$b;->m1:Ljava/util/Collection;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, LLe/p$b;->m1:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LTe/n;->X:LIe/n;

    invoke-interface {v1, v0}, LIe/o;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LTe/n;->Z:Z

    invoke-virtual {p0}, LTe/n;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LTe/n;->X:LIe/n;

    iget-object v1, p0, LTe/n;->W:Lhn/c;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/u;->e(LIe/n;Lhn/c;ZLDe/c;Lio/reactivex/internal/util/t;)V

    :cond_1
    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, LTe/n;->Y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LTe/n;->Y:Z

    iget-object v0, p0, LLe/p$b;->i1:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LLe/p$b;->b1:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0}, LTe/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LTe/n;->X:LIe/n;

    invoke-interface {v0}, LIe/o;->clear()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LTe/n;->Y:Z

    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, LLe/p$b;->cancel()V

    return-void
.end method

.method public bridge synthetic e(Lhn/c;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, LLe/p$b;->r(Lhn/c;Ljava/util/Collection;)Z

    move-result p1

    return p1
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
    iget-object v0, p0, LLe/p$b;->m1:Ljava/util/Collection;

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

.method public i(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LTe/n;->q(J)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 3

    iget-object v0, p0, LLe/p$b;->b1:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, LLe/p$b;->b1:Lhn/d;

    :try_start_0
    iget-object v0, p0, LLe/p$b;->v0:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, LLe/p$b;->m1:Ljava/util/Collection;

    new-instance v0, LLe/p$a;

    invoke-direct {v0, p0}, LLe/p$a;-><init>(LLe/p$b;)V

    iput-object v0, p0, LLe/p$b;->i1:LDe/c;

    iget-object v1, p0, LTe/n;->W:Lhn/c;

    invoke-interface {v1, p0}, Lhn/c;->j(Lhn/d;)V

    iget-boolean v1, p0, LTe/n;->Y:Z

    if-nez v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    invoke-interface {p1, v1, v2}, Lhn/d;->i(J)V

    iget-object p1, p0, LLe/p$b;->D0:Lhn/b;

    invoke-interface {p1, v0}, Lhn/b;->l(Lhn/c;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, LTe/n;->Y:Z

    invoke-interface {p1}, Lhn/d;->cancel()V

    iget-object p1, p0, LTe/n;->W:Lhn/c;

    invoke-static {v0, p1}, LUe/g;->b(Ljava/lang/Throwable;Lhn/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, LLe/p$b;->cancel()V

    iget-object v0, p0, LTe/n;->W:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public r(Lhn/c;Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TU;>;TU;)Z"
        }
    .end annotation

    iget-object p1, p0, LTe/n;->W:Lhn/c;

    invoke-interface {p1, p2}, Lhn/c;->h(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public s()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LLe/p$b;->v0:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, LLe/p$b;->m1:Ljava/util/Collection;

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iput-object v0, p0, LLe/p$b;->m1:Ljava/util/Collection;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p0}, LTe/n;->o(Ljava/lang/Object;ZLDe/c;)V

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LLe/p$b;->cancel()V

    iget-object v1, p0, LTe/n;->W:Lhn/c;

    invoke-interface {v1, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
