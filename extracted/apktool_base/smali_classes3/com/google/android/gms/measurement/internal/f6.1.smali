.class public final Lcom/google/android/gms/measurement/internal/f6;
.super Lcom/google/android/gms/measurement/internal/h2;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/measurement/internal/Z5;

.field public d:Lcom/google/android/gms/measurement/internal/i2;

.field public volatile e:Ljava/lang/Boolean;

.field public final f:Lcom/google/android/gms/measurement/internal/z;

.field public g:Ljava/util/concurrent/ScheduledExecutorService;

.field public final h:Lcom/google/android/gms/measurement/internal/B6;

.field public final i:Ljava/util/List;

.field public final j:Lcom/google/android/gms/measurement/internal/z;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/p3;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/h2;-><init>(Lcom/google/android/gms/measurement/internal/p3;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->i:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/internal/B6;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/B6;-><init>(LT0/g;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->h:Lcom/google/android/gms/measurement/internal/B6;

    new-instance v0, Lcom/google/android/gms/measurement/internal/Z5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/Z5;-><init>(Lcom/google/android/gms/measurement/internal/f6;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->c:Lcom/google/android/gms/measurement/internal/Z5;

    new-instance v0, Lcom/google/android/gms/measurement/internal/F5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/F5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/U3;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->f:Lcom/google/android/gms/measurement/internal/z;

    new-instance v0, Lcom/google/android/gms/measurement/internal/J5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/J5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/U3;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->j:Lcom/google/android/gms/measurement/internal/z;

    return-void
.end method

.method private final S()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->h:Lcom/google/android/gms/measurement/internal/B6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B6;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->Z:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/f6;->f:Lcom/google/android/gms/measurement/internal/z;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/z;->b(J)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->c:Lcom/google/android/gms/measurement/internal/Z5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/Z5;->b()V

    :try_start_0
    invoke-static {}, LS0/b;->b()LS0/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, LS0/b;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    return-void
.end method

.method public final B(Lcom/google/android/gms/internal/measurement/z0;Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v1

    const v2, 0xbdfcb8

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/m7;->X(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string p3, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [B

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/m7;->d0(Lcom/google/android/gms/internal/measurement/z0;[B)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/I5;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/measurement/internal/I5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/z0;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final C()Z
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->y()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m7;->W()I

    move-result v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/e2;->K0:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public final D()Z
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->y()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m7;->W()I

    move-result v0

    const v2, 0x3ae30

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public final synthetic E()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Failed to send storage consent settings to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v1

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/i2;->D0(Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/f6;->S()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to send storage consent settings to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic F()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Failed to send Dma consent settings to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v1

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/i2;->H0(Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/f6;->S()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to send Dma consent settings to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic G(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string p3, "Failed to request trigger URIs; not connected to service"

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/measurement/internal/x5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/x5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/measurement/internal/i2;->U0(Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/l2;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/f6;->S()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p3

    const-string v0, "Failed to request trigger URIs; remote exception"

    invoke-virtual {p3, v0, p2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public final synthetic H(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/J6;)V
    .locals 2

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string p3, "[sgtm] Failed to get upload batches; not connected to service"

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/measurement/internal/y5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/y5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/measurement/internal/i2;->P0(Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/J6;Lcom/google/android/gms/measurement/internal/o2;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/f6;->S()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p3

    const-string v0, "[sgtm] Failed to get upload batches; remote exception"

    invoke-virtual {p3, v0, p2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public final synthetic I(Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/g;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "[sgtm] Discarding data. Failed to update batch upload status."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/i2;->i0(Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/g;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/f6;->S()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/g;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "[sgtm] Failed to update batch upload status, rowId, exception"

    invoke-virtual {v0, v1, p2, p1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic J()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/f6;->S()V

    return-void
.end method

.method public final synthetic K(Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->w()V

    :cond_0
    return-void
.end method

.method public final synthetic L()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->U()V

    return-void
.end method

.method public final synthetic M()Lcom/google/android/gms/measurement/internal/Z5;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->c:Lcom/google/android/gms/measurement/internal/Z5;

    return-object v0
.end method

.method public final synthetic N()Lcom/google/android/gms/measurement/internal/i2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    return-object v0
.end method

.method public final synthetic O(Lcom/google/android/gms/measurement/internal/i2;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    return-void
.end method

.method public final synthetic P()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public final synthetic Q(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f6;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public final R()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    const/4 v0, 0x1

    return v0
.end method

.method public final T(Ljava/lang/Runnable;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const-wide/16 v4, 0x3e8

    cmp-long v1, v1, v4

    if-ltz v1, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/f6;->j:Lcom/google/android/gms/measurement/internal/z;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/z;->b(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->w()V

    return-void
.end method

.method public final U()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/f6;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Processing queued up service tasks"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->j:Lcom/google/android/gms/measurement/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z;->d()V

    return-void
.end method

.method public final V(Z)Lcom/google/android/gms/measurement/internal/o7;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->L()Lcom/google/android/gms/measurement/internal/p2;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/P2;->e:Lcom/google/android/gms/measurement/internal/N2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/P2;->e:Lcom/google/android/gms/measurement/internal/N2;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/N2;->b()Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/google/android/gms/measurement/internal/P2;->A:Landroid/util/Pair;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/p2;->o(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object p1

    return-object p1
.end method

.method public final W()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final X()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/K5;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/K5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Y(Z)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->C()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/L5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/L5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final Z(Z)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/e6;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/e6;-><init>(Lcom/google/android/gms/measurement/internal/f6;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a0()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/a6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/a6;-><init>(Lcom/google/android/gms/measurement/internal/f6;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b0(Lcom/google/android/gms/measurement/internal/i2;LI0/a;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 57
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f6;->R()Z

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    const/16 v6, 0x64

    move-object/from16 v0, p3

    move v8, v6

    const/4 v7, 0x0

    :goto_0
    const/16 v9, 0x3e9

    if-ge v7, v9, :cond_a

    if-ne v8, v6, :cond_a

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->E()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/s2;->t(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v9, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v3, :cond_1

    if-ge v8, v6, :cond_1

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/o7;->d:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/o7;->k:J

    new-instance v13, Lcom/google/android/gms/measurement/internal/r2;

    invoke-direct {v13, v3, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/r2;-><init>(LI0/a;Ljava/lang/String;J)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/e2;->P0:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_9

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/measurement/internal/r2;

    iget-object v15, v14, Lcom/google/android/gms/measurement/internal/r2;->a:LI0/a;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/e2;->d1:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v5, v12, v6}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/r2;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    move/from16 v56, v13

    iget-wide v12, v14, Lcom/google/android/gms/measurement/internal/r2;->c:J

    move-wide/from16 v20, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    move-object/from16 v17, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->c:Ljava/lang/String;

    move-object/from16 v18, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->e:Ljava/lang/String;

    move-object/from16 v22, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/o7;->f:J

    move-wide/from16 v23, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/o7;->g:J

    move-wide/from16 v25, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->h:Ljava/lang/String;

    move-object/from16 v27, v12

    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/o7;->i:Z

    move/from16 v28, v12

    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/o7;->j:Z

    move/from16 v29, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->l:Ljava/lang/String;

    move-object/from16 v30, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/o7;->m:J

    move-wide/from16 v31, v12

    iget v12, v0, Lcom/google/android/gms/measurement/internal/o7;->n:I

    move/from16 v33, v12

    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/o7;->o:Z

    move/from16 v34, v12

    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/o7;->p:Z

    move/from16 v35, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->q:Ljava/lang/Boolean;

    move-object/from16 v36, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/o7;->r:J

    move-wide/from16 v37, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->s:Ljava/util/List;

    move-object/from16 v39, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->t:Ljava/lang/String;

    move-object/from16 v40, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->u:Ljava/lang/String;

    move-object/from16 v41, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->v:Ljava/lang/String;

    move-object/from16 v42, v12

    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/o7;->w:Z

    move/from16 v43, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/o7;->x:J

    move-wide/from16 v44, v12

    iget v12, v0, Lcom/google/android/gms/measurement/internal/o7;->y:I

    move/from16 v46, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->z:Ljava/lang/String;

    move-object/from16 v47, v12

    iget v12, v0, Lcom/google/android/gms/measurement/internal/o7;->A:I

    move/from16 v48, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/o7;->B:J

    move-wide/from16 v49, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->C:Ljava/lang/String;

    move-object/from16 v51, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/o7;->D:Ljava/lang/String;

    move-object/from16 v52, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/o7;->E:J

    move-wide/from16 v53, v12

    iget v0, v0, Lcom/google/android/gms/measurement/internal/o7;->F:I

    move/from16 v55, v0

    new-instance v0, Lcom/google/android/gms/measurement/internal/o7;

    move-object/from16 v16, v0

    move-object/from16 v19, v5

    invoke-direct/range {v16 .. v55}, Lcom/google/android/gms/measurement/internal/o7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    :goto_3
    move-object v5, v0

    goto :goto_4

    :cond_2
    move/from16 v56, v13

    goto :goto_3

    :goto_4
    instance-of v0, v15, Lcom/google/android/gms/measurement/internal/I;

    if-eqz v0, :cond_5

    const-wide/16 v12, 0x0

    if-eqz v10, :cond_3

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v6

    invoke-interface {v6}, LT0/g;->a()J

    move-result-wide v16
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->c()J

    move-result-wide v18
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v24, v16

    move-wide/from16 v26, v18

    goto :goto_5

    :catch_0
    move-exception v0

    move-wide/from16 v26, v12

    move-wide/from16 v19, v16

    goto :goto_7

    :catch_1
    move-exception v0

    move-wide/from16 v19, v12

    move-wide/from16 v26, v19

    goto :goto_7

    :cond_3
    move-wide/from16 v24, v12

    move-wide/from16 v26, v24

    :goto_5
    :try_start_2
    check-cast v15, Lcom/google/android/gms/measurement/internal/I;

    invoke-interface {v2, v15, v5}, Lcom/google/android/gms/measurement/internal/i2;->F(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    if-eqz v10, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v6, "Logging telemetry for logEvent from database"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/x2;->a(Lcom/google/android/gms/measurement/internal/p3;)Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v16

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v6

    invoke-interface {v6}, LT0/g;->a()J

    move-result-wide v21

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->c()J

    move-result-wide v14

    sub-long v14, v14, v26

    long-to-int v0, v14

    const v17, 0x8dcd

    const/16 v18, 0x0

    move-wide/from16 v19, v24

    move/from16 v23, v0

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/gms/measurement/internal/x2;->b(IIJJI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_6
    const/4 v13, 0x0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-wide/from16 v19, v24

    :goto_7
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v14, "Failed to send event to the service"

    invoke-virtual {v6, v14, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v10, :cond_4

    cmp-long v0, v19, v12

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/x2;->a(Lcom/google/android/gms/measurement/internal/p3;)Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v16

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v6

    invoke-interface {v6}, LT0/g;->a()J

    move-result-wide v21

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->c()J

    move-result-wide v12

    sub-long v12, v12, v26

    long-to-int v0, v12

    const v17, 0x8dcd

    const/16 v18, 0xd

    move/from16 v23, v0

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/gms/measurement/internal/x2;->b(IIJJI)V

    goto :goto_6

    :cond_5
    instance-of v0, v15, Lcom/google/android/gms/measurement/internal/i7;

    if-eqz v0, :cond_6

    :try_start_3
    check-cast v15, Lcom/google/android/gms/measurement/internal/i7;

    invoke-interface {v2, v15, v5}, Lcom/google/android/gms/measurement/internal/i2;->W0(Lcom/google/android/gms/measurement/internal/i7;Lcom/google/android/gms/measurement/internal/o7;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v12, "Failed to send user property to the service"

    invoke-virtual {v6, v12, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_6
    instance-of v0, v15, Lcom/google/android/gms/measurement/internal/i;

    if-eqz v0, :cond_7

    :try_start_4
    check-cast v15, Lcom/google/android/gms/measurement/internal/i;

    invoke-interface {v2, v15, v5}, Lcom/google/android/gms/measurement/internal/i2;->w(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/o7;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v12, "Failed to send conditional user property to the service"

    invoke-virtual {v6, v12, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v6}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v6

    if-eqz v6, :cond_8

    instance-of v6, v15, Lcom/google/android/gms/measurement/internal/G;

    if-eqz v6, :cond_8

    :try_start_5
    check-cast v15, Lcom/google/android/gms/measurement/internal/G;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/G;->n0()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v2, v0, v5}, Lcom/google/android/gms/measurement/internal/i2;->m0(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/o7;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v12, "Failed to send default event parameters to the service"

    invoke-virtual {v6, v12, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v6, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v0, v56, 0x1

    move-object v12, v13

    const/16 v6, 0x64

    move v13, v0

    move-object v0, v5

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0x64

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final c0(Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->R()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->E()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/s2;->p(Lcom/google/android/gms/measurement/internal/I;)Z

    move-result v5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/measurement/internal/M5;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/M5;-><init>(Lcom/google/android/gms/measurement/internal/f6;ZLcom/google/android/gms/measurement/internal/o7;ZLcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d0(Lcom/google/android/gms/measurement/internal/i;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->E()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/s2;->r(Lcom/google/android/gms/measurement/internal/i;)Z

    move-result v5

    new-instance v6, Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {v6, p1}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/i;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/measurement/internal/N5;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/N5;-><init>(Lcom/google/android/gms/measurement/internal/f6;ZLcom/google/android/gms/measurement/internal/o7;ZLcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/i;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v6

    new-instance p2, Lcom/google/android/gms/measurement/internal/O5;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/O5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f0(Lcom/google/android/gms/internal/measurement/z0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/measurement/internal/P5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/P5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/internal/measurement/z0;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v6

    new-instance p2, Lcom/google/android/gms/measurement/internal/Q5;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/Q5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o7;Z)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h0(Lcom/google/android/gms/internal/measurement/z0;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/measurement/internal/v5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/v5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o7;ZLcom/google/android/gms/internal/measurement/z0;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i0(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/w5;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/w5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/o7;Z)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j0(Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/b6;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/b6;-><init>(Lcom/google/android/gms/measurement/internal/f6;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k0(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/J6;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/c6;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/c6;-><init>(Lcom/google/android/gms/measurement/internal/f6;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/J6;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l0(Lcom/google/android/gms/measurement/internal/g;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/measurement/internal/d6;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/d6;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/g;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m0()Lcom/google/android/gms/measurement/internal/p;
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->w()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Failed to get consents; not connected to service yet."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v2

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v0, v2}, Lcom/google/android/gms/measurement/internal/i2;->k0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/p;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/f6;->S()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Failed to get consents; remote exception"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final o(Lcom/google/android/gms/measurement/internal/i7;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->R()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->E()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/s2;->q(Lcom/google/android/gms/measurement/internal/i7;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/z5;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/android/gms/measurement/internal/z5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/o7;ZLcom/google/android/gms/measurement/internal/i7;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->R()Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->E()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s2;->o()V

    new-instance v1, Lcom/google/android/gms/measurement/internal/A5;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/A5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/B5;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/measurement/internal/B5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/measurement/z0;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/C5;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/C5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/internal/measurement/z0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->R()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->d1:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->E()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s2;->u()Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/D5;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/measurement/internal/D5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/o7;Z)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final t()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/E5;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/E5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u(Lcom/google/android/gms/measurement/internal/m5;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/G5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/G5;-><init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/m5;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    new-instance v5, Lcom/google/android/gms/measurement/internal/G;

    invoke-direct {v5, p1}, Lcom/google/android/gms/measurement/internal/G;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->R()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/measurement/internal/e2;->d1:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->E()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/s2;->s(Lcom/google/android/gms/measurement/internal/G;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/f6;->V(Z)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/measurement/internal/H5;

    const/4 v2, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/H5;-><init>(Lcom/google/android/gms/measurement/internal/f6;ZLcom/google/android/gms/measurement/internal/o7;ZLcom/google/android/gms/measurement/internal/G;Landroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/measurement/internal/f6;->T(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->y()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->m()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.measurement.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->c:Lcom/google/android/gms/measurement/internal/Z5;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/Z5;->a(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->c:Lcom/google/android/gms/measurement/internal/Z5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/Z5;->c()V

    return-void
.end method

.method public final x()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final y()Z
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/P2;->p()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "use_service"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/P2;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->L()Lcom/google/android/gms/measurement/internal/p2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p2;->v()I

    move-result v5

    if-ne v5, v2, :cond_2

    :goto_1
    move v4, v2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v6, "Checking service availability"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v5

    const v6, 0xbdfcb8

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/m7;->X(I)I

    move-result v5

    if-eqz v5, :cond_a

    if-eq v5, v2, :cond_9

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    const/4 v1, 0x3

    if-eq v5, v1, :cond_5

    const/16 v1, 0x9

    if-eq v5, v1, :cond_4

    const/16 v1, 0x12

    if-eq v5, v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Unexpected service status"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    move v2, v4

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v4, "Service updating"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Service invalid"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Service disabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v6, "Service container out of date"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/m7;->W()I

    move-result v5

    const/16 v6, 0x4423

    if-ge v5, v6, :cond_7

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    move v2, v4

    :goto_3
    move v7, v4

    move v4, v2

    move v2, v7

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v5, "Service missing"

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v4, "Service available"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_4
    if-nez v4, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->m()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/P2;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    :goto_5
    move v2, v4

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->e:Ljava/lang/Boolean;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final z(Lcom/google/android/gms/measurement/internal/i2;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f6;->d:Lcom/google/android/gms/measurement/internal/i2;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/f6;->S()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f6;->U()V

    return-void
.end method
