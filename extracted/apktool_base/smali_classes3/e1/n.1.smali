.class public final Le1/n;
.super Lcom/google/android/gms/common/api/internal/e$a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lv1/l;


# direct methods
.method public constructor <init>(Le1/u;Lv1/l;)V
    .locals 0

    iput-object p2, p0, Le1/n;->e:Lv1/l;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Le1/n;->e:Lv1/l;

    invoke-static {p1, v0}, LD0/s;->b(Lcom/google/android/gms/common/api/Status;Lv1/l;)V

    return-void
.end method
