.class public final Lcom/google/android/gms/internal/auth/O;
.super Lcom/google/android/gms/internal/auth/F;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lv1/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/Q;Lv1/l;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/O;->e:Lv1/l;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/F;-><init>()V

    return-void
.end method


# virtual methods
.method public final V0(Lx0/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget v1, p1, Lx0/e;->b:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/O;->e:Lv1/l;

    invoke-static {v0, p1, v1}, LD0/s;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lv1/l;)V

    return-void
.end method
