.class public final Lcom/google/android/gms/measurement/internal/D5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/f6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/o7;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/D5;->b:Lcom/google/android/gms/measurement/internal/o7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/D5;->c:Lcom/google/android/gms/measurement/internal/f6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/D5;->c:Lcom/google/android/gms/measurement/internal/f6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f6;->N()Lcom/google/android/gms/measurement/internal/i2;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send app launch"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/D5;->b:Lcom/google/android/gms/measurement/internal/o7;

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->d1:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/gms/measurement/internal/f6;->b0(Lcom/google/android/gms/measurement/internal/i2;LI0/a;Lcom/google/android/gms/measurement/internal/o7;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v1, v2}, Lcom/google/android/gms/measurement/internal/i2;->Z0(Lcom/google/android/gms/measurement/internal/o7;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->E()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s2;->v()Z

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/gms/measurement/internal/f6;->b0(Lcom/google/android/gms/measurement/internal/i2;LI0/a;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f6;->J()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/D5;->c:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to send app launch to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
