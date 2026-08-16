.class public final Lcom/google/android/gms/measurement/internal/H5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/G;

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/f6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/f6;ZLcom/google/android/gms/measurement/internal/o7;ZLcom/google/android/gms/measurement/internal/G;Landroid/os/Bundle;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/H5;->b:Lcom/google/android/gms/measurement/internal/o7;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/H5;->c:Z

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/H5;->d:Lcom/google/android/gms/measurement/internal/G;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/H5;->e:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/H5;->f:Lcom/google/android/gms/measurement/internal/f6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/H5;->f:Lcom/google/android/gms/measurement/internal/f6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f6;->N()Lcom/google/android/gms/measurement/internal/i2;

    move-result-object v1

    const-string v2, "Failed to send default event parameters to service"

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->d1:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/H5;->b:Lcom/google/android/gms/measurement/internal/o7;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/H5;->f:Lcom/google/android/gms/measurement/internal/f6;

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/H5;->c:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/H5;->d:Lcom/google/android/gms/measurement/internal/G;

    :goto_0
    invoke-virtual {v2, v1, v5, v0}, Lcom/google/android/gms/measurement/internal/f6;->b0(Lcom/google/android/gms/measurement/internal/i2;LI0/a;Lcom/google/android/gms/measurement/internal/o7;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/H5;->b:Lcom/google/android/gms/measurement/internal/o7;

    invoke-static {v3}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/H5;->e:Landroid/os/Bundle;

    invoke-interface {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/i2;->m0(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f6;->J()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/H5;->f:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
