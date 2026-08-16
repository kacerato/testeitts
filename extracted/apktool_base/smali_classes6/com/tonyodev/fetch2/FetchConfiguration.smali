.class public final Lcom/tonyodev/fetch2/FetchConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final activeDownloadsCheckInterval:J

.field private final appContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final autoStart:Z

.field private final backgroundHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final concurrentLimit:I

.field private final createFileOnEnqueue:Z

.field private final fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2/database/FetchDatabaseManager<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fileExistChecksEnabled:Z

.field private final fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hashCheckingEnabled:Z

.field private final httpDownloader:Lcom/tonyodev/fetch2core/Downloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final internetCheckUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final logger:Lcom/tonyodev/fetch2core/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final loggingEnabled:Z

.field private final maxAutoRetryAttempts:I

.field private final namespace:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final preAllocateFileOnCreation:Z

.field private final prioritySort:Lcom/tonyodev/fetch2/PrioritySort;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final progressReportingIntervalMillis:J

.field private final retryOnNetworkGain:Z

.field private final storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;IJZLcom/tonyodev/fetch2core/Downloader;Lcom/tonyodev/fetch2/NetworkType;Lcom/tonyodev/fetch2core/Logger;ZZLcom/tonyodev/fetch2core/FileServerDownloader;ZZLcom/tonyodev/fetch2core/StorageResolver;Lcom/tonyodev/fetch2/FetchNotificationManager;Lcom/tonyodev/fetch2/database/FetchDatabaseManager;Landroid/os/Handler;Lcom/tonyodev/fetch2/PrioritySort;Ljava/lang/String;JZIZLcom/tonyodev/fetch2/fetch/FetchHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IJZ",
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;",
            "Lcom/tonyodev/fetch2/NetworkType;",
            "Lcom/tonyodev/fetch2core/Logger;",
            "ZZ",
            "Lcom/tonyodev/fetch2core/FileServerDownloader;",
            "ZZ",
            "Lcom/tonyodev/fetch2core/StorageResolver;",
            "Lcom/tonyodev/fetch2/FetchNotificationManager;",
            "Lcom/tonyodev/fetch2/database/FetchDatabaseManager<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/tonyodev/fetch2/PrioritySort;",
            "Ljava/lang/String;",
            "JZIZ",
            "Lcom/tonyodev/fetch2/fetch/FetchHandler;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->appContext:Landroid/content/Context;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->namespace:Ljava/lang/String;

    move v1, p3

    .line 4
    iput v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->concurrentLimit:I

    move-wide v1, p4

    .line 5
    iput-wide v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->progressReportingIntervalMillis:J

    move v1, p6

    .line 6
    iput-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->loggingEnabled:Z

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->logger:Lcom/tonyodev/fetch2core/Logger;

    move v1, p10

    .line 10
    iput-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->autoStart:Z

    move v1, p11

    .line 11
    iput-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->retryOnNetworkGain:Z

    move-object v1, p12

    .line 12
    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    move/from16 v1, p13

    .line 13
    iput-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->hashCheckingEnabled:Z

    move/from16 v1, p14

    .line 14
    iput-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileExistChecksEnabled:Z

    move-object/from16 v1, p15

    .line 15
    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    move-object/from16 v1, p16

    .line 16
    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;

    move-object/from16 v1, p17

    .line 17
    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    move-object/from16 v1, p18

    .line 18
    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->backgroundHandler:Landroid/os/Handler;

    move-object/from16 v1, p19

    .line 19
    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    move-object/from16 v1, p20

    .line 20
    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->internetCheckUrl:Ljava/lang/String;

    move-wide/from16 v1, p21

    .line 21
    iput-wide v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->activeDownloadsCheckInterval:J

    move/from16 v1, p23

    .line 22
    iput-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->createFileOnEnqueue:Z

    move/from16 v1, p24

    .line 23
    iput v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->maxAutoRetryAttempts:I

    move/from16 v1, p25

    .line 24
    iput-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->preAllocateFileOnCreation:Z

    move-object/from16 v1, p26

    .line 25
    iput-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;IJZLcom/tonyodev/fetch2core/Downloader;Lcom/tonyodev/fetch2/NetworkType;Lcom/tonyodev/fetch2core/Logger;ZZLcom/tonyodev/fetch2core/FileServerDownloader;ZZLcom/tonyodev/fetch2core/StorageResolver;Lcom/tonyodev/fetch2/FetchNotificationManager;Lcom/tonyodev/fetch2/database/FetchDatabaseManager;Landroid/os/Handler;Lcom/tonyodev/fetch2/PrioritySort;Ljava/lang/String;JZIZLcom/tonyodev/fetch2/fetch/FetchHandler;Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p26}, Lcom/tonyodev/fetch2/FetchConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;IJZLcom/tonyodev/fetch2core/Downloader;Lcom/tonyodev/fetch2/NetworkType;Lcom/tonyodev/fetch2core/Logger;ZZLcom/tonyodev/fetch2core/FileServerDownloader;ZZLcom/tonyodev/fetch2core/StorageResolver;Lcom/tonyodev/fetch2/FetchNotificationManager;Lcom/tonyodev/fetch2/database/FetchDatabaseManager;Landroid/os/Handler;Lcom/tonyodev/fetch2/PrioritySort;Ljava/lang/String;JZIZLcom/tonyodev/fetch2/fetch/FetchHandler;)V

    return-void
.end method


# virtual methods
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
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/tonyodev/fetch2/FetchConfiguration;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.tonyodev.fetch2.FetchConfiguration"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tonyodev/fetch2/FetchConfiguration;

    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->appContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->appContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->namespace:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->concurrentLimit:I

    iget v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->concurrentLimit:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->progressReportingIntervalMillis:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->progressReportingIntervalMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->loggingEnabled:Z

    iget-boolean v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->loggingEnabled:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    iget-object v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->logger:Lcom/tonyodev/fetch2core/Logger;

    iget-object v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->autoStart:Z

    iget-boolean v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->autoStart:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->retryOnNetworkGain:Z

    iget-boolean v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->retryOnNetworkGain:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    iget-object v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->hashCheckingEnabled:Z

    iget-boolean v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->hashCheckingEnabled:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileExistChecksEnabled:Z

    iget-boolean v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->fileExistChecksEnabled:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    iget-object v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;

    iget-object v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    iget-object v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->backgroundHandler:Landroid/os/Handler;

    iget-object v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->backgroundHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    iget-object v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->internetCheckUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->internetCheckUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->activeDownloadsCheckInterval:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->activeDownloadsCheckInterval:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->createFileOnEnqueue:Z

    iget-boolean v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->createFileOnEnqueue:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->maxAutoRetryAttempts:I

    iget v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->maxAutoRetryAttempts:I

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->preAllocateFileOnCreation:Z

    iget-boolean v3, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->preAllocateFileOnCreation:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    iget-object p1, p1, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getActiveDownloadsCheckInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->activeDownloadsCheckInterval:J

    return-wide v0
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getAutoStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->autoStart:Z

    return v0
.end method

.method public final getBackgroundHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->backgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getConcurrentLimit()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->concurrentLimit:I

    return v0
.end method

.method public final getCreateFileOnEnqueue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->createFileOnEnqueue:Z

    return v0
.end method

.method public final getFetchDatabaseManager()Lcom/tonyodev/fetch2/database/FetchDatabaseManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tonyodev/fetch2/database/FetchDatabaseManager<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    return-object v0
.end method

.method public final getFetchHandler()Lcom/tonyodev/fetch2/fetch/FetchHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    return-object v0
.end method

.method public final getFetchNotificationManager()Lcom/tonyodev/fetch2/FetchNotificationManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;

    return-object v0
.end method

.method public final getFileExistChecksEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileExistChecksEnabled:Z

    return v0
.end method

.method public final getFileServerDownloader()Lcom/tonyodev/fetch2core/FileServerDownloader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    return-object v0
.end method

.method public final getGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method

.method public final getHashCheckingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->hashCheckingEnabled:Z

    return v0
.end method

.method public final getHttpDownloader()Lcom/tonyodev/fetch2core/Downloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    return-object v0
.end method

.method public final getInternetCheckUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->internetCheckUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogger()Lcom/tonyodev/fetch2core/Logger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->logger:Lcom/tonyodev/fetch2core/Logger;

    return-object v0
.end method

.method public final getLoggingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->loggingEnabled:Z

    return v0
.end method

.method public final getMaxAutoRetryAttempts()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->maxAutoRetryAttempts:I

    return v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewFetchInstanceFromConfiguration()Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/Fetch;->Impl:Lcom/tonyodev/fetch2/Fetch$Impl;

    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2/Fetch$Impl;->getInstance(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    return-object v0
.end method

.method public final getPreAllocateFileOnCreation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->preAllocateFileOnCreation:Z

    return v0
.end method

.method public final getPrioritySort()Lcom/tonyodev/fetch2/PrioritySort;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    return-object v0
.end method

.method public final getProgressReportingIntervalMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->progressReportingIntervalMillis:J

    return-wide v0
.end method

.method public final getRetryOnNetworkGain()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->retryOnNetworkGain:Z

    return v0
.end method

.method public final getStorageResolver()Lcom/tonyodev/fetch2core/StorageResolver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->namespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->concurrentLimit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->progressReportingIntervalMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->loggingEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->autoStart:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->retryOnNetworkGain:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->hashCheckingEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileExistChecksEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->backgroundHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->internetCheckUrl:Ljava/lang/String;

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->activeDownloadsCheckInterval:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->createFileOnEnqueue:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->maxAutoRetryAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration;->preAllocateFileOnCreation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 28
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->appContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->namespace:Ljava/lang/String;

    iget v3, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->concurrentLimit:I

    iget-wide v4, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->progressReportingIntervalMillis:J

    iget-boolean v6, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->loggingEnabled:Z

    iget-object v7, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v8, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    iget-object v9, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->logger:Lcom/tonyodev/fetch2core/Logger;

    iget-boolean v10, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->autoStart:Z

    iget-boolean v11, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->retryOnNetworkGain:Z

    iget-object v12, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    iget-boolean v13, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->hashCheckingEnabled:Z

    iget-boolean v14, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fileExistChecksEnabled:Z

    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->backgroundHandler:Landroid/os/Handler;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->internetCheckUrl:Ljava/lang/String;

    move/from16 v21, v14

    move-object/from16 v22, v15

    iget-wide v14, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->activeDownloadsCheckInterval:J

    move-wide/from16 v23, v14

    iget-boolean v14, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->createFileOnEnqueue:Z

    iget-boolean v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->preAllocateFileOnCreation:Z

    move/from16 v25, v15

    iget v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->maxAutoRetryAttempts:I

    move/from16 v26, v15

    iget-object v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v15

    const-string v15, "FetchConfiguration(appContext="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", namespace=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', concurrentLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progressReportingIntervalMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", loggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", httpDownloader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", globalNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autoStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", retryOnNetworkGain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fileServerDownloader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashCheckingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fileExistChecksEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", storageResolver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fetchNotificationManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fetchDatabaseManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prioritySort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internetCheckUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activeDownloadsCheckInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", createFileOnEnqueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preAllocateFileOnCreation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxAutoRetryAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fetchHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
