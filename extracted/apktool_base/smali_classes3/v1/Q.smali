.class public final Lv1/Q;
.super Lv1/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lv1/k<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lv1/L;

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv1/k;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv1/Q;->a:Ljava/lang/Object;

    new-instance v0, Lv1/L;

    invoke-direct {v0}, Lv1/L;-><init>()V

    iput-object v0, p0, Lv1/Q;->b:Lv1/L;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget-object v0, p0, Lv1/Q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lv1/Q;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lv1/Q;->c:Z

    iput-boolean v1, p0, Lv1/Q;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {v0, p0}, Lv1/L;->b(Lv1/k;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final B(Ljava/lang/Exception;)Z
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lv1/Q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lv1/Q;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lv1/Q;->c:Z

    iput-object p1, p0, Lv1/Q;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, p0}, Lv1/L;->b(Lv1/k;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final C(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lv1/Q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lv1/Q;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lv1/Q;->c:Z

    iput-object p1, p0, Lv1/Q;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, p0}, Lv1/L;->b(Lv1/k;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final D()V
    .locals 2

    iget-boolean v0, p0, Lv1/Q;->c:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, LG0/A;->y(ZLjava/lang/Object;)V

    return-void
.end method

.method public final E()V
    .locals 2

    iget-boolean v0, p0, Lv1/Q;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final F()V
    .locals 1

    iget-boolean v0, p0, Lv1/Q;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;->of(Lv1/k;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lv1/Q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lv1/Q;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {v0, p0}, Lv1/L;->b(Lv1/k;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Landroid/app/Activity;Lv1/d;)Lv1/k;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lv1/d;",
            ")",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/B;

    sget-object v1, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lv1/B;-><init>(Ljava/util/concurrent/Executor;Lv1/d;)V

    iget-object p2, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p2, v0}, Lv1/L;->a(Lv1/K;)V

    invoke-static {p1}, Lv1/P;->m(Landroid/app/Activity;)Lv1/P;

    move-result-object p1

    invoke-virtual {p1, v0}, Lv1/P;->n(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;Lv1/d;)Lv1/k;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lv1/d;",
            ")",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/B;

    invoke-direct {v0, p1, p2}, Lv1/B;-><init>(Ljava/util/concurrent/Executor;Lv1/d;)V

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, v0}, Lv1/L;->a(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object p0
.end method

.method public final c(Lv1/d;)Lv1/k;
    .locals 1
    .param p1    # Lv1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/d;",
            ")",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lv1/k;->b(Ljava/util/concurrent/Executor;Lv1/d;)Lv1/k;

    return-object p0
.end method

.method public final d(Landroid/app/Activity;Lv1/e;)Lv1/k;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lv1/e<",
            "TTResult;>;)",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/D;

    sget-object v1, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lv1/D;-><init>(Ljava/util/concurrent/Executor;Lv1/e;)V

    iget-object p2, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p2, v0}, Lv1/L;->a(Lv1/K;)V

    invoke-static {p1}, Lv1/P;->m(Landroid/app/Activity;)Lv1/P;

    move-result-object p1

    invoke-virtual {p1, v0}, Lv1/P;->n(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object p0
.end method

.method public final e(Ljava/util/concurrent/Executor;Lv1/e;)Lv1/k;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lv1/e<",
            "TTResult;>;)",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/D;

    invoke-direct {v0, p1, p2}, Lv1/D;-><init>(Ljava/util/concurrent/Executor;Lv1/e;)V

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, v0}, Lv1/L;->a(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object p0
.end method

.method public final f(Lv1/e;)Lv1/k;
    .locals 2
    .param p1    # Lv1/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/e<",
            "TTResult;>;)",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lv1/m;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lv1/D;

    invoke-direct {v1, v0, p1}, Lv1/D;-><init>(Ljava/util/concurrent/Executor;Lv1/e;)V

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, v1}, Lv1/L;->a(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object p0
.end method

.method public final g(Landroid/app/Activity;Lv1/f;)Lv1/k;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lv1/f;",
            ")",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/F;

    sget-object v1, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lv1/F;-><init>(Ljava/util/concurrent/Executor;Lv1/f;)V

    iget-object p2, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p2, v0}, Lv1/L;->a(Lv1/K;)V

    invoke-static {p1}, Lv1/P;->m(Landroid/app/Activity;)Lv1/P;

    move-result-object p1

    invoke-virtual {p1, v0}, Lv1/P;->n(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object p0
.end method

.method public final h(Ljava/util/concurrent/Executor;Lv1/f;)Lv1/k;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lv1/f;",
            ")",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/F;

    invoke-direct {v0, p1, p2}, Lv1/F;-><init>(Ljava/util/concurrent/Executor;Lv1/f;)V

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, v0}, Lv1/L;->a(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object p0
.end method

.method public final i(Lv1/f;)Lv1/k;
    .locals 1
    .param p1    # Lv1/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/f;",
            ")",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lv1/Q;->h(Ljava/util/concurrent/Executor;Lv1/f;)Lv1/k;

    return-object p0
.end method

.method public final j(Landroid/app/Activity;Lv1/g;)Lv1/k;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lv1/g<",
            "-TTResult;>;)",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/H;

    sget-object v1, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lv1/H;-><init>(Ljava/util/concurrent/Executor;Lv1/g;)V

    iget-object p2, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p2, v0}, Lv1/L;->a(Lv1/K;)V

    invoke-static {p1}, Lv1/P;->m(Landroid/app/Activity;)Lv1/P;

    move-result-object p1

    invoke-virtual {p1, v0}, Lv1/P;->n(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object p0
.end method

.method public final k(Ljava/util/concurrent/Executor;Lv1/g;)Lv1/k;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lv1/g<",
            "-TTResult;>;)",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/H;

    invoke-direct {v0, p1, p2}, Lv1/H;-><init>(Ljava/util/concurrent/Executor;Lv1/g;)V

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, v0}, Lv1/L;->a(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object p0
.end method

.method public final l(Lv1/g;)Lv1/k;
    .locals 1
    .param p1    # Lv1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/g<",
            "-TTResult;>;)",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lv1/Q;->k(Ljava/util/concurrent/Executor;Lv1/g;)Lv1/k;

    return-object p0
.end method

.method public final m(Ljava/util/concurrent/Executor;Lv1/c;)Lv1/k;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lv1/c<",
            "TTResult;TTContinuationResult;>;)",
            "Lv1/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/Q;

    invoke-direct {v0}, Lv1/Q;-><init>()V

    new-instance v1, Lv1/x;

    invoke-direct {v1, p1, p2, v0}, Lv1/x;-><init>(Ljava/util/concurrent/Executor;Lv1/c;Lv1/Q;)V

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, v1}, Lv1/L;->a(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object v0
.end method

.method public final n(Lv1/c;)Lv1/k;
    .locals 1
    .param p1    # Lv1/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/c<",
            "TTResult;TTContinuationResult;>;)",
            "Lv1/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lv1/k;->m(Ljava/util/concurrent/Executor;Lv1/c;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/util/concurrent/Executor;Lv1/c;)Lv1/k;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv1/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lv1/c<",
            "TTResult;",
            "Lv1/k<",
            "TTContinuationResult;>;>;)",
            "Lv1/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/Q;

    invoke-direct {v0}, Lv1/Q;-><init>()V

    new-instance v1, Lv1/z;

    invoke-direct {v1, p1, p2, v0}, Lv1/z;-><init>(Ljava/util/concurrent/Executor;Lv1/c;Lv1/Q;)V

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, v1}, Lv1/L;->a(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object v0
.end method

.method public final p(Lv1/c;)Lv1/k;
    .locals 1
    .param p1    # Lv1/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/c<",
            "TTResult;",
            "Lv1/k<",
            "TTContinuationResult;>;>;)",
            "Lv1/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lv1/k;->o(Ljava/util/concurrent/Executor;Lv1/c;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final q()Ljava/lang/Exception;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lv1/Q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv1/Q;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final r()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lv1/Q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lv1/Q;->D()V

    invoke-virtual {p0}, Lv1/Q;->E()V

    iget-object v1, p0, Lv1/Q;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Lv1/Q;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v2, v1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lv1/Q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lv1/Q;->D()V

    invoke-virtual {p0}, Lv1/Q;->E()V

    iget-object v1, p0, Lv1/Q;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lv1/Q;->f:Ljava/lang/Exception;

    if-nez p1, :cond_0

    iget-object p1, p0, Lv1/Q;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lv1/Q;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lv1/Q;->d:Z

    return v0
.end method

.method public final u()Z
    .locals 2

    iget-object v0, p0, Lv1/Q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lv1/Q;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final v()Z
    .locals 3

    iget-object v0, p0, Lv1/Q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lv1/Q;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lv1/Q;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lv1/Q;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final w(Ljava/util/concurrent/Executor;Lv1/j;)Lv1/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lv1/j<",
            "TTResult;TTContinuationResult;>;)",
            "Lv1/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/Q;

    invoke-direct {v0}, Lv1/Q;-><init>()V

    new-instance v1, Lv1/J;

    invoke-direct {v1, p1, p2, v0}, Lv1/J;-><init>(Ljava/util/concurrent/Executor;Lv1/j;Lv1/Q;)V

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, v1}, Lv1/L;->a(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object v0
.end method

.method public final x(Lv1/j;)Lv1/k;
    .locals 3
    .param p1    # Lv1/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/j<",
            "TTResult;TTContinuationResult;>;)",
            "Lv1/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lv1/m;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lv1/Q;

    invoke-direct {v1}, Lv1/Q;-><init>()V

    new-instance v2, Lv1/J;

    invoke-direct {v2, v0, p1, v1}, Lv1/J;-><init>(Ljava/util/concurrent/Executor;Lv1/j;Lv1/Q;)V

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, v2}, Lv1/L;->a(Lv1/K;)V

    invoke-virtual {p0}, Lv1/Q;->G()V

    return-object v1
.end method

.method public final y(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lv1/Q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lv1/Q;->F()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lv1/Q;->c:Z

    iput-object p1, p0, Lv1/Q;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, p0}, Lv1/L;->b(Lv1/k;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final z(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lv1/Q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lv1/Q;->F()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lv1/Q;->c:Z

    iput-object p1, p0, Lv1/Q;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lv1/Q;->b:Lv1/L;

    invoke-virtual {p1, p0}, Lv1/L;->b(Lv1/k;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
