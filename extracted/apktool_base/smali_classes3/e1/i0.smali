.class public final Le1/i0;
.super Le1/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.identity.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Le1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e1(Le1/d0;Lcom/google/android/gms/auth/api/identity/h;Lcom/google/android/gms/common/api/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Le1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Le1/O;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Le1/O;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Le1/O;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Le1/a;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final f1(Le1/b0;Lcom/google/android/gms/auth/api/identity/g;Ljava/lang/String;Lcom/google/android/gms/common/api/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Le1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Le1/O;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Le1/O;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p4}, Le1/O;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Le1/a;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final l0(Lcom/google/android/gms/common/api/internal/e;Ljava/lang/String;Lcom/google/android/gms/common/api/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Le1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Le1/O;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Le1/O;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Le1/a;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final t(Le1/Y;Lcom/google/android/gms/auth/api/identity/c;Lcom/google/android/gms/common/api/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Le1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Le1/O;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Le1/O;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Le1/O;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Le1/a;->k(ILandroid/os/Parcel;)V

    return-void
.end method
