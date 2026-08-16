.class public final Lj1/Z;
.super Lj1/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedService"

    invoke-direct {p0, p1, v0}, Lj1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e1(Lj1/Y;La1/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lj1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    sget v1, Lj1/N;->b:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v0, p2}, Lj1/N;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lj1/a;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final f1(Lj1/P;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lj1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    sget v1, Lj1/N;->b:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lj1/a;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final l0(Lj1/Y;La1/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lj1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    sget v1, Lj1/N;->b:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v0, p2}, Lj1/N;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lj1/a;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final t(Lj1/S;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lj1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    sget v1, Lj1/N;->b:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lj1/a;->k(ILandroid/os/Parcel;)V

    return-void
.end method
