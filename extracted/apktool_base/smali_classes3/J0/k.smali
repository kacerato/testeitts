.class public abstract LJ0/k;
.super Lg1/b;
.source "SourceFile"

# interfaces
.implements LJ0/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.ICommonCallbacks"

    invoke-direct {p0, v0}, Lg1/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e1(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p2}, Lg1/c;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, LJ0/l;->f0(I)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
