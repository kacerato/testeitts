.class public final Lcom/google/android/gms/common/api/internal/z;
.super Lcom/google/android/gms/common/api/internal/k;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/i$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/i$a;Lcom/google/android/gms/common/api/internal/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z;->b:Lcom/google/android/gms/common/api/internal/i$a;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/k;-><init>(Lcom/google/android/gms/common/api/internal/f$a;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/a$b;Lv1/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b;",
            "Lv1/l<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z;->b:Lcom/google/android/gms/common/api/internal/i$a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/i$a;->j(Lcom/google/android/gms/common/api/internal/i$a;)LD0/n;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LD0/n;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
