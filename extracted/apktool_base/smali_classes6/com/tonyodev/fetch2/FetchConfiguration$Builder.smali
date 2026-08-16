.class public final Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/FetchConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private activeDownloadCheckInterval:J

.field private final appContext:Landroid/content/Context;

.field private autoStart:Z

.field private backgroundHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private concurrentLimit:I

.field private createFileOnEnqueue:Z

.field private fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;
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

.field private fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fileExistChecksEnabled:Z

.field private fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hashCheckEnabled:Z

.field private httpDownloader:Lcom/tonyodev/fetch2core/Downloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private internetCheckUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private logger:Lcom/tonyodev/fetch2core/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loggingEnabled:Z

.field private maxAutoRetryAttempts:I

.field private namespace:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private preAllocateFileOnCreation:Z

.field private prioritySort:Lcom/tonyodev/fetch2/PrioritySort;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progressReportingIntervalMillis:J

.field private retryOnNetworkGain:Z

.field private storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->appContext:Landroid/content/Context;

    const-string v0, "LibGlobalFetchLib"

    iput-object v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->namespace:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->concurrentLimit:I

    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->progressReportingIntervalMillis:J

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultDownloader()Lcom/tonyodev/fetch2core/Downloader;

    move-result-object v1

    iput-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v1

    iput-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->logger:Lcom/tonyodev/fetch2core/Logger;

    iput-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->autoStart:Z

    iput-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->retryOnNetworkGain:Z

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultFileServerDownloader()Lcom/tonyodev/fetch2core/FileServerDownloader;

    move-result-object v1

    iput-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    iput-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fileExistChecksEnabled:Z

    new-instance v1, Lcom/tonyodev/fetch2core/DefaultStorageResolver;

    const-string v2, "appContext"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileTempDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/tonyodev/fetch2core/DefaultStorageResolver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultPrioritySort()Lcom/tonyodev/fetch2/PrioritySort;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->activeDownloadCheckInterval:J

    iput-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->createFileOnEnqueue:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->maxAutoRetryAttempts:I

    iput-boolean v0, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->preAllocateFileOnCreation:Z

    return-void
.end method

.method public static synthetic setNamespace$default(Lcom/tonyodev/fetch2/FetchConfiguration$Builder;Ljava/lang/String;ILjava/lang/Object;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->setNamespace(Ljava/lang/String;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/tonyodev/fetch2/FetchConfiguration;
    .locals 32
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->logger:Lcom/tonyodev/fetch2core/Logger;

    instance-of v1, v10, Lcom/tonyodev/fetch2core/FetchLogger;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->loggingEnabled:Z

    invoke-interface {v10, v1}, Lcom/tonyodev/fetch2core/Logger;->setEnabled(Z)V

    move-object v1, v10

    check-cast v1, Lcom/tonyodev/fetch2core/FetchLogger;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/FetchLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fetch2"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/FetchLogger;->setTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->loggingEnabled:Z

    invoke-interface {v10, v1}, Lcom/tonyodev/fetch2core/Logger;->setEnabled(Z)V

    :cond_1
    :goto_0
    new-instance v29, Lcom/tonyodev/fetch2/FetchConfiguration;

    move-object/from16 v1, v29

    iget-object v3, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->appContext:Landroid/content/Context;

    move-object v2, v3

    const-string v4, "appContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->namespace:Ljava/lang/String;

    iget v4, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->concurrentLimit:I

    iget-wide v5, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->progressReportingIntervalMillis:J

    iget-boolean v7, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->loggingEnabled:Z

    iget-object v8, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v9, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    iget-boolean v11, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->autoStart:Z

    iget-boolean v12, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->retryOnNetworkGain:Z

    iget-object v13, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    iget-boolean v14, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->hashCheckEnabled:Z

    iget-boolean v15, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fileExistChecksEnabled:Z

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->backgroundHandler:Landroid/os/Handler;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->internetCheckUrl:Ljava/lang/String;

    move-object/from16 v21, v1

    move-object/from16 v31, v2

    iget-wide v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->activeDownloadCheckInterval:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->createFileOnEnqueue:Z

    move/from16 v24, v1

    iget v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->maxAutoRetryAttempts:I

    move/from16 v25, v1

    iget-boolean v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->preAllocateFileOnCreation:Z

    move/from16 v26, v1

    iget-object v1, v0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    move-object/from16 v27, v1

    const/16 v28, 0x0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct/range {v1 .. v28}, Lcom/tonyodev/fetch2/FetchConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;IJZLcom/tonyodev/fetch2core/Downloader;Lcom/tonyodev/fetch2/NetworkType;Lcom/tonyodev/fetch2core/Logger;ZZLcom/tonyodev/fetch2core/FileServerDownloader;ZZLcom/tonyodev/fetch2core/StorageResolver;Lcom/tonyodev/fetch2/FetchNotificationManager;Lcom/tonyodev/fetch2/database/FetchDatabaseManager;Landroid/os/Handler;Lcom/tonyodev/fetch2/PrioritySort;Ljava/lang/String;JZIZLcom/tonyodev/fetch2/fetch/FetchHandler;Lkotlin/jvm/internal/x;)V

    return-object v29
.end method

.method public final createDownloadFileOnEnqueue(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->createFileOnEnqueue:Z

    return-object p0
.end method

.method public final enableAutoStart(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->autoStart:Z

    return-object p0
.end method

.method public final enableFileExistChecks(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fileExistChecksEnabled:Z

    return-object p0
.end method

.method public final enableHashCheck(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->hashCheckEnabled:Z

    return-object p0
.end method

.method public final enableLogging(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->loggingEnabled:Z

    return-object p0
.end method

.method public final enableRetryOnNetworkGain(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->retryOnNetworkGain:Z

    return-object p0
.end method

.method public final preAllocateFileOnCreation(Z)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->preAllocateFileOnCreation:Z

    return-object p0
.end method

.method public final setAutoRetryMaxAttempts(I)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->maxAutoRetryAttempts:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The AutoRetryMaxAttempts has to be greater than -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBackgroundHandler(Landroid/os/Handler;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 2
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->backgroundHandler:Landroid/os/Handler;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "The background handler cannot use the main/ui thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDatabaseManager(Lcom/tonyodev/fetch2/database/FetchDatabaseManager;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0
    .param p1    # Lcom/tonyodev/fetch2/database/FetchDatabaseManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/database/FetchDatabaseManager<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)",
            "Lcom/tonyodev/fetch2/FetchConfiguration$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    return-object p0
.end method

.method public final setDownloadConcurrentLimit(I)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->concurrentLimit:I

    return-object p0

    :cond_0
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v0, "Concurrent limit cannot be less than 0"

    invoke-direct {p1, v0}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFetchHandler(Lcom/tonyodev/fetch2/fetch/FetchHandler;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/fetch/FetchHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fetchHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    return-object p0
.end method

.method public final setFileServerDownloader(Lcom/tonyodev/fetch2core/FileServerDownloader;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/FileServerDownloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileServerDownloader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    return-object p0
.end method

.method public final setGlobalNetworkType(Lcom/tonyodev/fetch2/NetworkType;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/NetworkType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object p0
.end method

.method public final setHasActiveDownloadsCheckInterval(J)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->activeDownloadCheckInterval:J

    return-object p0

    :cond_0
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string p2, "intervalInMillis cannot be less than 0"

    invoke-direct {p1, p2}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setHttpDownloader(Lcom/tonyodev/fetch2core/Downloader;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Downloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;)",
            "Lcom/tonyodev/fetch2/FetchConfiguration$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "downloader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    return-object p0
.end method

.method public final setInternetAccessUrlCheck(Ljava/lang/String;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->internetCheckUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setLogger(Lcom/tonyodev/fetch2core/Logger;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->logger:Lcom/tonyodev/fetch2core/Logger;

    return-object p0
.end method

.method public final setNamespace(Ljava/lang/String;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, "LibGlobalFetchLib"

    :cond_1
    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public final setNotificationManager(Lcom/tonyodev/fetch2/FetchNotificationManager;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 0
    .param p1    # Lcom/tonyodev/fetch2/FetchNotificationManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;

    return-object p0
.end method

.method public final setPrioritySort(Lcom/tonyodev/fetch2/PrioritySort;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/PrioritySort;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "prioritySort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    return-object p0
.end method

.method public final setProgressReportingInterval(J)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->progressReportingIntervalMillis:J

    return-object p0

    :cond_0
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string p2, "progressReportingIntervalMillis cannot be less than 0"

    invoke-direct {p1, p2}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setStorageResolver(Lcom/tonyodev/fetch2core/StorageResolver;)Lcom/tonyodev/fetch2/FetchConfiguration$Builder;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/StorageResolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "storageResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/FetchConfiguration$Builder;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    return-object p0
.end method
