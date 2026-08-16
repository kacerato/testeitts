.class public final Lj1/i0;
.super Lj1/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.fido.u2f.internal.regular.IU2fAppService"

    invoke-direct {p0, p1, v0}, Lj1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final l0(Lj1/h0;Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;)V
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

.method public final t(Lj1/h0;Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;)V
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
