.class public final Lcom/tonyodev/fetch2/CompletedDownload$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/CompletedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tonyodev/fetch2/CompletedDownload;",
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
    invoke-direct {p0}, Lcom/tonyodev/fetch2/CompletedDownload$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2/CompletedDownload;
    .locals 12
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/Map;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    .line 11
    new-instance v6, Lcom/tonyodev/fetch2/CompletedDownload;

    invoke-direct {v6}, Lcom/tonyodev/fetch2/CompletedDownload;-><init>()V

    .line 12
    invoke-virtual {v6, v0}, Lcom/tonyodev/fetch2/CompletedDownload;->setUrl(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6, v1}, Lcom/tonyodev/fetch2/CompletedDownload;->setFile(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v6, v2}, Lcom/tonyodev/fetch2/CompletedDownload;->setGroup(I)V

    .line 15
    invoke-virtual {v6, v3, v4}, Lcom/tonyodev/fetch2/CompletedDownload;->setFileByteSize(J)V

    .line 16
    invoke-virtual {v6, v5}, Lcom/tonyodev/fetch2/CompletedDownload;->setHeaders(Ljava/util/Map;)V

    .line 17
    invoke-virtual {v6, v7}, Lcom/tonyodev/fetch2/CompletedDownload;->setTag(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6, v8, v9}, Lcom/tonyodev/fetch2/CompletedDownload;->setIdentifier(J)V

    .line 19
    invoke-virtual {v6, v10, v11}, Lcom/tonyodev/fetch2/CompletedDownload;->setCreated(J)V

    .line 20
    new-instance v0, Lcom/tonyodev/fetch2core/Extras;

    invoke-direct {v0, p1}, Lcom/tonyodev/fetch2core/Extras;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Lcom/tonyodev/fetch2/CompletedDownload;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/CompletedDownload$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2/CompletedDownload;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tonyodev/fetch2/CompletedDownload;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-array p1, p1, [Lcom/tonyodev/fetch2/CompletedDownload;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/CompletedDownload$CREATOR;->newArray(I)[Lcom/tonyodev/fetch2/CompletedDownload;

    move-result-object p1

    return-object p1
.end method
