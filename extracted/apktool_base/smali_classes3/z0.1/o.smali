.class public final Lz0/o;
.super Lz0/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lz0/p;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;
    .locals 0

    return-object p1
.end method

.method public final bridge synthetic w(Lcom/google/android/gms/common/api/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lz0/i;

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lz0/w;

    new-instance v1, Lz0/n;

    invoke-direct {v1, p0}, Lz0/n;-><init>(Lz0/o;)V

    invoke-virtual {p1}, Lz0/i;->v0()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lz0/w;->e1(Lz0/v;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
