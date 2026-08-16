.class public final Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/downloader/DownloadManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadManagerImpl.kt\ncom/tonyodev/fetch2/downloader/DownloadManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,313:1\n1855#2,2:314\n1549#2:320\n1620#2,3:321\n32#3,2:316\n32#3,2:318\n526#4:324\n511#4,6:325\n125#5:331\n152#5,3:332\n*S KotlinDebug\n*F\n+ 1 DownloadManagerImpl.kt\ncom/tonyodev/fetch2/downloader/DownloadManagerImpl\n*L\n42#1:314,2\n233#1:320\n233#1:321,3\n167#1:316,2\n182#1:318,2\n240#1:324\n240#1:325,6\n240#1:331\n240#1:332,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDownloadManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadManagerImpl.kt\ncom/tonyodev/fetch2/downloader/DownloadManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,313:1\n1855#2,2:314\n1549#2:320\n1620#2,3:321\n32#3,2:316\n32#3,2:318\n526#4:324\n511#4,6:325\n125#5:331\n152#5,3:332\n*S KotlinDebug\n*F\n+ 1 DownloadManagerImpl.kt\ncom/tonyodev/fetch2/downloader/DownloadManagerImpl\n*L\n42#1:314,2\n233#1:320\n233#1:321,3\n167#1:316,2\n182#1:318,2\n240#1:324\n240#1:325,6\n240#1:331\n240#1:332,3\n*E\n"
    }
.end annotation


# instance fields
.field private volatile closed:Z

.field private volatile concurrentLimit:I

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentDownloadsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tonyodev/fetch2/downloader/FileDownloader;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile downloadCounter:I

.field private final downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/ExecutorService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final globalAutoRetryMaxAttempts:I

.field private final groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
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

.field private final listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lcom/tonyodev/fetch2core/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final namespace:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final preAllocateFileOnCreation:Z

.field private final progressReportingIntervalMillis:J

.field private final retryOnNetworkGain:Z

.field private final storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2core/Downloader;IJLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZLcom/tonyodev/fetch2/helper/DownloadInfoUpdater;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2core/FileServerDownloader;ZLcom/tonyodev/fetch2core/StorageResolver;Landroid/content/Context;Ljava/lang/String;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;IZ)V
    .locals 15
    .param p1    # Lcom/tonyodev/fetch2core/Downloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/tonyodev/fetch2core/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/tonyodev/fetch2core/FileServerDownloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lcom/tonyodev/fetch2core/StorageResolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;IJ",
            "Lcom/tonyodev/fetch2core/Logger;",
            "Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;",
            "Z",
            "Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;",
            "Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;",
            "Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;",
            "Lcom/tonyodev/fetch2core/FileServerDownloader;",
            "Z",
            "Lcom/tonyodev/fetch2core/StorageResolver;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/tonyodev/fetch2/provider/GroupInfoProvider;",
            "IZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object/from16 v12, p16

    const-string v13, "httpDownloader"

    invoke-static {v1, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "logger"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "networkInfoProvider"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "downloadInfoUpdater"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "downloadManagerCoordinator"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "listenerCoordinator"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "fileServerDownloader"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "storageResolver"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "context"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "namespace"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "groupInfoProvider"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    move-wide/from16 v13, p3

    iput-wide v13, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->progressReportingIntervalMillis:J

    iput-object v3, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    iput-object v4, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    move/from16 v1, p7

    iput-boolean v1, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->retryOnNetworkGain:Z

    iput-object v5, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    iput-object v6, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    iput-object v7, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iput-object v8, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    move/from16 v1, p12

    iput-boolean v1, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->hashCheckingEnabled:Z

    iput-object v9, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    iput-object v10, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->context:Landroid/content/Context;

    iput-object v11, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->namespace:Ljava/lang/String;

    iput-object v12, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move/from16 v1, p17

    iput v1, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->globalAutoRetryMaxAttempts:I

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->preAllocateFileOnCreation:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getNewDownloadExecutorService(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->executor:Ljava/util/concurrent/ExecutorService;

    iput v2, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->concurrentLimit:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->start$lambda$4$lambda$3(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;)V

    return-void
.end method

.method private final cancelAllDownloads()V
    .locals 5

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getConcurrentLimit()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->getFileDownloaderList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/downloader/FileDownloader;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->setInterrupted(Z)V

    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v3

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->removeFileDownloader(I)V

    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager cancelled download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    return-void
.end method

.method private final cancelDownloadNoLock(I)Z
    .locals 4

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->throwExceptionIfClosed()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/downloader/FileDownloader;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->setInterrupted(Z)V

    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-virtual {v1, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->removeFileDownloader(I)V

    iget-object p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadManager cancelled download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->getInterrupted()Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->interruptDownload(I)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final getFileDownloader(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;)Lcom/tonyodev/fetch2/downloader/FileDownloader;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Download;",
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;)",
            "Lcom/tonyodev/fetch2/downloader/FileDownloader;"
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v1, v4, v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;ILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/tonyodev/fetch2core/Downloader;->getHeadRequestMethodSupported(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "HEAD"

    invoke-static {p1, v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v1

    :cond_0
    invoke-interface {v3, v1}, Lcom/tonyodev/fetch2core/Downloader;->getRequestSupportedFileDownloaderTypes(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/tonyodev/fetch2core/Downloader;->getRequestFileDownloaderType(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/util/Set;)Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    move-result-object v4

    sget-object v5, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    if-ne v4, v5, :cond_1

    new-instance v12, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;

    iget-wide v4, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->progressReportingIntervalMillis:J

    iget-object v6, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    iget-object v7, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    iget-boolean v8, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->retryOnNetworkGain:Z

    iget-boolean v9, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->hashCheckingEnabled:Z

    iget-object v10, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    iget-boolean v11, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->preAllocateFileOnCreation:Z

    move-object v1, v12

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;-><init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;JLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZZLcom/tonyodev/fetch2core/StorageResolver;Z)V

    goto :goto_0

    :cond_1
    new-instance v13, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;

    iget-wide v4, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->progressReportingIntervalMillis:J

    iget-object v6, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    iget-object v7, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    iget-boolean v8, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->retryOnNetworkGain:Z

    iget-object v9, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-interface {v9, v1}, Lcom/tonyodev/fetch2core/StorageResolver;->getDirectoryForFileDownloaderTypeParallel(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->hashCheckingEnabled:Z

    iget-object v11, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    iget-boolean v12, v0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->preAllocateFileOnCreation:Z

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v12}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;-><init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;JLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZLjava/lang/String;ZLcom/tonyodev/fetch2core/StorageResolver;Z)V

    move-object v12, v13

    :goto_0
    return-object v12
.end method

.method private final getNewDownloadExecutorService(I)Ljava/util/concurrent/ExecutorService;
    .locals 0

    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final removeDownloadMappings(Lcom/tonyodev/fetch2/Download;)V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->removeFileDownloader(I)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method private static final start$lambda$4$lambda$3(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;)V
    .locals 5

    const-string v0, "$download"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getNewFileDownloaderForDownload(Lcom/tonyodev/fetch2/Download;)Lcom/tonyodev/fetch2/downloader/FileDownloader;

    move-result-object v0

    iget-object v1, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getFileDownloaderDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->setDelegate(Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;)V

    iget-object v2, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->addFileDownloader(ILcom/tonyodev/fetch2/downloader/FileDownloader;)V

    iget-object v2, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager starting download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_3
    monitor-exit v1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->removeDownloadMappings(Lcom/tonyodev/fetch2/Download;)V

    iget-object v0, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->clean()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->removeDownloadMappings(Lcom/tonyodev/fetch2/Download;)V

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.tonyodev.fetch2.action.QUEUE_BACKOFF_RESET"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.tonyodev.fetch2.extra.NAMESPACE"

    iget-object v1, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->namespace:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    :goto_3
    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    :try_start_5
    iget-object v1, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadManager failed to start download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->removeDownloadMappings(Lcom/tonyodev/fetch2/Download;)V

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.tonyodev.fetch2.action.QUEUE_BACKOFF_RESET"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_5
    return-void

    :goto_6
    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->removeDownloadMappings(Lcom/tonyodev/fetch2/Download;)V

    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.tonyodev.fetch2.action.QUEUE_BACKOFF_RESET"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.tonyodev.fetch2.extra.NAMESPACE"

    iget-object v2, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->namespace:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p1, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    throw v0
.end method

.method private final terminateAllDownloads()V
    .locals 6

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/downloader/FileDownloader;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->setTerminated(Z)V

    iget-object v3, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v2}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadManager terminated download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->removeFileDownloader(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    return-void
.end method

.method private final throwExceptionIfClosed()V
    .locals 2

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v1, "DownloadManager is already shutdown."

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canAccommodateNewDownload()Z
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->closed:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getConcurrentLimit()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public cancel(I)Z
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->cancelDownloadNoLock(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public cancelAll()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->throwExceptionIfClosed()V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->cancelAllDownloads()V

    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->closed:Z

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getConcurrentLimit()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->terminateAllDownloads()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v2, "DownloadManager closing download manager"

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public contains(I)Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-virtual {v1, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->containsFileDownloader(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public getActiveDownloadCount()I
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->throwExceptionIfClosed()V

    iget v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getActiveDownloads()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lpf/S;->x2(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lpf/I;->d0(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2/downloader/FileDownloader;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/downloader/FileDownloader;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public getActiveDownloadsIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public getConcurrentLimit()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->concurrentLimit:I

    return v0
.end method

.method public getDownloadFileTempDir(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v0}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;ILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2core/StorageResolver;->getDirectoryForFileDownloaderTypeParallel(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileDownloaderDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->retryOnNetworkGain:Z

    iget v4, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->globalAutoRetryMaxAttempts:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;-><init>(Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;Lcom/tonyodev/fetch2/FetchListener;ZI)V

    return-object v0
.end method

.method public getNewFileDownloaderForDownload(Lcom/tonyodev/fetch2/Download;)Lcom/tonyodev/fetch2/downloader/FileDownloader;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->isFetchFileServerUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-direct {p0, p1, v0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getFileDownloader(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;)Lcom/tonyodev/fetch2/downloader/FileDownloader;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    invoke-direct {p0, p1, v0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getFileDownloader(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;)Lcom/tonyodev/fetch2/downloader/FileDownloader;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->closed:Z

    return v0
.end method

.method public setConcurrentLimit(I)V
    .locals 5

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getActiveDownloadsIds()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->cancelDownloadNoLock(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_1
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getNewDownloadExecutorService(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->executor:Ljava/util/concurrent/ExecutorService;

    iput p1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->concurrentLimit:I

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    iget v2, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->concurrentLimit:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager concurrentLimit changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public start(Lcom/tonyodev/fetch2/Download;)Z
    .locals 6
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager already running download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->getConcurrentLimit()I

    move-result v3

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager cannot init download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because the download queue is full"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v2

    :cond_1
    :try_start_2
    iget v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadCounter:I

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->currentDownloadsMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v4

    invoke-virtual {v1, v4, v5}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->addFileDownloader(ILcom/tonyodev/fetch2/downloader/FileDownloader;)V

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v2, Lcom/tonyodev/fetch2/downloader/a;

    invoke-direct {v2, p1, p0}, Lcom/tonyodev/fetch2/downloader/a;-><init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v3

    :cond_2
    monitor-exit v0

    return v2

    :goto_0
    monitor-exit v0

    throw p1
.end method
