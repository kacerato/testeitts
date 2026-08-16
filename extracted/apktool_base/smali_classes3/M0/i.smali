.class public final LM0/i;
.super Lg1/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.common.moduleinstall.internal.IModuleInstallService"

    invoke-direct {p0, p1, v0}, Lg1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e1(LM0/h;LM0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lg1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg1/c;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lg1/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lg1/a;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final f1(LM0/h;LM0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lg1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg1/c;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lg1/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lg1/a;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final g1(LM0/h;LM0/a;LM0/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lg1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg1/c;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lg1/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lg1/c;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lg1/a;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final h1(Lcom/google/android/gms/common/api/internal/e;LM0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lg1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg1/c;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lg1/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lg1/a;->t(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final i1(Lcom/google/android/gms/common/api/internal/e;LM0/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lg1/a;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg1/c;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lg1/c;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lg1/a;->t(ILandroid/os/Parcel;)V

    return-void
.end method
