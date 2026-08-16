.class public final Le1/g;
.super Le1/e0;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lv1/l;


# direct methods
.method public constructor <init>(Le1/k;Lv1/l;)V
    .locals 0

    iput-object p2, p0, Le1/g;->e:Lv1/l;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Le1/e0;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/identity/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le1/g;->e:Lv1/l;

    invoke-virtual {p1, p2}, Lv1/l;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p2, p0, Le1/g;->e:Lv1/l;

    invoke-static {p1}, LG0/c;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lv1/l;->b(Ljava/lang/Exception;)V

    return-void
.end method
