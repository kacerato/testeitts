.class public final LZ0/k;
.super Lj1/c0;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lv1/l;


# direct methods
.method public constructor <init>(LZ0/a;Lv1/l;)V
    .locals 0

    iput-object p2, p0, LZ0/k;->e:Lv1/l;

    invoke-direct {p0}, Lj1/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/gms/common/api/Status;Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lj1/U;

    invoke-direct {v0, p2}, Lj1/U;-><init>(Landroid/app/PendingIntent;)V

    iget-object p2, p0, LZ0/k;->e:Lv1/l;

    invoke-static {p1, v0, p2}, LD0/s;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lv1/l;)V

    return-void
.end method
