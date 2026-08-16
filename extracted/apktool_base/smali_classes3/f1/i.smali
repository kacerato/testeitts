.class public abstract Lf1/i;
.super Lf1/e;
.source "SourceFile"

# interfaces
.implements Lf1/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.internal.IOngoingSmsRequestCallback"

    invoke-direct {p0, v0}, Lf1/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final h(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lf1/f;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move p3, p4

    :cond_0
    invoke-static {p2}, Lf1/f;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p3}, Lf1/j;->O0(Lcom/google/android/gms/common/api/Status;Z)V

    return p4

    :cond_1
    return p3
.end method
