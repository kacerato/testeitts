.class public final Lcom/google/android/gms/internal/auth/f;
.super Lcom/google/android/gms/common/api/internal/b$a;
.source "SourceFile"


# instance fields
.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/m;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/l;Ljava/lang/String;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/internal/auth/f;->t:Ljava/lang/String;

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

.method public final synthetic k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/auth/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/auth/j;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

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

    new-instance v0, Lcom/google/android/gms/internal/auth/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/e;-><init>(Lcom/google/android/gms/internal/auth/f;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/f;->t:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lt0/h;->v0(Lt0/e;Ljava/lang/String;)V

    return-void
.end method
