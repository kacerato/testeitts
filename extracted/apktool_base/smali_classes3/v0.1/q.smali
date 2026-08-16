.class public abstract Lv0/q;
.super LD0/r;
.source "SourceFile"


# instance fields
.field public d:Lv1/l;


# direct methods
.method public synthetic constructor <init>(ILv0/p;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, LD0/r;-><init>([LB0/e;ZI)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/common/api/a$b;Lv1/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/auth/q;

    iput-object p2, p0, Lv0/q;->d:Lv1/l;

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/v;

    invoke-virtual {p0, p1}, Lv0/q;->f(Lcom/google/android/gms/internal/auth/v;)V

    return-void
.end method

.method public abstract f(Lcom/google/android/gms/internal/auth/v;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
