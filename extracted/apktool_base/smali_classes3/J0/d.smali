.class public final LJ0/d;
.super LJ0/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(LJ0/f;Lcom/google/android/gms/common/api/l;)V
    .locals 0

    invoke-direct {p0, p2}, LJ0/g;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic w(Lcom/google/android/gms/common/api/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, LJ0/i;

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LJ0/m;

    new-instance v0, LJ0/e;

    invoke-direct {v0, p0}, LJ0/e;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    invoke-virtual {p1, v0}, LJ0/m;->e1(LJ0/l;)V

    return-void
.end method
