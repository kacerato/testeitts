.class public final LD0/M0;
.super LD0/k0;
.source "SourceFile"


# instance fields
.field public final b:LD0/r;

.field public final c:Lv1/l;

.field public final d:LD0/p;


# direct methods
.method public constructor <init>(ILD0/r;Lv1/l;LD0/p;)V
    .locals 0

    invoke-direct {p0, p1}, LD0/k0;-><init>(I)V

    iput-object p3, p0, LD0/M0;->c:Lv1/l;

    iput-object p2, p0, LD0/M0;->b:LD0/r;

    iput-object p4, p0, LD0/M0;->d:LD0/p;

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    invoke-virtual {p2}, LD0/r;->c()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LD0/M0;->d:LD0/p;

    iget-object v1, p0, LD0/M0;->c:Lv1/l;

    invoke-interface {v0, p1}, LD0/p;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v1, p1}, Lv1/l;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LD0/M0;->c:Lv1/l;

    invoke-virtual {v0, p1}, Lv1/l;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/internal/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LD0/M0;->b:LD0/r;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/u;->w()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    iget-object v1, p0, LD0/M0;->c:Lv1/l;

    invoke-virtual {v0, p1, v1}, LD0/r;->b(Lcom/google/android/gms/common/api/a$b;Lv1/l;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    iget-object v0, p0, LD0/M0;->c:Lv1/l;

    invoke-virtual {v0, p1}, Lv1/l;->d(Ljava/lang/Exception;)Z

    return-void

    :goto_1
    invoke-static {p1}, LD0/N0;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, LD0/M0;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :goto_2
    throw p1
.end method

.method public final d(LD0/w;Z)V
    .locals 1
    .param p1    # LD0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LD0/M0;->c:Lv1/l;

    invoke-virtual {p1, v0, p2}, LD0/w;->d(Lv1/l;Z)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/u;)Z
    .locals 0

    iget-object p1, p0, LD0/M0;->b:LD0/r;

    invoke-virtual {p1}, LD0/r;->c()Z

    move-result p1

    return p1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/u;)[LB0/e;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p0, LD0/M0;->b:LD0/r;

    invoke-virtual {p1}, LD0/r;->e()[LB0/e;

    move-result-object p1

    return-object p1
.end method
