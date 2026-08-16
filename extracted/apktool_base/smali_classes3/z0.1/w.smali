.class public final Lz0/w;
.super Le1/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Le1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e1(Lz0/v;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
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

    const/16 p1, 0x67

    invoke-virtual {p0, p1, v0}, Le1/a;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final l0(Lz0/v;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
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

    const/16 p1, 0x66

    invoke-virtual {p0, p1, v0}, Le1/a;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final t(Lz0/v;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
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

    const/16 p1, 0x65

    invoke-virtual {p0, p1, v0}, Le1/a;->k(ILandroid/os/Parcel;)V

    return-void
.end method
