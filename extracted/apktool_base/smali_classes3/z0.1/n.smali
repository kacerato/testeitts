.class public final Lz0/n;
.super Lz0/e;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lz0/o;


# direct methods
.method public constructor <init>(Lz0/o;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lz0/n;->e:Lz0/o;

    invoke-direct {p0}, Lz0/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final o0(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lz0/n;->e:Lz0/o;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method
