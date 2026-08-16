.class public abstract Lcom/google/android/gms/internal/auth/k3;
.super Lcom/google/android/gms/internal/auth/B;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/l3;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.auth.account.data.IGetAccountChangeEventsCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth/B;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final h(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/auth/d0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Ls0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/auth/d0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Ls0/c;

    invoke-static {p2}, Lcom/google/android/gms/internal/auth/d0;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p3}, Lcom/google/android/gms/internal/auth/l3;->D(Lcom/google/android/gms/common/api/Status;Ls0/c;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
