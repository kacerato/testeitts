.class public final Lcom/google/android/gms/measurement/internal/x6;
.super Lcom/google/android/gms/measurement/internal/h2;
.source "SourceFile"


# instance fields
.field public c:Landroid/os/Handler;

.field public d:Z

.field public final e:Lcom/google/android/gms/measurement/internal/w6;

.field public final f:Lcom/google/android/gms/measurement/internal/u6;

.field public final g:Lcom/google/android/gms/measurement/internal/s6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/p3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/h2;-><init>(Lcom/google/android/gms/measurement/internal/p3;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/x6;->d:Z

    new-instance p1, Lcom/google/android/gms/measurement/internal/w6;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/w6;-><init>(Lcom/google/android/gms/measurement/internal/x6;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x6;->e:Lcom/google/android/gms/measurement/internal/w6;

    new-instance p1, Lcom/google/android/gms/measurement/internal/u6;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/u6;-><init>(Lcom/google/android/gms/measurement/internal/x6;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x6;->f:Lcom/google/android/gms/measurement/internal/u6;

    new-instance p1, Lcom/google/android/gms/measurement/internal/s6;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/s6;-><init>(Lcom/google/android/gms/measurement/internal/x6;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x6;->g:Lcom/google/android/gms/measurement/internal/s6;

    return-void
.end method


# virtual methods
.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o(Z)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/x6;->d:Z

    return-void
.end method

.method public final p()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/x6;->d:Z

    return v0
.end method

.method public final synthetic q()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/x6;->u()V

    return-void
.end method

.method public final synthetic r(J)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/x6;->u()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Activity resumed, time"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/measurement/internal/e2;->V0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/x6;->d:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x6;->f:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/u6;->a(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/P2;->t:Lcom/google/android/gms/measurement/internal/K2;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/K2;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x6;->f:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/u6;->a(J)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/x6;->g:Lcom/google/android/gms/measurement/internal/s6;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/s6;->a()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/x6;->e:Lcom/google/android/gms/measurement/internal/w6;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/w6;->a:Lcom/google/android/gms/measurement/internal/x6;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->g()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object p2

    invoke-interface {p2}, LT0/g;->a()J

    move-result-wide v0

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/measurement/internal/w6;->b(JZ)V

    return-void
.end method

.method public final synthetic s(J)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/x6;->u()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Activity paused, time"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/x6;->g:Lcom/google/android/gms/measurement/internal/s6;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/s6;->b(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x6;->f:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/u6;->b(J)V

    :cond_0
    return-void
.end method

.method public final synthetic t()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x6;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public final u()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x6;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/s0;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s0;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/x6;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method
