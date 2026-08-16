.class public final Lcom/google/android/gms/measurement/internal/C5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/z0;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/f6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/internal/measurement/z0;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/C5;->b:Lcom/google/android/gms/measurement/internal/o7;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/C5;->c:Lcom/google/android/gms/internal/measurement/z0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/C5;->d:Lcom/google/android/gms/measurement/internal/f6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/C5;->d:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/P2;->w()Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "Analytics storage consent denied; will not get app instance id"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->B()Lcom/google/android/gms/measurement/internal/b5;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/b5;->F(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/P2;->h:Lcom/google/android/gms/measurement/internal/O2;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/O2;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f6;->N()Lcom/google/android/gms/measurement/internal/i2;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/C5;->c:Lcom/google/android/gms/internal/measurement/z0;

    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/m7;->a0(Lcom/google/android/gms/internal/measurement/z0;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/C5;->b:Lcom/google/android/gms/measurement/internal/o7;

    invoke-static {v5}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v5}, Lcom/google/android/gms/measurement/internal/i2;->O(Lcom/google/android/gms/measurement/internal/o7;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->B()Lcom/google/android/gms/measurement/internal/b5;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/b5;->F(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/P2;->h:Lcom/google/android/gms/measurement/internal/O2;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/O2;->b(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f6;->J()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/C5;->d:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/C5;->d:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/C5;->c:Lcom/google/android/gms/internal/measurement/z0;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v0

    goto :goto_1

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/C5;->d:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/C5;->c:Lcom/google/android/gms/internal/measurement/z0;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/m7;->a0(Lcom/google/android/gms/internal/measurement/z0;Ljava/lang/String;)V

    throw v0
.end method
