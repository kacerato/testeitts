.class public final LU/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/e;
.implements LU/d;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LU/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile c:LU/d;

.field public volatile d:LU/d;

.field public e:LU/e$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public f:LU/e$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;LU/e;)V
    .locals 1
    .param p2    # LU/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LU/e$a;->CLEARED:LU/e$a;

    iput-object v0, p0, LU/b;->e:LU/e$a;

    iput-object v0, p0, LU/b;->f:LU/e$a;

    iput-object p1, p0, LU/b;->a:Ljava/lang/Object;

    iput-object p2, p0, LU/b;->b:LU/e;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/b;->c:LU/d;

    invoke-interface {v1}, LU/d;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, LU/b;->d:LU/d;

    invoke-interface {v1}, LU/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(LU/d;)Z
    .locals 2

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LU/b;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LU/b;->k(LU/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(LU/d;)Z
    .locals 2

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LU/b;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LU/b;->k(LU/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LU/e$a;->CLEARED:LU/e$a;

    iput-object v1, p0, LU/b;->e:LU/e$a;

    iget-object v2, p0, LU/b;->c:LU/d;

    invoke-interface {v2}, LU/d;->clear()V

    iget-object v2, p0, LU/b;->f:LU/e$a;

    if-eq v2, v1, :cond_0

    iput-object v1, p0, LU/b;->f:LU/e$a;

    iget-object v1, p0, LU/b;->d:LU/d;

    invoke-interface {v1}, LU/d;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(LU/d;)V
    .locals 2

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/b;->d:LU/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, LU/e$a;->FAILED:LU/e$a;

    iput-object p1, p0, LU/b;->e:LU/e$a;

    iget-object p1, p0, LU/b;->f:LU/e$a;

    sget-object v1, LU/e$a;->RUNNING:LU/e$a;

    if-eq p1, v1, :cond_0

    iput-object v1, p0, LU/b;->f:LU/e$a;

    iget-object p1, p0, LU/b;->d:LU/d;

    invoke-interface {p1}, LU/d;->j()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    sget-object p1, LU/e$a;->FAILED:LU/e$a;

    iput-object p1, p0, LU/b;->f:LU/e$a;

    iget-object p1, p0, LU/b;->b:LU/e;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, LU/e;->d(LU/d;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/b;->e:LU/e$a;

    sget-object v2, LU/e$a;->CLEARED:LU/e$a;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, LU/b;->f:LU/e$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/b;->e:LU/e$a;

    sget-object v2, LU/e$a;->SUCCESS:LU/e$a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, LU/b;->f:LU/e$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g(LU/d;)Z
    .locals 2

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LU/b;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LU/b;->k(LU/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRoot()LU/e;
    .locals 2

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/b;->b:LU/e;

    if-eqz v1, :cond_0

    invoke-interface {v1}, LU/e;->getRoot()LU/e;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, p0

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h(LU/d;)Z
    .locals 3

    instance-of v0, p1, LU/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LU/b;

    iget-object v0, p0, LU/b;->c:LU/d;

    iget-object v2, p1, LU/b;->c:LU/d;

    invoke-interface {v0, v2}, LU/d;->h(LU/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LU/b;->d:LU/d;

    iget-object p1, p1, LU/b;->d:LU/d;

    invoke-interface {v0, p1}, LU/d;->h(LU/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public i(LU/d;)V
    .locals 2

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/b;->c:LU/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, LU/e$a;->SUCCESS:LU/e$a;

    iput-object p1, p0, LU/b;->e:LU/e$a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, LU/b;->d:LU/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, LU/e$a;->SUCCESS:LU/e$a;

    iput-object p1, p0, LU/b;->f:LU/e$a;

    :cond_1
    :goto_0
    iget-object p1, p0, LU/b;->b:LU/e;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, LU/e;->i(LU/d;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isRunning()Z
    .locals 3

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/b;->e:LU/e$a;

    sget-object v2, LU/e$a;->RUNNING:LU/e$a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, LU/b;->f:LU/e$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/b;->e:LU/e$a;

    sget-object v2, LU/e$a;->RUNNING:LU/e$a;

    if-eq v1, v2, :cond_0

    iput-object v2, p0, LU/b;->e:LU/e$a;

    iget-object v1, p0, LU/b;->c:LU/d;

    invoke-interface {v1}, LU/d;->j()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k(LU/d;)Z
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/b;->c:LU/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LU/b;->e:LU/e$a;

    sget-object v1, LU/e$a;->FAILED:LU/e$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LU/b;->d:LU/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final l()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/b;->b:LU/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, LU/e;->c(LU/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final m()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/b;->b:LU/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, LU/e;->b(LU/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final n()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/b;->b:LU/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, LU/e;->g(LU/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o(LU/d;LU/d;)V
    .locals 0

    iput-object p1, p0, LU/b;->c:LU/d;

    iput-object p2, p0, LU/b;->d:LU/d;

    return-void
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, LU/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/b;->e:LU/e$a;

    sget-object v2, LU/e$a;->RUNNING:LU/e$a;

    if-ne v1, v2, :cond_0

    sget-object v1, LU/e$a;->PAUSED:LU/e$a;

    iput-object v1, p0, LU/b;->e:LU/e$a;

    iget-object v1, p0, LU/b;->c:LU/d;

    invoke-interface {v1}, LU/d;->pause()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LU/b;->f:LU/e$a;

    if-ne v1, v2, :cond_1

    sget-object v1, LU/e$a;->PAUSED:LU/e$a;

    iput-object v1, p0, LU/b;->f:LU/e$a;

    iget-object v1, p0, LU/b;->d:LU/d;

    invoke-interface {v1}, LU/d;->pause()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
