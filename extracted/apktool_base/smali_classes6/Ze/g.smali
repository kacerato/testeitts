.class public final LZe/g;
.super LZe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LZe/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LZe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Lio/reactivex/internal/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Z


# direct methods
.method public constructor <init>(LZe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZe/c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LZe/c;-><init>()V

    iput-object p1, p0, LZe/g;->c:LZe/c;

    return-void
.end method


# virtual methods
.method public O8()Ljava/lang/Throwable;
    .locals 1
    .annotation build LCe/g;
    .end annotation

    iget-object v0, p0, LZe/g;->c:LZe/c;

    invoke-virtual {v0}, LZe/c;->O8()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public P8()Z
    .locals 1

    iget-object v0, p0, LZe/g;->c:LZe/c;

    invoke-virtual {v0}, LZe/c;->P8()Z

    move-result v0

    return v0
.end method

.method public Q8()Z
    .locals 1

    iget-object v0, p0, LZe/g;->c:LZe/c;

    invoke-virtual {v0}, LZe/c;->Q8()Z

    move-result v0

    return v0
.end method

.method public R8()Z
    .locals 1

    iget-object v0, p0, LZe/g;->c:LZe/c;

    invoke-virtual {v0}, LZe/c;->R8()Z

    move-result v0

    return v0
.end method

.method public T8()V
    .locals 2

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZe/g;->e:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LZe/g;->d:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, LZe/g;->e:Lio/reactivex/internal/util/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LZe/g;->c:LZe/c;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/a;->b(Lhn/c;)Z

    goto :goto_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()V
    .locals 2

    iget-boolean v0, p0, LZe/g;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LZe/g;->f:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LZe/g;->f:Z

    iget-boolean v1, p0, LZe/g;->d:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, LZe/g;->e:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, LZe/g;->e:Lio/reactivex/internal/util/a;

    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/p;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/a;->c(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_3
    iput-boolean v0, p0, LZe/g;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LZe/g;->c:LZe/c;

    invoke-interface {v0}, Lhn/c;->a()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LZe/g;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LZe/g;->f:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, LZe/g;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, LZe/g;->e:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, LZe/g;->e:Lio/reactivex/internal/util/a;

    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/p;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/a;->c(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, LZe/g;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LZe/g;->c:LZe/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    invoke-virtual {p0}, LZe/g;->T8()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-boolean v0, p0, LZe/g;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LZe/g;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, LZe/g;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LZe/g;->e:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_1

    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, LZe/g;->e:Lio/reactivex/internal/util/a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {p1}, Lio/reactivex/internal/util/p;->v(Lhn/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/a;->c(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_2
    iput-boolean v1, p0, LZe/g;->d:Z

    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {p1}, Lhn/d;->cancel()V

    goto :goto_4

    :cond_4
    iget-object v0, p0, LZe/g;->c:LZe/c;

    invoke-interface {v0, p1}, LBe/q;->j(Lhn/d;)V

    invoke-virtual {p0}, LZe/g;->T8()V

    :goto_4
    return-void
.end method

.method public m6(Lhn/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LZe/g;->c:LZe/c;

    invoke-virtual {v0, p1}, LBe/l;->l(Lhn/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, LZe/g;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LZe/g;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, LZe/g;->f:Z

    iget-boolean v0, p0, LZe/g;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, LZe/g;->e:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, LZe/g;->e:Lio/reactivex/internal/util/a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-static {p1}, Lio/reactivex/internal/util/p;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/a;->f(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_3
    iput-boolean v1, p0, LZe/g;->d:Z

    const/4 v1, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    iget-object v0, p0, LZe/g;->c:LZe/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
