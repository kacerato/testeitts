.class public final Le1/m;
.super Le1/X;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lv1/l;


# direct methods
.method public constructor <init>(Le1/u;Lv1/l;)V
    .locals 0

    iput-object p2, p0, Le1/m;->e:Lv1/l;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Le1/X;-><init>()V

    return-void
.end method


# virtual methods
.method public final A0(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/identity/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Le1/m;->e:Lv1/l;

    invoke-static {p1, p2, v0}, LD0/s;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lv1/l;)V

    return-void
.end method
