.class public final Lb1/e;
.super Lj1/g0;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lv1/l;


# direct methods
.method public constructor <init>(Lb1/a;Lv1/l;)V
    .locals 0

    iput-object p2, p0, Lb1/e;->e:Lv1/l;

    invoke-direct {p0}, Lj1/g0;-><init>()V

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

    new-instance v0, Lj1/f0;

    invoke-direct {v0, p2}, Lj1/f0;-><init>(Landroid/app/PendingIntent;)V

    iget-object p2, p0, Lb1/e;->e:Lv1/l;

    invoke-static {p1, v0, p2}, LD0/s;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lv1/l;)V

    return-void
.end method
