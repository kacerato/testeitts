.class public final Lcom/google/android/gms/measurement/internal/R3;
.super Lcom/google/android/gms/measurement/internal/g2;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/measurement/internal/c7;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c7;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/g2;-><init>()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/R3;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/R3;->l1(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/z3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->r(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties as"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final D0(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->t:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/Q3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/Q3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/R3;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final F(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/E3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/E3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/R3;->o1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final G(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/A3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/A3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/R3;->o1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final G0(Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/measurement/internal/e2;->Z0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v1

    const-string v2, "Failed to get trigger URIs. appId"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/I3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/I3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->s(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2710

    invoke-interface {p2, v3, v4, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/J3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/J3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->r(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3

    return-object p2

    :catch_3
    move-exception p2

    goto :goto_1

    :catch_4
    move-exception p2

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final H(Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)[B
    .locals 9
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {p2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/R3;->l1(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->M0()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/u2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Log and bundle. event"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->d()J

    move-result-wide v1

    const-wide/32 v4, 0xf4240

    div-long/2addr v1, v4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/measurement/internal/G3;

    invoke-direct {v7, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/G3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/h3;->s(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v7, "Log and bundle returned null. appId"

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x0

    new-array v6, v6, [B

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v7

    invoke-interface {v7}, LT0/g;->d()J

    move-result-wide v7

    div-long/2addr v7, v4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "Log and bundle processed. event, size, time_ms"

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->M0()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/u2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    array-length v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-long/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v5, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->M0()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/u2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Failed to log and bundle. appId, event, error"

    invoke-virtual {v2, v1, p2, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final H0(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->t:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/K3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/K3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/R3;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final J0(Lcom/google/android/gms/measurement/internal/i;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/R3;->l1(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/i;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/v3;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/v3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/i;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/R3;->o1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final O(Lcom/google/android/gms/measurement/internal/o7;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c7;->o0(Lcom/google/android/gms/measurement/internal/o7;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final P(Lcom/google/android/gms/measurement/internal/o7;Z)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/q3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/q3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->r(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/k7;

    if-nez p2, :cond_1

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/m7;->N(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v3, Lcom/google/android/gms/measurement/internal/i7;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Lcom/google/android/gms/measurement/internal/k7;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to get user properties. appId"

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final P0(Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/J6;Lcom/google/android/gms/measurement/internal/o2;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/M3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/M3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/J6;Lcom/google/android/gms/measurement/internal/o2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final U0(Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/l2;)V
    .locals 8
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/measurement/internal/L3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/L3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/l2;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final V(Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/R3;->l1(Ljava/lang/String;Z)V

    new-instance p3, Lcom/google/android/gms/measurement/internal/F3;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/F3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/measurement/internal/R3;->o1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance v7, Lcom/google/android/gms/measurement/internal/t3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/t3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/measurement/internal/R3;->o1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W0(Lcom/google/android/gms/measurement/internal/i7;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/H3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/H3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/i7;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/R3;->o1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final X(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/R3;->l1(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/B3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/B3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/R3;->o1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Z0(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/r3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/r3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/R3;->o1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b1(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/s3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/s3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/R3;->o1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic e1(Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/l2;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/c7;->p0(Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    :try_start_0
    invoke-interface {p3, p1}, Lcom/google/android/gms/measurement/internal/l2;->Q0(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string p3, "Failed to return trigger URIs for app"

    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic f1(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/J6;Lcom/google/android/gms/measurement/internal/o2;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/e2;->B:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/measurement/internal/w;->o(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/J6;I)Ljava/util/List;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/f7;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f7;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/measurement/internal/c7;->t(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f7;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f7;->e()Ljava/lang/String;

    move-result-object v2

    const-string v6, "[sgtm] batch skipped due to destination in backoff. appId, rowId, url"

    invoke-virtual {v4, v6, p1, v5, v2}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f7;->i()I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->z:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->x:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v4, v4, -0x1

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v4

    mul-long/2addr v5, v7

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->y:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v6

    invoke-interface {v6}, LT0/g;->a()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f7;->h()J

    move-result-wide v8

    add-long/2addr v8, v4

    cmp-long v4, v6, v8

    if-ltz v4, :cond_5

    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f7;->b()Lcom/google/android/gms/measurement/internal/H6;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->L()Lcom/google/android/gms/internal/measurement/i3;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/H6;->c:[B

    invoke-static {v4, v5}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/i3;

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/i3;->u()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/i3;->v(I)Lcom/google/android/gms/internal/measurement/n3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v7

    invoke-interface {v7}, LT0/g;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/m3;->e1(J)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/i3;->w(ILcom/google/android/gms/internal/measurement/m3;)Lcom/google/android/gms/internal/measurement/i3;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gms/measurement/internal/H6;->c:[B

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->z()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/h7;->K(Lcom/google/android/gms/internal/measurement/l3;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/measurement/internal/H6;->h:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmq; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v4, "Failed to parse queued batch. appId"

    invoke-virtual {v2, v4, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f7;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f7;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "[sgtm] batch skipped waiting for next retry. appId, rowId, lastUploadMillis"

    invoke-virtual {v4, v6, p1, v5, v2}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    new-instance p2, Lcom/google/android/gms/measurement/internal/L6;

    invoke-direct {p2, v1}, Lcom/google/android/gms/measurement/internal/L6;-><init>(Ljava/util/List;)V

    :try_start_1
    invoke-interface {p3, p2}, Lcom/google/android/gms/measurement/internal/o2;->c1(Lcom/google/android/gms/measurement/internal/L6;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p3

    const-string v0, "[sgtm] Sending queued upload batches to client. appId, count"

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/L6;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p3

    const-string v0, "[sgtm] Failed to return upload batches for app"

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic g1(Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/c7;->q0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/g;)V

    return-void
.end method

.method public final synthetic h1(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v12, p2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/e2;->W0:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v3}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "delete from default_event_params where app_id=?"

    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Error clearing default event params"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    new-instance v0, Lcom/google/android/gms/measurement/internal/D;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-string v4, ""

    const-string v6, "dep"

    move-object v2, v0

    move-object/from16 v5, p2

    move-object/from16 v11, p1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/measurement/internal/D;-><init>(Lcom/google/android/gms/measurement/internal/p3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/h7;->J(Lcom/google/android/gms/measurement/internal/D;)Lcom/google/android/gms/internal/measurement/b3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v0

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Saving default event parameters, appId, data size"

    invoke-virtual {v3, v5, v12, v4}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    invoke-virtual {v3, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "parameters"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_1
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "default_event_params"

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v13, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Failed to insert default event parameters (got -1). appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error storing default event parameters. appId"

    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    move-object/from16 v3, p3

    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/o7;->E:J

    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/measurement/internal/w;->J(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v0, v12, v2, v13, v3}, Lcom/google/android/gms/measurement/internal/w;->K(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final i0(Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/g;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/N3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/N3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/g;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/R3;->o1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic i1()Lcom/google/android/gms/measurement/internal/c7;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    return-object v0
.end method

.method public final j1(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/c7;->k(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    return-void
.end method

.method public final k(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/h3;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/h3;->v(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/p;
    .locals 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/D3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/D3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->s(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/p;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get consent. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/p;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/p;-><init>(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final k1(Lcom/google/android/gms/measurement/internal/o7;Z)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {p2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/R3;->l1(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o7;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/m7;->o(Ljava/lang/String;)Z

    return-void
.end method

.method public final synthetic l0(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c7;->Q0(Lcom/google/android/gms/measurement/internal/o7;)V

    return-void
.end method

.method public final l1(Ljava/lang/String;Z)V
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->f:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c7;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v1, v2}, LT0/E;->a(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c7;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, LB0/l;->a(Landroid/content/Context;)LB0/l;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v1}, LB0/l;->d(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->f:Ljava/lang/Boolean;

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->f:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->g:Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c7;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p2, v0, p1}, LB0/k;->t(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/R3;->g:Ljava/lang/String;

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    const-string v0, "Unknown calling package name \'%s\'."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Measurement Service called with invalid calling package. appId"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    throw p2

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m0(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/measurement/internal/P3;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/P3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/R3;->o1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m1(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c3;->j:Landroidx/collection/LruCache;

    invoke-virtual {v1, v2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/e0;

    :goto_0
    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/I;->c:Lcom/google/android/gms/measurement/internal/G;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/G;->n0()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/h7;->Z(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/a4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v2, v3

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/measurement/b;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/I;->e:J

    invoke-direct {v3, v2, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/b;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/e0;->b(Lcom/google/android/gms/internal/measurement/b;)Z

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzd; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e0;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    const-string v3, "EES edited event"

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e0;->e()Lcom/google/android/gms/internal/measurement/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c;->c()Lcom/google/android/gms/internal/measurement/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/h7;->m(Lcom/google/android/gms/internal/measurement/b;)Lcom/google/android/gms/measurement/internal/I;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/R3;->j1(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/R3;->j1(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e0;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e0;->e()Lcom/google/android/gms/internal/measurement/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EES logging created event"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/h7;->m(Lcom/google/android/gms/internal/measurement/b;)Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/R3;->j1(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    goto :goto_2

    :cond_4
    return-void

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/o7;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    const-string v3, "EES error. appId, eventName"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    const-string v2, "EES was not applied to event"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/R3;->j1(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    const-string v2, "EES not loaded for"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/R3;->j1(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    return-void
.end method

.method public final n1(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    const-string v0, "_cmp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/I;->c:Lcom/google/android/gms/measurement/internal/G;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/G;->b0()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "_cis"

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/G;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "referrer broadcast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "referrer API"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->u()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Event has been filtered "

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lcom/google/android/gms/measurement/internal/I;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/I;->d:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/I;->e:J

    const-string v1, "_cmpx"

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/I;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/G;Ljava/lang/String;J)V

    return-object p2

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final o1(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/h3;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r0(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/o7;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    iget-object v0, p4, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/w3;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/w3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->r(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/k7;

    if-nez p3, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/m7;->N(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/i7;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Lcom/google/android/gms/measurement/internal/k7;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    iget-object p3, p4, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Failed to query user properties. appId"

    invoke-virtual {p2, p4, p3, p1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic t(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c7;->P0(Lcom/google/android/gms/measurement/internal/o7;)V

    return-void
.end method

.method public final u0(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o7;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {p3}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/y3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/y3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->r(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/R3;->k1(Lcom/google/android/gms/measurement/internal/o7;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/i;)V

    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/measurement/internal/u3;

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/u3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/R3;->o1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w0(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->t:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/C3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/C3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/R3;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/R3;->l1(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/x3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/x3;-><init>(Lcom/google/android/gms/measurement/internal/R3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->r(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/k7;

    if-nez p4, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/m7;->N(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/i7;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Lcom/google/android/gms/measurement/internal/k7;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :goto_2
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/R3;->e:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p3

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "Failed to get user properties as. appId"

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
