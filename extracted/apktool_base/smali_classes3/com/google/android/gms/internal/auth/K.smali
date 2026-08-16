.class public abstract Lcom/google/android/gms/internal/auth/K;
.super Lcom/google/android/gms/common/api/internal/b$a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/l;)V
    .locals 1

    sget-object v0, Lu0/b;->a:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/b$a;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public abstract C(Landroid/content/Context;Lcom/google/android/gms/internal/auth/J;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation build LC0/a;
    .end annotation

    check-cast p1, Lcom/google/android/gms/common/api/u;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method

.method public final synthetic k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/X;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth/X;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public final bridge synthetic w(Lcom/google/android/gms/common/api/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/auth/G;

    invoke-virtual {p1}, LG0/f;->G()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/J;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/K;->C(Landroid/content/Context;Lcom/google/android/gms/internal/auth/J;)V

    return-void
.end method
