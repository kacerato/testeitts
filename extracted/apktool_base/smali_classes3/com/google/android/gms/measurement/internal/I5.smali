.class public final Lcom/google/android/gms/measurement/internal/I5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/I;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/internal/measurement/z0;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/f6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/z0;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/I5;->b:Lcom/google/android/gms/measurement/internal/I;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/I5;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/I5;->d:Lcom/google/android/gms/internal/measurement/z0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/I5;->e:Lcom/google/android/gms/measurement/internal/f6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/I5;->e:Lcom/google/android/gms/measurement/internal/f6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f6;->N()Lcom/google/android/gms/measurement/internal/i2;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Discarding data. Failed to send event to service to bundle"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/I5;->d:Lcom/google/android/gms/internal/measurement/z0;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/m7;->d0(Lcom/google/android/gms/internal/measurement/z0;[B)V

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/I5;->b:Lcom/google/android/gms/measurement/internal/I;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/I5;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/i2;->H(Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f6;->J()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/I5;->e:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/I5;->e:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/I5;->d:Lcom/google/android/gms/internal/measurement/z0;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v1

    goto :goto_0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/I5;->e:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/I5;->d:Lcom/google/android/gms/internal/measurement/z0;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/m7;->d0(Lcom/google/android/gms/internal/measurement/z0;[B)V

    throw v1
.end method
