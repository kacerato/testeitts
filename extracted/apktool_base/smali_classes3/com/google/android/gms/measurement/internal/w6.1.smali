.class public final Lcom/google/android/gms/measurement/internal/w6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/x6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/x6;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->a:Lcom/google/android/gms/measurement/internal/x6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->a:Lcom/google/android/gms/measurement/internal/x6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v2

    invoke-interface {v2}, LT0/g;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/P2;->A(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/P2;->m:Lcom/google/android/gms/measurement/internal/K2;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/K2;->b(Z)V

    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Detected application was in foreground"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/w6;->c(JZ)V

    :cond_0
    return-void
.end method

.method public final b(JZ)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->a:Lcom/google/android/gms/measurement/internal/x6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/x6;->q()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/measurement/internal/P2;->A(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/P2;->m:Lcom/google/android/gms/measurement/internal/K2;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/K2;->b(Z)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->L()Lcom/google/android/gms/measurement/internal/p2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p2;->p()V

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/P2;->q:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/P2;->m:Lcom/google/android/gms/measurement/internal/K2;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/K2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/w6;->c(JZ)V

    :cond_1
    return-void
.end method

.method public final c(JZ)V
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/w6;->a:Lcom/google/android/gms/measurement/internal/x6;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v0, p3, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/P2;->q:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->c()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session started, time"

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p3;->B()Lcom/google/android/gms/measurement/internal/b5;

    move-result-object v3

    const-string v4, "auto"

    const-string v5, "_sid"

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/b5;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/P2;->r:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/P2;->m:Lcom/google/android/gms/measurement/internal/K2;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/K2;->b(Z)V

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_sid"

    invoke-virtual {v10, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p3;->B()Lcom/google/android/gms/measurement/internal/b5;

    move-result-object v5

    const-string v6, "auto"

    const-string v7, "_s"

    move-wide v8, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/b5;->u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/P2;->w:Lcom/google/android/gms/measurement/internal/O2;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O2;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_ffr"

    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p3;->B()Lcom/google/android/gms/measurement/internal/b5;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_ssr"

    move-wide v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/b5;->u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method
