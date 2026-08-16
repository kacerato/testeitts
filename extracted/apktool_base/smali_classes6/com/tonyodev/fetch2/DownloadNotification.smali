.class public Lcom/tonyodev/fetch2/DownloadNotification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/DownloadNotification$ActionType;,
        Lcom/tonyodev/fetch2/DownloadNotification$CREATOR;,
        Lcom/tonyodev/fetch2/DownloadNotification$WhenMappings;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/tonyodev/fetch2/DownloadNotification$CREATOR;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private downloaded:J

.field private downloadedBytesPerSecond:J

.field private etaInMilliSeconds:J

.field private groupId:I

.field private namespace:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private notificationId:I

.field private progress:I

.field private status:Lcom/tonyodev/fetch2/Status;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private total:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tonyodev/fetch2/DownloadNotification$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/DownloadNotification$CREATOR;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/DownloadNotification;->CREATOR:Lcom/tonyodev/fetch2/DownloadNotification$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tonyodev/fetch2/Status;->NONE:Lcom/tonyodev/fetch2/Status;

    iput-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->progress:I

    iput v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->notificationId:I

    iput v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->groupId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->etaInMilliSeconds:J

    iput-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->downloadedBytesPerSecond:J

    iput-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->total:J

    iput-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->downloaded:J

    const-string v0, "LibGlobalFetchLib"

    iput-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->namespace:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
    const-string v1, "null cannot be cast to non-null type com.tonyodev.fetch2.DownloadNotification"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tonyodev/fetch2/DownloadNotification;

    iget-object v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    iget-object v3, p1, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->progress:I

    iget v3, p1, Lcom/tonyodev/fetch2/DownloadNotification;->progress:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->notificationId:I

    iget v3, p1, Lcom/tonyodev/fetch2/DownloadNotification;->notificationId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->groupId:I

    iget v3, p1, Lcom/tonyodev/fetch2/DownloadNotification;->groupId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/tonyodev/fetch2/DownloadNotification;->etaInMilliSeconds:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2/DownloadNotification;->etaInMilliSeconds:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/tonyodev/fetch2/DownloadNotification;->downloadedBytesPerSecond:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2/DownloadNotification;->downloadedBytesPerSecond:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/tonyodev/fetch2/DownloadNotification;->total:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2/DownloadNotification;->total:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/tonyodev/fetch2/DownloadNotification;->downloaded:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2/DownloadNotification;->downloaded:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lcom/tonyodev/fetch2/DownloadNotification;->namespace:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/tonyodev/fetch2/DownloadNotification;->title:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getDownloaded()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->downloaded:J

    return-wide v0
.end method

.method public final getDownloadedBytesPerSecond()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->downloadedBytesPerSecond:J

    return-wide v0
.end method

.method public final getEtaInMilliSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->etaInMilliSeconds:J

    return-wide v0
.end method

.method public final getGroupId()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->groupId:I

    return v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationId()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->notificationId:I

    return v0
.end method

.method public final getProgress()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->progress:I

    return v0
.end method

.method public final getProgressIndeterminate()Z
    .locals 4

    iget-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->total:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getStatus()Lcom/tonyodev/fetch2/Status;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->total:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->progress:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->notificationId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->groupId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->etaInMilliSeconds:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->downloadedBytesPerSecond:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->total:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->downloaded:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->namespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isActive()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isCancelled()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->CANCELLED:Lcom/tonyodev/fetch2/Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCancelledNotification()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/DownloadNotification$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final isCompleted()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDeleted()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->DELETED:Lcom/tonyodev/fetch2/Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDownloading()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFailed()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->FAILED:Lcom/tonyodev/fetch2/Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isOnGoingNotification()Z
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/DownloadNotification$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public final isPaused()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->PAUSED:Lcom/tonyodev/fetch2/Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isQueued()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRemovableNotification()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/DownloadNotification$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final isRemoved()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->REMOVED:Lcom/tonyodev/fetch2/Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setDownloaded(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->downloaded:J

    return-void
.end method

.method public final setDownloadedBytesPerSecond(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->downloadedBytesPerSecond:J

    return-void
.end method

.method public final setEtaInMilliSeconds(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->etaInMilliSeconds:J

    return-void
.end method

.method public final setGroupId(I)V
    .locals 0

    iput p1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->groupId:I

    return-void
.end method

.method public final setNamespace(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->namespace:Ljava/lang/String;

    return-void
.end method

.method public final setNotificationId(I)V
    .locals 0

    iput p1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->notificationId:I

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->progress:I

    return-void
.end method

.method public final setStatus(Lcom/tonyodev/fetch2/Status;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTotal(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/DownloadNotification;->total:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    iget v2, v0, Lcom/tonyodev/fetch2/DownloadNotification;->progress:I

    iget v3, v0, Lcom/tonyodev/fetch2/DownloadNotification;->notificationId:I

    iget v4, v0, Lcom/tonyodev/fetch2/DownloadNotification;->groupId:I

    iget-wide v5, v0, Lcom/tonyodev/fetch2/DownloadNotification;->etaInMilliSeconds:J

    iget-wide v7, v0, Lcom/tonyodev/fetch2/DownloadNotification;->downloadedBytesPerSecond:J

    iget-wide v9, v0, Lcom/tonyodev/fetch2/DownloadNotification;->total:J

    iget-wide v11, v0, Lcom/tonyodev/fetch2/DownloadNotification;->downloaded:J

    iget-object v13, v0, Lcom/tonyodev/fetch2/DownloadNotification;->namespace:Ljava/lang/String;

    iget-object v14, v0, Lcom/tonyodev/fetch2/DownloadNotification;->title:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadNotification(status="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", progress="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", notificationId="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", groupId="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", etaInMilliSeconds="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", downloadedBytesPerSecond="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", total="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", downloaded="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", namespace=\'"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', title=\'"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    iget-object p2, p0, Lcom/tonyodev/fetch2/DownloadNotification;->status:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/Status;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/tonyodev/fetch2/DownloadNotification;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/tonyodev/fetch2/DownloadNotification;->notificationId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/tonyodev/fetch2/DownloadNotification;->groupId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->etaInMilliSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->downloadedBytesPerSecond:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tonyodev/fetch2/DownloadNotification;->downloaded:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/tonyodev/fetch2/DownloadNotification;->namespace:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tonyodev/fetch2/DownloadNotification;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
