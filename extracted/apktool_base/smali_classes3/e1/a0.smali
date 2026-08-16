.class public abstract Le1/a0;
.super Le1/B;
.source "SourceFile"

# interfaces
.implements Le1/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.identity.internal.IGetPhoneNumberHintIntentCallback"

    invoke-direct {p0, v0}, Le1/B;-><init>(Ljava/lang/String;)V

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

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Le1/O;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Le1/O;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/app/PendingIntent;

    invoke-static {p2}, Le1/O;->d(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, p4}, Le1/b0;->j(Lcom/google/android/gms/common/api/Status;Landroid/app/PendingIntent;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
