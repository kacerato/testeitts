.class public final Lbf/g;
.super Lbf/i;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/util/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbf/i<",
        "TT;>;",
        "Lio/reactivex/internal/util/a$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lbf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Lio/reactivex/internal/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lbf/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/i<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lbf/i;-><init>()V

    iput-object p1, p0, Lbf/g;->b:Lbf/i;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lbf/g;->b:Lbf/i;

    invoke-virtual {v0, p1}, LBe/B;->c(LBe/I;)V

    return-void
.end method

.method public a()V
    .locals 2

    iget-boolean v0, p0, Lbf/g;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbf/g;->e:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/g;->e:Z

    iget-boolean v1, p0, Lbf/g;->c:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lbf/g;->d:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lbf/g;->d:Lio/reactivex/internal/util/a;

    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/p;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/a;->c(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_3
    iput-boolean v0, p0, Lbf/g;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbf/g;->b:Lbf/i;

    invoke-interface {v0}, LBe/I;->a()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e(LDe/c;)V
    .locals 2

    iget-boolean v0, p0, Lbf/g;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbf/g;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lbf/g;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbf/g;->d:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_1

    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lbf/g;->d:Lio/reactivex/internal/util/a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {p1}, Lio/reactivex/internal/util/p;->g(LDe/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/a;->c(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_2
    iput-boolean v1, p0, Lbf/g;->c:Z

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

    invoke-interface {p1}, LDe/c;->dispose()V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lbf/g;->b:Lbf/i;

    invoke-interface {v0, p1}, LBe/I;->e(LDe/c;)V

    invoke-virtual {p0}, Lbf/g;->o8()V

    :goto_4
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lbf/g;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbf/g;->e:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lbf/g;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbf/g;->d:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lbf/g;->d:Lio/reactivex/internal/util/a;

    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/p;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/a;->c(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/g;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbf/g;->b:Lbf/i;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbf/g;->o8()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public j8()Ljava/lang/Throwable;
    .locals 1
    .annotation build LCe/g;
    .end annotation

    iget-object v0, p0, Lbf/g;->b:Lbf/i;

    invoke-virtual {v0}, Lbf/i;->j8()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public k8()Z
    .locals 1

    iget-object v0, p0, Lbf/g;->b:Lbf/i;

    invoke-virtual {v0}, Lbf/i;->k8()Z

    move-result v0

    return v0
.end method

.method public l8()Z
    .locals 1

    iget-object v0, p0, Lbf/g;->b:Lbf/i;

    invoke-virtual {v0}, Lbf/i;->l8()Z

    move-result v0

    return v0
.end method

.method public m8()Z
    .locals 1

    iget-object v0, p0, Lbf/g;->b:Lbf/i;

    invoke-virtual {v0}, Lbf/i;->m8()Z

    move-result v0

    return v0
.end method

.method public o8()V
    .locals 2

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbf/g;->d:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbf/g;->c:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lbf/g;->d:Lio/reactivex/internal/util/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p0}, Lio/reactivex/internal/util/a;->d(Lio/reactivex/internal/util/a$a;)V

    goto :goto_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lbf/g;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbf/g;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lbf/g;->e:Z

    iget-boolean v0, p0, Lbf/g;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbf/g;->d:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lbf/g;->d:Lio/reactivex/internal/util/a;

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
    iput-boolean v1, p0, Lbf/g;->c:Z

    const/4 v1, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    iget-object v0, p0, Lbf/g;->b:Lbf/i;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lbf/g;->b:Lbf/i;

    invoke-static {p1, v0}, Lio/reactivex/internal/util/p;->c(Ljava/lang/Object;LBe/I;)Z

    move-result p1

    return p1
.end method
