.class public Lcom/tonyodev/fetch2/database/DownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/Download;


# annotations
.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            unique = true
            value = {
                "_file"
            }
        .end subannotation,
        .subannotation Landroidx/room/Index;
            unique = false
            value = {
                "_group",
                "_status"
            }
        .end subannotation
    }
    tableName = "requests"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/database/DownloadInfo$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/tonyodev/fetch2/database/DownloadInfo$CREATOR;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private autoRetryAttempts:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "_auto_retry_attempts"
        typeAffinity = 0x3
    .end annotation
.end field

.field private autoRetryMaxAttempts:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "_auto_retry_max_attempts"
        typeAffinity = 0x3
    .end annotation
.end field

.field private created:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "_created"
        typeAffinity = 0x3
    .end annotation
.end field

.field private downloadOnEnqueue:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "_download_on_enqueue"
        typeAffinity = 0x3
    .end annotation
.end field

.field private downloaded:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "_written_bytes"
        typeAffinity = 0x3
    .end annotation
.end field

.field private downloadedBytesPerSecond:J
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_enqueue_action"
        typeAffinity = 0x3
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private error:Lcom/tonyodev/fetch2/Error;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_error"
        typeAffinity = 0x3
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private etaInMilliSeconds:J
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private extras:Lcom/tonyodev/fetch2core/Extras;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_extras"
        typeAffinity = 0x2
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private file:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_file"
        typeAffinity = 0x2
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private group:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "_group"
        typeAffinity = 0x3
    .end annotation
.end field

.field private headers:Ljava/util/Map;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_headers"
        typeAffinity = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private id:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "_id"
        typeAffinity = 0x3
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private identifier:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "_identifier"
        typeAffinity = 0x3
    .end annotation
.end field

.field private namespace:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_namespace"
        typeAffinity = 0x2
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private networkType:Lcom/tonyodev/fetch2/NetworkType;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_network_type"
        typeAffinity = 0x3
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private priority:Lcom/tonyodev/fetch2/Priority;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_priority"
        typeAffinity = 0x3
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private status:Lcom/tonyodev/fetch2/Status;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_status"
        typeAffinity = 0x3
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_tag"
        typeAffinity = 0x2
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private total:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "_total_bytes"
        typeAffinity = 0x3
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_url"
        typeAffinity = 0x2
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadInfo$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo$CREATOR;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/database/DownloadInfo;->CREATOR:Lcom/tonyodev/fetch2/database/DownloadInfo$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->namespace:Ljava/lang/String;

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->file:Ljava/lang/String;

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->headers:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->total:J

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v2

    iput-object v2, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->status:Lcom/tonyodev/fetch2/Status;

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v2

    iput-object v2, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->error:Lcom/tonyodev/fetch2/Error;

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v2

    iput-object v2, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->created:J

    sget-object v2, Lcom/tonyodev/fetch2/EnqueueAction;->REPLACE_EXISTING:Lcom/tonyodev/fetch2/EnqueueAction;

    iput-object v2, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->downloadOnEnqueue:Z

    sget-object v2, Lcom/tonyodev/fetch2core/Extras;->CREATOR:Lcom/tonyodev/fetch2core/Extras$CREATOR;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/Extras$CREATOR;->getEmptyExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v2

    iput-object v2, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    iput-wide v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->etaInMilliSeconds:J

    iput-wide v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->downloadedBytesPerSecond:J

    return-void
.end method


# virtual methods
.method public copy()Lcom/tonyodev/fetch2/Download;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    invoke-static {p0, v0}, Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;->toDownloadInfo(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.tonyodev.fetch2.database.DownloadInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getGroup()I

    move-result v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getGroup()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v3

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v3

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getCreated()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getCreated()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v3

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getIdentifier()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getIdentifier()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_12

    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadOnEnqueue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadOnEnqueue()Z

    move-result v3

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryMaxAttempts()I

    move-result v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryMaxAttempts()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryAttempts()I

    move-result v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryAttempts()I

    move-result p1

    if-eq v1, p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public getAutoRetryAttempts()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->autoRetryAttempts:I

    return v0
.end method

.method public getAutoRetryMaxAttempts()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->autoRetryMaxAttempts:I

    return v0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->created:J

    return-wide v0
.end method

.method public getDownloadOnEnqueue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->downloadOnEnqueue:Z

    return v0
.end method

.method public getDownloaded()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->downloaded:J

    return-wide v0
.end method

.method public getDownloadedBytesPerSecond()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->downloadedBytesPerSecond:J

    return-wide v0
.end method

.method public getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    return-object v0
.end method

.method public getError()Lcom/tonyodev/fetch2/Error;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->error:Lcom/tonyodev/fetch2/Error;

    return-object v0
.end method

.method public getEtaInMilliSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->etaInMilliSeconds:J

    return-wide v0
.end method

.method public getExtras()Lcom/tonyodev/fetch2core/Extras;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getGroup()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->group:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->id:I

    return v0
.end method

.method public getIdentifier()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->identifier:J

    return-wide v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method

.method public getPriority()Lcom/tonyodev/fetch2/Priority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    return-object v0
.end method

.method public getProgress()I
    .locals 4

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->calculateProgress(JJ)I

    move-result v0

    return v0
.end method

.method public getRequest()Lcom/tonyodev/fetch2/Request;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/tonyodev/fetch2/Request;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getGroup()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/RequestInfo;->setGroupId(I)V

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/RequestInfo;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/RequestInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/RequestInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/RequestInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getIdentifier()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/RequestInfo;->setIdentifier(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadOnEnqueue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/RequestInfo;->setDownloadOnEnqueue(Z)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/RequestInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryMaxAttempts()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/RequestInfo;->setAutoRetryMaxAttempts(I)V

    return-object v0
.end method

.method public getStatus()Lcom/tonyodev/fetch2/Status;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->status:Lcom/tonyodev/fetch2/Status;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->total:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getGroup()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getCreated()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getIdentifier()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadOnEnqueue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/Extras;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryMaxAttempts()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryAttempts()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setAutoRetryAttempts(I)V
    .locals 0

    iput p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->autoRetryAttempts:I

    return-void
.end method

.method public setAutoRetryMaxAttempts(I)V
    .locals 0

    iput p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->autoRetryMaxAttempts:I

    return-void
.end method

.method public setCreated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->created:J

    return-void
.end method

.method public setDownloadOnEnqueue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->downloadOnEnqueue:Z

    return-void
.end method

.method public setDownloaded(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->downloaded:J

    return-void
.end method

.method public setDownloadedBytesPerSecond(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->downloadedBytesPerSecond:J

    return-void
.end method

.method public setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/EnqueueAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    return-void
.end method

.method public setError(Lcom/tonyodev/fetch2/Error;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Error;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->error:Lcom/tonyodev/fetch2/Error;

    return-void
.end method

.method public setEtaInMilliSeconds(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->etaInMilliSeconds:J

    return-void
.end method

.method public setExtras(Lcom/tonyodev/fetch2core/Extras;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Extras;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->file:Ljava/lang/String;

    return-void
.end method

.method public setGroup(I)V
    .locals 0

    iput p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->group:I

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->headers:Ljava/util/Map;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->id:I

    return-void
.end method

.method public setIdentifier(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->identifier:J

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->namespace:Ljava/lang/String;

    return-void
.end method

.method public setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/NetworkType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    return-void
.end method

.method public setPriority(Lcom/tonyodev/fetch2/Priority;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Priority;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    return-void
.end method

.method public setStatus(Lcom/tonyodev/fetch2/Status;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->status:Lcom/tonyodev/fetch2/Status;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTotal(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->total:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/DownloadInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 30
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getGroup()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getCreated()J

    move-result-wide v14

    move-wide/from16 v16, v14

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v15

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getIdentifier()J

    move-result-wide v14

    move-wide/from16 v20, v14

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadOnEnqueue()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v15

    move-object/from16 v22, v15

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryMaxAttempts()I

    move-result v15

    move/from16 v23, v15

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryAttempts()I

    move-result v15

    move/from16 v24, v14

    move/from16 v25, v15

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v14

    move-wide/from16 v26, v14

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v14

    move-wide/from16 v28, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DownloadInfo(id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", namespace=\'"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', url=\'"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', file=\'"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', group="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", priority="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", headers="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", downloaded="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", total="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", error="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networkType="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", created="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", tag="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", enqueueAction="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", identifier="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", downloadOnEnqueue="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", extras="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", autoRetryMaxAttempts="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", autoRetryAttempts="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", etaInMilliSeconds="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v26

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", downloadedBytesPerSecond="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v28

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getGroup()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/Priority;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/Error;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/NetworkType;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getCreated()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/EnqueueAction;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadOnEnqueue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/Extras;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryMaxAttempts()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryAttempts()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
