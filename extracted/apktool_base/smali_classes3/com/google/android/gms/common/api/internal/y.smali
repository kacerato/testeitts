.class public final Lcom/google/android/gms/common/api/internal/y;
.super Lcom/google/android/gms/common/api/internal/h;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/common/api/internal/i$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/i$a;Lcom/google/android/gms/common/api/internal/f;[LB0/e;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/y;->e:Lcom/google/android/gms/common/api/internal/i$a;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/common/api/internal/h;-><init>(Lcom/google/android/gms/common/api/internal/f;[LB0/e;ZI)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/common/api/a$b;Lv1/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b;",
            "Lv1/l<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->e:Lcom/google/android/gms/common/api/internal/i$a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/i$a;->i(Lcom/google/android/gms/common/api/internal/i$a;)LD0/n;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LD0/n;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
