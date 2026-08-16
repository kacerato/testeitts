.class public final Lcom/tonyodev/fetch2/DownloadNotification$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/DownloadNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tonyodev/fetch2/DownloadNotification;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tonyodev/fetch2/DownloadNotification$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2/DownloadNotification;
    .locals 14
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/tonyodev/fetch2/Status;->Companion:Lcom/tonyodev/fetch2/Status$Companion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/Status$Companion;->valueOf(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    if-nez v12, :cond_0

    move-object v12, v13

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v13, p1

    .line 12
    :goto_0
    new-instance p1, Lcom/tonyodev/fetch2/DownloadNotification;

    invoke-direct {p1}, Lcom/tonyodev/fetch2/DownloadNotification;-><init>()V

    .line 13
    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/DownloadNotification;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 14
    invoke-virtual {p1, v1}, Lcom/tonyodev/fetch2/DownloadNotification;->setProgress(I)V

    .line 15
    invoke-virtual {p1, v2}, Lcom/tonyodev/fetch2/DownloadNotification;->setNotificationId(I)V

    .line 16
    invoke-virtual {p1, v3}, Lcom/tonyodev/fetch2/DownloadNotification;->setGroupId(I)V

    .line 17
    invoke-virtual {p1, v4, v5}, Lcom/tonyodev/fetch2/DownloadNotification;->setEtaInMilliSeconds(J)V

    .line 18
    invoke-virtual {p1, v6, v7}, Lcom/tonyodev/fetch2/DownloadNotification;->setDownloadedBytesPerSecond(J)V

    .line 19
    invoke-virtual {p1, v8, v9}, Lcom/tonyodev/fetch2/DownloadNotification;->setTotal(J)V

    .line 20
    invoke-virtual {p1, v10, v11}, Lcom/tonyodev/fetch2/DownloadNotification;->setDownloaded(J)V

    .line 21
    invoke-virtual {p1, v12}, Lcom/tonyodev/fetch2/DownloadNotification;->setNamespace(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, v13}, Lcom/tonyodev/fetch2/DownloadNotification;->setTitle(Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/DownloadNotification$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2/DownloadNotification;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tonyodev/fetch2/DownloadNotification;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-array p1, p1, [Lcom/tonyodev/fetch2/DownloadNotification;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/DownloadNotification$CREATOR;->newArray(I)[Lcom/tonyodev/fetch2/DownloadNotification;

    move-result-object p1

    return-object p1
.end method
