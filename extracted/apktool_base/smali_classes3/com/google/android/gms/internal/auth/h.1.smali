.class public final Lcom/google/android/gms/internal/auth/h;
.super Lcom/google/android/gms/common/api/internal/b$a;
.source "SourceFile"


# instance fields
.field public final synthetic t:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/m;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/l;Landroid/accounts/Account;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/internal/auth/h;->t:Landroid/accounts/Account;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/api/internal/b$a;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation build LC0/a;
    .end annotation

    check-cast p1, Lcom/google/android/gms/common/api/u;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method

.method public final k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/l;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth/l;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public final bridge synthetic w(Lcom/google/android/gms/common/api/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/auth/n;

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lt0/h;

    new-instance v0, Lcom/google/android/gms/internal/auth/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/g;-><init>(Lcom/google/android/gms/internal/auth/h;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/h;->t:Landroid/accounts/Account;

    invoke-interface {p1, v0, v1}, Lt0/h;->s0(Lt0/e;Landroid/accounts/Account;)V

    return-void
.end method
