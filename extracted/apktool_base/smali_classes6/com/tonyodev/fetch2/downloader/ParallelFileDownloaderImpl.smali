.class public final Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/downloader/FileDownloader;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParallelFileDownloaderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParallelFileDownloaderImpl.kt\ncom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,549:1\n766#2:550\n857#2,2:551\n1549#2:553\n1620#2,3:554\n1855#2,2:557\n1855#2,2:559\n*S KotlinDebug\n*F\n+ 1 ParallelFileDownloaderImpl.kt\ncom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl\n*L\n122#1:550\n122#1:551,2\n126#1:553\n126#1:554,3\n142#1:557,2\n178#1:559,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nParallelFileDownloaderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParallelFileDownloaderImpl.kt\ncom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,549:1\n766#2:550\n857#2,2:551\n1549#2:553\n1620#2,3:554\n1855#2,2:557\n1855#2,2:559\n*S KotlinDebug\n*F\n+ 1 ParallelFileDownloaderImpl.kt\ncom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl\n*L\n122#1:550\n122#1:551,2\n126#1:553\n126#1:554,3\n142#1:557,2\n178#1:559,2\n*E\n"
    }
.end annotation


# instance fields
.field private volatile actionsCounter:I

.field private actionsTotal:I

.field private averageDownloadedBytesPerSecond:D

.field private delegate:Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final downloadInfo$delegate:Lnf/I;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile downloaded:J

.field private final downloader:Lcom/tonyodev/fetch2core/Downloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private estimatedTimeRemainingInMilliseconds:J

.field private executorService:Ljava/util/concurrent/ExecutorService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fileSlices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2core/FileSlice;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileTempDir:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hashCheckingEnabled:Z

.field private final initialDownload:Lcom/tonyodev/fetch2/Download;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interruptMonitor:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile interrupted:Z

.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lcom/tonyodev/fetch2core/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final preAllocateFileOnCreation:Z

.field private final progressReportingIntervalMillis:J

.field private final retryOnNetworkGain:Z

.field private final storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile terminated:Z

.field private volatile throwable:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile total:J

.field private totalDownloadBlocks:I

.field private volatile totalUnknown:Z


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;JLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZLjava/lang/String;ZLcom/tonyodev/fetch2core/StorageResolver;Z)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Downloader;
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
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/tonyodev/fetch2core/StorageResolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Download;",
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;J",
            "Lcom/tonyodev/fetch2core/Logger;",
            "Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/tonyodev/fetch2core/StorageResolver;",
            "Z)V"
        }
    .end annotation

    const-string v0, "initialDownload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfoProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileTempDir"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageResolver"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    iput-object p2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    iput-wide p3, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->progressReportingIntervalMillis:J

    iput-object p5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    iput-object p6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    iput-boolean p7, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->retryOnNetworkGain:Z

    iput-object p8, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->hashCheckingEnabled:Z

    iput-object p10, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    iput-boolean p11, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->preAllocateFileOnCreation:Z

    new-instance p1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$downloadInfo$2;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$downloadInfo$2;-><init>(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)V

    invoke-static {p1}, Lnf/K;->a(LMf/a;)Lnf/I;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloadInfo$delegate:Lnf/I;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    new-instance p3, Lcom/tonyodev/fetch2core/AverageCalculator;

    const/4 p4, 0x5

    invoke-direct {p3, p4}, Lcom/tonyodev/fetch2core/AverageCalculator;-><init>(I)V

    iput-object p3, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

    iput-wide p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->lock:Ljava/lang/Object;

    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileSlices:Ljava/util/List;

    new-instance p1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;-><init>(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->interruptMonitor:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;

    return-void
.end method

.method public static synthetic a(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;Lcom/tonyodev/fetch2core/FileSlice;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloadSliceFiles$lambda$6(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;Lcom/tonyodev/fetch2core/FileSlice;)V

    return-void
.end method

.method public static final synthetic access$getInitialDownload$p(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)Lcom/tonyodev/fetch2/Download;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    return-object p0
.end method

.method private final downloadSliceFiles(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Downloader$ServerRequest;",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2core/FileSlice;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->actionsCounter:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->actionsTotal:I

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/StorageResolver;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/EnqueueAction;->INCREMENT_FILE_NAME:Lcom/tonyodev/fetch2/EnqueueAction;

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v2, v0}, Lcom/tonyodev/fetch2core/StorageResolver;->createFile(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_1
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->preAllocateFileOnCreation:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/tonyodev/fetch2core/StorageResolver;->preAllocateFile(Ljava/lang/String;J)Z

    :cond_2
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2core/StorageResolver;->getRequestOutputResourceWrapper(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;->setWriteOffset(J)V

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tonyodev/fetch2core/FileSlice;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/tonyodev/fetch2/downloader/b;

    invoke-direct {v1, p0, p2}, Lcom/tonyodev/fetch2/downloader/b;-><init>(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;Lcom/tonyodev/fetch2core/FileSlice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static final downloadSliceFiles$lambda$6(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;Lcom/tonyodev/fetch2core/FileSlice;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fileSlice"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getPosition()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-Slice-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-direct {v0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadId(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setBlockPosition(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getStartBytes()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setStartByte(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getEndBytes()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getStartBytes()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v6

    add-long/2addr v6, v3

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getPosition()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v11, v3, 0x1

    const/16 v12, 0xc

    const/4 v13, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v13}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;JJLjava/lang/String;IILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v3

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getId()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getPosition()I

    move-result v7

    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/tonyodev/fetch2/util/FetchUtils;->getDownloadedInfoFilePath(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v7, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v6, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->interruptMonitor:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;

    invoke-interface {v6, v3, v8}, Lcom/tonyodev/fetch2core/Downloader;->execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v6

    if-nez v6, :cond_f

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v6

    if-ne v6, v4, :cond_f

    iget-object v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v4, v3}, Lcom/tonyodev/fetch2core/Downloader;->getRequestBufferSize(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)I

    move-result v3

    new-array v4, v3, [B

    invoke-virtual {v5}, Lcom/tonyodev/fetch2core/Downloader$Response;->getByteStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6, v4, v8, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_17

    :catch_1
    move-exception v0

    goto/16 :goto_14

    :cond_0
    const/4 v6, -0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getEndBytes()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    const-wide/16 v11, 0x0

    if-gez v10, :cond_1

    move-wide v13, v11

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getEndBytes()J

    move-result-wide v13

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getStartBytes()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v17

    add-long v15, v15, v17

    sub-long v15, v13, v15

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    move-wide v8, v15

    move-wide/from16 v22, v17

    :goto_2
    iget-boolean v10, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-nez v10, :cond_2

    cmp-long v10, v8, v11

    if-lez v10, :cond_15

    :cond_2
    const/4 v10, -0x1

    if-eq v6, v10, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v10

    if-nez v10, :cond_15

    iget-boolean v10, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-nez v10, :cond_4

    int-to-long v11, v6

    cmp-long v10, v11, v8

    if-gtz v10, :cond_3

    goto :goto_3

    :cond_3
    long-to-int v6, v8

    const/4 v11, -0x1

    goto :goto_4

    :cond_4
    :goto_3
    move v11, v6

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getStartBytes()J

    move-result-wide v17

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v19

    move-wide/from16 v24, v8

    add-long v8, v17, v19

    iget-object v12, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->lock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    if-eqz v10, :cond_5

    invoke-virtual {v10, v8, v9}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;->setWriteOffset(J)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_5
    :goto_5
    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    if-eqz v8, :cond_6

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9, v6}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;->write([BII)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v8

    move/from16 v26, v11

    int-to-long v10, v6

    add-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Lcom/tonyodev/fetch2core/FileSlice;->setDownloaded(J)V

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-wide v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    goto :goto_6

    :cond_7
    move/from16 v26, v11

    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    iget-wide v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->progressReportingIntervalMillis:J

    move-wide/from16 v16, v22

    move-wide/from16 v20, v8

    invoke-static/range {v16 .. v21}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->hasIntervalTimeElapsed(JJJ)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v8

    iget v9, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {v6, v8, v0, v9}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-wide/from16 v22, v8

    goto :goto_7

    :cond_9
    move/from16 v26, v11

    :cond_a
    :goto_7
    sget-object v6, Lnf/P0;->a:Lnf/P0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v12

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v6

    if-nez v6, :cond_e

    move/from16 v15, v26

    const/4 v6, -0x1

    if-eq v15, v6, :cond_d

    invoke-virtual {v5}, Lcom/tonyodev/fetch2core/Downloader$Response;->getByteStream()Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_b

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    move v8, v6

    :goto_8
    iget-boolean v10, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-nez v10, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getStartBytes()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v15

    add-long/2addr v10, v15

    sub-long v10, v13, v10

    move v6, v8

    move-wide v8, v10

    :goto_9
    const-wide/16 v11, 0x0

    goto/16 :goto_2

    :cond_c
    move v6, v8

    :goto_a
    move-wide/from16 v8, v24

    goto :goto_9

    :cond_d
    :goto_b
    const/4 v9, 0x0

    goto :goto_c

    :cond_e
    move/from16 v15, v26

    const/4 v6, -0x1

    goto :goto_b

    :goto_c
    move v6, v15

    goto :goto_a

    :goto_d
    monitor-exit v12

    throw v0

    :cond_f
    if-nez v5, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_e

    :cond_10
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v3, "empty_response_body"

    invoke-direct {v0, v3}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_e
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_f

    :cond_12
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v3, "request_not_successful"

    invoke-direct {v0, v3}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_10

    :cond_14
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v3, "unknown"

    invoke-direct {v0, v3}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_15
    :goto_10
    if-eqz v5, :cond_16

    :try_start_5
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v5}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_11

    :catch_2
    move-exception v0

    iget-object v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v3, "FileDownloader"

    invoke-interface {v2, v3, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_11
    :try_start_6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_13

    :catch_3
    move-exception v0

    move-object v2, v0

    :goto_12
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v3, "FileDownloader"

    invoke-interface {v0, v3, v2}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->incrementActionCompletedCount()V

    goto :goto_16

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto :goto_17

    :catch_4
    move-exception v0

    move-object v7, v5

    :goto_14
    :try_start_7
    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileDownloader downloads slice "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->throwable:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_18

    :try_start_8
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v5}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_15

    :catch_5
    move-exception v0

    iget-object v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v3, "FileDownloader"

    invoke-interface {v2, v3, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_15
    if-eqz v7, :cond_17

    :try_start_9
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_13

    :catch_6
    move-exception v0

    move-object v2, v0

    goto :goto_12

    :goto_16
    return-void

    :goto_17
    if-eqz v5, :cond_19

    :try_start_a
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v5}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_18

    :catch_7
    move-exception v0

    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v4, "FileDownloader"

    invoke-interface {v3, v4, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    :goto_18
    if-eqz v7, :cond_1a

    :try_start_b
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_19

    :catch_8
    move-exception v0

    move-object v3, v0

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v4, "FileDownloader"

    invoke-interface {v0, v4, v3}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_19
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->incrementActionCompletedCount()V

    throw v2
.end method

.method private final getAverageDownloadedBytesPerSecond()J
    .locals 4

    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->averageDownloadedBytesPerSecond:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method private final getChuckInfo(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/FileSliceInfo;
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-interface {v0, p1, v1, v2}, Lcom/tonyodev/fetch2core/Downloader;->getFileSlicingCount(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;J)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-static {p1, v0, v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getFileSliceInfo(IJ)Lcom/tonyodev/fetch2core/FileSliceInfo;

    move-result-object p1

    return-object p1
.end method

.method private final getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloadInfo$delegate:Lnf/I;

    invoke-interface {v0}, Lnf/I;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    return-object v0
.end method

.method private final getFileSliceList(ZLcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/tonyodev/fetch2core/Downloader$ServerRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2core/FileSlice;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/StorageResolver;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v1

    iget-object v2, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v1

    iget-object v2, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tonyodev/fetch2/util/FetchUtils;->getPreviousSliceCount(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    iget-boolean v3, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-nez v3, :cond_3

    move-object/from16 v3, p2

    invoke-direct {v0, v3}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getChuckInfo(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/FileSliceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getSlicingCount()I

    move-result v4

    if-eq v1, v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v1

    iget-object v4, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v3}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getSlicingCount()I

    move-result v4

    iget-object v5, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/tonyodev/fetch2/util/FetchUtils;->saveCurrentSliceCount(IILjava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getSlicingCount()I

    move-result v4

    if-gt v2, v4, :cond_5

    const-wide/16 v5, 0x0

    :goto_0
    move-wide v10, v5

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getSlicingCount()I

    move-result v5

    if-ne v5, v2, :cond_2

    iget-wide v5, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getBytesPerFileSlice()J

    move-result-wide v5

    add-long/2addr v5, v10

    :goto_1
    new-instance v14, Lcom/tonyodev/fetch2core/FileSlice;

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v7

    iget-object v9, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v7, v2, v9}, Lcom/tonyodev/fetch2/util/FetchUtils;->getSavedDownloadedInfo(IILjava/lang/String;)J

    move-result-wide v15

    move-object v7, v14

    move v9, v2

    move-wide v12, v5

    move-object/from16 p1, v14

    move-wide v14, v15

    invoke-direct/range {v7 .. v15}, Lcom/tonyodev/fetch2core/FileSlice;-><init>(IIJJJ)V

    iget-wide v7, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    move-object/from16 v7, p1

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v2, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eq v1, v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v1

    iget-object v3, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v1

    iget-object v3, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/tonyodev/fetch2/util/FetchUtils;->saveCurrentSliceCount(IILjava/lang/String;)V

    new-instance v1, Lcom/tonyodev/fetch2core/FileSlice;

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v5

    iget-wide v9, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v3

    iget-object v4, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/tonyodev/fetch2/util/FetchUtils;->getSavedDownloadedInfo(IILjava/lang/String;)J

    move-result-wide v11

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lcom/tonyodev/fetch2core/FileSlice;-><init>(IIJJJ)V

    iget-wide v2, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-static {v1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method private final incrementActionCompletedCount()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->actionsCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->actionsCounter:I

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

.method private final isDownloadComplete()Z
    .locals 4

    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    iget-wide v2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final setIsTotalUnknown(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    :cond_0
    return-void
.end method

.method private final throwExceptionIfFound()V
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method private final waitAndPerformProgressReporting()V
    .locals 20

    move-object/from16 v1, p0

    iget-wide v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move-wide v10, v4

    move-wide v12, v6

    :goto_0
    iget v0, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->actionsCounter:I

    iget v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->actionsTotal:I

    if-eq v0, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v4, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v0, v4, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    move-wide v4, v12

    invoke-static/range {v4 .. v9}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->hasIntervalTimeElapsed(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    sub-long/2addr v4, v2

    iget-object v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

    long-to-double v3, v4

    invoke-virtual {v2, v3, v4}, Lcom/tonyodev/fetch2core/AverageCalculator;->add(D)V

    iget-object v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lcom/tonyodev/fetch2core/AverageCalculator;->getMovingAverageWithWeightOnRecentValues$default(Lcom/tonyodev/fetch2core/AverageCalculator;IILjava/lang/Object;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->averageDownloadedBytesPerSecond:D

    iget-wide v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    iget-wide v6, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->calculateEstimatedTimeRemainingInMilliseconds(JJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    iget-wide v2, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->progressReportingIntervalMillis:J

    move-wide v4, v10

    invoke-static/range {v4 .. v9}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->hasIntervalTimeElapsed(JJJ)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v16

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v18

    invoke-interface/range {v14 .. v19}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    :cond_2
    sget-object v5, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v10, v4

    goto :goto_3

    :goto_2
    monitor-exit v4

    throw v0

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v12, v4

    :cond_4
    :try_start_1
    iget-wide v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->progressReportingIntervalMillis:J

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v4, v1, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v5, "FileDownloader"

    invoke-interface {v4, v5, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public getCompletedDownload()Z
    .locals 1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    return v0
.end method

.method public getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->delegate:Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    return-object v0
.end method

.method public getDownload()Lcom/tonyodev/fetch2/Download;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInterrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->interrupted:Z

    return v0
.end method

.method public getTerminated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->terminated:Z

    return v0
.end method

.method public run()V
    .locals 15

    const-string v0, "FileDownloader"

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    iget-object v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    iget-object v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    const/4 v7, 0x2

    invoke-static {v6, v4, v7, v4}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;ILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/tonyodev/fetch2core/Downloader;->getHeadRequestMethodSupported(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    const-string v6, "HEAD"

    invoke-static {v5, v6}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_16

    :catch_0
    move-exception v5

    goto/16 :goto_10

    :cond_0
    iget-object v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-static {v5, v4, v7, v4}, Lcom/tonyodev/fetch2/util/FetchUtils;->getRequestForDownload$default(Lcom/tonyodev/fetch2/Download;Ljava/lang/String;ILjava/lang/Object;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v5

    :goto_0
    iget-object v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v7, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->interruptMonitor:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$interruptMonitor$1;

    invoke-interface {v6, v5, v7}, Lcom/tonyodev/fetch2core/Downloader;->execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->setIsTotalUnknown(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    :cond_1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "empty_response_body"

    const-wide/16 v8, 0x0

    if-nez v6, :cond_b

    :try_start_1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v6

    if-ne v6, v3, :cond_b

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/Downloader$Response;->getContentLength()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    iget-boolean v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-nez v6, :cond_3

    iget-wide v10, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    cmp-long v6, v10, v8

    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/tonyodev/fetch2/exception/FetchException;

    invoke-direct {v5, v7}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    :goto_1
    iput-wide v8, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    iget-wide v10, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v6, v10, v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    iget-wide v10, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v6, v10, v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/Downloader$Response;->getAcceptsRanges()Z

    move-result v6

    invoke-direct {p0, v6, v5}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getFileSliceList(ZLcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileSlices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalDownloadBlocks:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v6, v4}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v6

    :try_start_3
    iget-object v7, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v7, v0, v6}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileSlices:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/tonyodev/fetch2core/FileSlice;

    invoke-virtual {v11}, Lcom/tonyodev/fetch2core/FileSlice;->isDownloaded()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    iget-wide v10, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v6, v10, v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    iget-wide v10, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v6, v10, v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    iget-object v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileSlices:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v6, v11}, Lpf/I;->d0(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tonyodev/fetch2core/FileSlice;

    new-instance v12, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-direct {v12}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;-><init>()V

    invoke-virtual {v11}, Lcom/tonyodev/fetch2core/FileSlice;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadId(I)V

    invoke-virtual {v11}, Lcom/tonyodev/fetch2core/FileSlice;->getPosition()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setBlockPosition(I)V

    invoke-virtual {v11}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    invoke-virtual {v11}, Lcom/tonyodev/fetch2core/FileSlice;->getStartBytes()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setStartByte(J)V

    invoke-virtual {v11}, Lcom/tonyodev/fetch2core/FileSlice;->getEndBytes()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    invoke-interface {v10, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v11

    iget v12, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {v6, v11, v10, v12}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V

    :cond_7
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v12

    iget v13, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {v11, v12, v10, v13}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    goto :goto_5

    :cond_9
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    iput-object v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_a
    invoke-direct {p0, v5, v7}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloadSliceFiles(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->waitAndPerformProgressReporting()V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    goto :goto_8

    :cond_b
    if-nez v4, :cond_d

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->isDownloadComplete()Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_6

    :cond_c
    new-instance v5, Lcom/tonyodev/fetch2/exception/FetchException;

    invoke-direct {v5, v7}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d
    :goto_6
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->isDownloadComplete()Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_7

    :cond_e
    new-instance v5, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v6, "request_not_successful"

    invoke-direct {v5, v6}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    :goto_7
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->isDownloadComplete()Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_8

    :cond_10
    new-instance v5, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v6, "unknown"

    invoke-direct {v5, v6}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_11
    :goto_8
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->throwExceptionIfFound()V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->isDownloadComplete()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    :cond_12
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v8

    if-eqz v8, :cond_1c

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v9

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v10

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v12

    invoke-interface/range {v8 .. v13}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    goto/16 :goto_b

    :cond_13
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->isDownloadComplete()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-boolean v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->totalUnknown:Z

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileSlices:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tonyodev/fetch2core/FileSlice;

    invoke-virtual {v6}, Lcom/tonyodev/fetch2core/FileSlice;->getDownloaded()J

    move-result-wide v6

    add-long/2addr v8, v6

    goto :goto_9

    :cond_14
    iget-wide v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    cmp-long v5, v8, v5

    if-eqz v5, :cond_16

    new-instance v5, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v6, "download_incomplete"

    invoke-direct {v5, v6}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->throwExceptionIfFound()V

    goto :goto_a

    :cond_15
    iget-wide v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    iput-wide v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    :cond_16
    :goto_a
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    :cond_17
    iget-boolean v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->hashCheckingEnabled:Z

    if-eqz v5, :cond_1a

    if-eqz v4, :cond_19

    iget-object v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/Downloader$Response;->getRequest()Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tonyodev/fetch2core/Downloader$Response;->getHash()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/tonyodev/fetch2core/Downloader;->verifyContentHash(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->copy()Lcom/tonyodev/fetch2/Download;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v8

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v10

    invoke-interface/range {v6 .. v11}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    :cond_18
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-interface {v6, v5}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onComplete(Lcom/tonyodev/fetch2/Download;)V

    goto/16 :goto_b

    :cond_19
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    new-instance v5, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v6, "invalid content hash"

    invoke-direct {v5, v6}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1a
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->fileTempDir:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/tonyodev/fetch2/util/FetchUtils;->deleteAllInFolderForId(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    iget-wide v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->copy()Lcom/tonyodev/fetch2/Download;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v6

    if-eqz v6, :cond_1b

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v8

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v10

    invoke-interface/range {v6 .. v11}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    :cond_1b
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-interface {v6, v5}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onComplete(Lcom/tonyodev/fetch2/Download;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1c
    :goto_b
    :try_start_4
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v2, v0, v1}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    :goto_c
    :try_start_5
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_d

    :catch_3
    move-exception v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v2, v0, v1}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_d
    if-eqz v4, :cond_1f

    :try_start_6
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v1, v4}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_f

    :catch_4
    move-exception v1

    :goto_e
    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v2, v0, v1}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_f
    invoke-virtual {p0, v3}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->setTerminated(Z)V

    goto/16 :goto_15

    :goto_10
    :try_start_7
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v6

    if-nez v6, :cond_24

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v6

    if-nez v6, :cond_24

    iget-object v6, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileDownloader download:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromThrowable(Ljava/lang/Throwable;)Lcom/tonyodev/fetch2/Error;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    if-eqz v4, :cond_20

    invoke-static {v4}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->copyDownloadResponseNoStream(Lcom/tonyodev/fetch2core/Downloader$Response;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tonyodev/fetch2/Error;->setHttpResponse(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    :cond_20
    iget-boolean v7, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->retryOnNetworkGain:Z

    if-eqz v7, :cond_23

    iget-object v7, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v7}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    xor-int/2addr v7, v3

    move v8, v3

    :goto_11
    const/16 v9, 0xb

    if-ge v8, v9, :cond_22

    const-wide/16 v9, 0x1f4

    :try_start_8
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v9, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v9}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v9

    if-nez v9, :cond_21

    move v7, v3

    goto :goto_12

    :cond_21
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :catch_5
    move-exception v8

    iget-object v9, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v9, v0, v8}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_12
    if-eqz v7, :cond_23

    sget-object v6, Lcom/tonyodev/fetch2/Error;->NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

    :cond_23
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    iget-wide v8, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloaded:J

    invoke-virtual {v7, v8, v9}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    iget-wide v8, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->total:J

    invoke-virtual {v7, v8, v9}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getTerminated()Z

    move-result v7

    if-nez v7, :cond_24

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getInterrupted()Z

    move-result v7

    if-nez v7, :cond_24

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v2

    invoke-interface {v1, v2, v6, v5}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_24
    :try_start_a
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_25

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_13

    :catch_6
    move-exception v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v2, v0, v1}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_25
    :goto_13
    :try_start_b
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_14

    :catch_7
    move-exception v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v2, v0, v1}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26
    :goto_14
    if-eqz v4, :cond_1f

    :try_start_c
    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v1, v4}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_f

    :catch_8
    move-exception v1

    goto/16 :goto_e

    :goto_15
    return-void

    :goto_16
    :try_start_d
    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_27

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_17

    :catch_9
    move-exception v2

    iget-object v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v5, v0, v2}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_27
    :goto_17
    :try_start_e
    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->outputResourceWrapper:Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_18

    :catch_a
    move-exception v2

    iget-object v5, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v5, v0, v2}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    :goto_18
    if-eqz v4, :cond_29

    :try_start_f
    iget-object v2, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v2, v4}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_19

    :catch_b
    move-exception v2

    iget-object v4, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v4, v0, v2}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_29
    :goto_19
    invoke-virtual {p0, v3}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->setTerminated(Z)V

    throw v1
.end method

.method public setDelegate(Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;)V
    .locals 0
    .param p1    # Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->delegate:Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    return-void
.end method

.method public setInterrupted(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    instance-of v1, v0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->setInterrupted(Z)V

    :goto_1
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->interrupted:Z

    return-void
.end method

.method public setTerminated(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    instance-of v1, v0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->setInterrupted(Z)V

    :goto_1
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->terminated:Z

    return-void
.end method
