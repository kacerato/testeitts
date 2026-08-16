.class public final LD0/J0;
.super Lcom/google/android/gms/common/api/z;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/u;",
        ">",
        "Lcom/google/android/gms/common/api/z<",
        "TR;>;",
        "Lcom/google/android/gms/common/api/v<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/common/api/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:LD0/J0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile c:Lcom/google/android/gms/common/api/w;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Lcom/google/android/gms/common/api/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/Object;

.field public f:Lcom/google/android/gms/common/api/Status;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/ref/WeakReference;

.field public final h:LD0/H0;

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/z;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LD0/J0;->a:Lcom/google/android/gms/common/api/x;

    iput-object v0, p0, LD0/J0;->b:LD0/J0;

    iput-object v0, p0, LD0/J0;->c:Lcom/google/android/gms/common/api/w;

    iput-object v0, p0, LD0/J0;->d:Lcom/google/android/gms/common/api/p;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LD0/J0;->e:Ljava/lang/Object;

    iput-object v0, p0, LD0/J0;->f:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-boolean v0, p0, LD0/J0;->i:Z

    const-string v0, "GoogleApiClient reference must not be null"

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LD0/J0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/l;

    new-instance v0, LD0/H0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/l;->r()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p0, p1}, LD0/H0;-><init>(LD0/J0;Landroid/os/Looper;)V

    iput-object v0, p0, LD0/J0;->h:LD0/H0;

    return-void
.end method

.method public static bridge synthetic d(LD0/J0;)Lcom/google/android/gms/common/api/x;
    .locals 0

    iget-object p0, p0, LD0/J0;->a:Lcom/google/android/gms/common/api/x;

    return-object p0
.end method

.method public static bridge synthetic e(LD0/J0;)LD0/H0;
    .locals 0

    iget-object p0, p0, LD0/J0;->h:LD0/H0;

    return-object p0
.end method

.method public static bridge synthetic f(LD0/J0;)LD0/J0;
    .locals 0

    iget-object p0, p0, LD0/J0;->b:LD0/J0;

    return-object p0
.end method

.method public static bridge synthetic g(LD0/J0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LD0/J0;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic h(LD0/J0;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, LD0/J0;->g:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic i(LD0/J0;Lcom/google/android/gms/common/api/u;)V
    .locals 0

    invoke-static {p1}, LD0/J0;->q(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method

.method public static bridge synthetic j(LD0/J0;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-virtual {p0, p1}, LD0/J0;->m(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public static final q(Lcom/google/android/gms/common/api/u;)V
    .locals 3

    instance-of v0, p0, Lcom/google/android/gms/common/api/r;

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/r;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/r;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "TransformedResultImpl"

    const-string v2, "Unable to release "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/u;)V
    .locals 3

    iget-object v0, p0, LD0/J0;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/u;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->x0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LD0/J0;->a:Lcom/google/android/gms/common/api/x;

    if-eqz v1, :cond_0

    invoke-static {}, LD0/w0;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, LD0/G0;

    invoke-direct {v2, p0, p1}, LD0/G0;-><init>(LD0/J0;Lcom/google/android/gms/common/api/u;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LD0/J0;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LD0/J0;->c:Lcom/google/android/gms/common/api/w;

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/w;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/w;->c(Lcom/google/android/gms/common/api/u;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/u;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {p0, v1}, LD0/J0;->m(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, LD0/J0;->q(Lcom/google/android/gms/common/api/u;)V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/google/android/gms/common/api/w;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/w<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LD0/J0;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LD0/J0;->c:Lcom/google/android/gms/common/api/w;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "Cannot call andFinally() twice."

    invoke-static {v1, v4}, LG0/A;->y(ZLjava/lang/Object;)V

    iget-object v1, p0, LD0/J0;->a:Lcom/google/android/gms/common/api/x;

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    const-string v1, "Cannot call then() and andFinally() on the same TransformedResult."

    invoke-static {v2, v1}, LG0/A;->y(ZLjava/lang/Object;)V

    iput-object p1, p0, LD0/J0;->c:Lcom/google/android/gms/common/api/w;

    invoke-virtual {p0}, LD0/J0;->n()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lcom/google/android/gms/common/api/x;)Lcom/google/android/gms/common/api/z;
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/u;",
            ">(",
            "Lcom/google/android/gms/common/api/x<",
            "-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/z<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, LD0/J0;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LD0/J0;->a:Lcom/google/android/gms/common/api/x;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "Cannot call then() twice."

    invoke-static {v1, v4}, LG0/A;->y(ZLjava/lang/Object;)V

    iget-object v1, p0, LD0/J0;->c:Lcom/google/android/gms/common/api/w;

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    const-string v1, "Cannot call then() and andFinally() on the same TransformedResult."

    invoke-static {v2, v1}, LG0/A;->y(ZLjava/lang/Object;)V

    iput-object p1, p0, LD0/J0;->a:Lcom/google/android/gms/common/api/x;

    new-instance p1, LD0/J0;

    iget-object v1, p0, LD0/J0;->g:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, LD0/J0;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, LD0/J0;->b:LD0/J0;

    invoke-virtual {p0}, LD0/J0;->n()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LD0/J0;->c:Lcom/google/android/gms/common/api/w;

    return-void
.end method

.method public final l(Lcom/google/android/gms/common/api/p;)V
    .locals 1

    iget-object v0, p0, LD0/J0;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, LD0/J0;->d:Lcom/google/android/gms/common/api/p;

    invoke-virtual {p0}, LD0/J0;->n()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final m(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, LD0/J0;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, LD0/J0;->f:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, LD0/J0;->o(Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n()V
    .locals 2
    .annotation build LJ2/a;
        value = "syncToken"
    .end annotation

    iget-object v0, p0, LD0/J0;->a:Lcom/google/android/gms/common/api/x;

    if-nez v0, :cond_0

    iget-object v0, p0, LD0/J0;->c:Lcom/google/android/gms/common/api/w;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, LD0/J0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/l;

    iget-boolean v1, p0, LD0/J0;->i:Z

    if-nez v1, :cond_1

    iget-object v1, p0, LD0/J0;->a:Lcom/google/android/gms/common/api/x;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/l;->H(LD0/J0;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LD0/J0;->i:Z

    :cond_1
    iget-object v0, p0, LD0/J0;->f:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, LD0/J0;->o(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v0, p0, LD0/J0;->d:Lcom/google/android/gms/common/api/p;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/p;->h(Lcom/google/android/gms/common/api/v;)V

    :cond_3
    return-void
.end method

.method public final o(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, LD0/J0;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LD0/J0;->a:Lcom/google/android/gms/common/api/x;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/x;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    const-string v1, "onFailure must not return null"

    invoke-static {p1, v1}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, LD0/J0;->b:LD0/J0;

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LD0/J0;

    invoke-virtual {v1, p1}, LD0/J0;->m(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LD0/J0;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LD0/J0;->c:Lcom/google/android/gms/common/api/w;

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/w;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/w;->b(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final p()Z
    .locals 2
    .annotation build LJ2/a;
        value = "syncToken"
    .end annotation

    iget-object v0, p0, LD0/J0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/l;

    iget-object v1, p0, LD0/J0;->c:Lcom/google/android/gms/common/api/w;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
