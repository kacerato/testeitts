.class public final Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/downloader/FileDownloader;


# instance fields
.field private averageDownloadedBytesPerSecond:D

.field private delegate:Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field private final hashCheckingEnabled:Z

.field private final initialDownload:Lcom/tonyodev/fetch2/Download;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interruptMonitor:Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$interruptMonitor$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile interrupted:Z

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

.field private final preAllocateFileOnCreation:Z

.field private final progressReportingIntervalMillis:J

.field private final retryOnNetworkGain:Z

.field private final storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile terminated:Z

.field private volatile total:J

.field private final totalDownloadBlocks:I

.field private volatile totalUnknown:Z


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;JLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZZLcom/tonyodev/fetch2core/StorageResolver;Z)V
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
    .param p9    # Lcom/tonyodev/fetch2core/StorageResolver;
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
            "ZZ",
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

    const-string v0, "storageResolver"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    iput-object p2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    iput-wide p3, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->progressReportingIntervalMillis:J

    iput-object p5, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    iput-object p6, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    iput-boolean p7, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->retryOnNetworkGain:Z

    iput-boolean p8, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->hashCheckingEnabled:Z

    iput-object p9, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    iput-boolean p10, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->preAllocateFileOnCreation:Z

    const-wide/16 p2, -0x1

    iput-wide p2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    iput-wide p2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    new-instance p2, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$downloadInfo$2;

    invoke-direct {p2, p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$downloadInfo$2;-><init>(Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;)V

    invoke-static {p2}, Lnf/K;->a(LMf/a;)Lnf/I;

    move-result-object p2

    iput-object p2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadInfo$delegate:Lnf/I;

    new-instance p2, Lcom/tonyodev/fetch2core/AverageCalculator;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lcom/tonyodev/fetch2core/AverageCalculator;-><init>(I)V

    iput-object p2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

    new-instance p2, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-direct {p2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setBlockPosition(I)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadId(I)V

    iput-object p2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iput p3, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    new-instance p1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$interruptMonitor$1;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$interruptMonitor$1;-><init>(Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->interruptMonitor:Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$interruptMonitor$1;

    return-void
.end method

.method public static final synthetic access$getInitialDownload$p(Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;)Lcom/tonyodev/fetch2/Download;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    return-object p0
.end method

.method private final getAverageDownloadedBytesPerSecond()J
    .locals 4

    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->averageDownloadedBytesPerSecond:D

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

.method private final getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadInfo$delegate:Lnf/I;

    invoke-interface {v0}, Lnf/I;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    return-object v0
.end method

.method private final getRequest()Lcom/tonyodev/fetch2core/Downloader$ServerRequest;
    .locals 15

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lpf/o0;->J0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getFile()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getTag()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getIdentifier()J

    move-result-wide v8

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v11

    const-string v13, ""

    const/4 v14, 0x1

    const-string v10, "GET"

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Lcom/tonyodev/fetch2core/Extras;ZLjava/lang/String;I)V

    return-object v0
.end method

.method private final isDownloadComplete()Z
    .locals 4

    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalUnknown:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    iget-wide v2, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

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

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalUnknown:Z

    :cond_0
    return-void
.end method

.method private final verifyDownloadCompletion(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 9

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    iput-wide v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->hashCheckingEnabled:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->getRequest()Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Downloader$Response;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/tonyodev/fetch2core/Downloader;->verifyContentHash(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget v4, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {p1, v0, v3, v4}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    :cond_1
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    iget-wide v3, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {p1, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->copy()Lcom/tonyodev/fetch2/Download;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v4

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v5

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v7

    invoke-interface/range {v3 .. v8}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    :cond_2
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onComplete(Lcom/tonyodev/fetch2/Download;)V

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v0, "invalid content hash"

    invoke-direct {p1, v0}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    :cond_5
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget v4, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {p1, v0, v3, v4}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    :cond_6
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    iget-wide v3, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {p1, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->copy()Lcom/tonyodev/fetch2/Download;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v4

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v5

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v7

    invoke-interface/range {v3 .. v8}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    :cond_7
    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onComplete(Lcom/tonyodev/fetch2/Download;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private final writeToOutput(Ljava/io/BufferedInputStream;Lcom/tonyodev/fetch2core/OutputResourceWrapper;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-wide v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    new-array v6, v3, [B

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {v1, v6, v11, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v12

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, -0x1

    if-eq v12, v13, :cond_8

    if-eqz v2, :cond_1

    invoke-virtual {v2, v6, v11, v12}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;->write([BII)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v13

    if-nez v13, :cond_0

    iget-wide v13, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    int-to-long v11, v12

    add-long/2addr v13, v11

    iput-wide v13, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v11

    iget-wide v12, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v11, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v11

    iget-wide v12, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v11, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    iget-object v11, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v12, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v11, v12, v13}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    iget-object v11, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v12, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v11, v12, v13}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    move-wide v12, v9

    invoke-static/range {v12 .. v17}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->hasIntervalTimeElapsed(JJJ)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-wide v12, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    sub-long/2addr v12, v4

    iget-object v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

    long-to-double v12, v12

    invoke-virtual {v4, v12, v13}, Lcom/tonyodev/fetch2core/AverageCalculator;->add(D)V

    iget-object v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->movingAverageCalculator:Lcom/tonyodev/fetch2core/AverageCalculator;

    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v4, v13, v5, v12}, Lcom/tonyodev/fetch2core/AverageCalculator;->getMovingAverageWithWeightOnRecentValues$default(Lcom/tonyodev/fetch2core/AverageCalculator;IILjava/lang/Object;)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->averageDownloadedBytesPerSecond:D

    iget-wide v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    iget-wide v12, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v22

    move-wide/from16 v18, v4

    move-wide/from16 v20, v12

    invoke-static/range {v18 .. v23}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->calculateEstimatedTimeRemainingInMilliseconds(JJJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    iget-wide v4, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    iget-wide v12, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->progressReportingIntervalMillis:J

    move-wide/from16 v16, v12

    move-wide v12, v7

    invoke-static/range {v12 .. v17}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->hasIntervalTimeElapsed(JJJ)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v7, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v12, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v7, v12, v13}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v8

    iget-object v12, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget v13, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {v7, v8, v12, v13}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    iget-wide v12, v0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {v7, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v18

    if-eqz v18, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v20

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v22

    invoke-interface/range {v18 .. v23}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    :cond_6
    if-eqz v11, :cond_7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    :cond_7
    const/4 v11, 0x0

    invoke-virtual {v1, v6, v11, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v12

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;->flush()V

    :cond_9
    return-void
.end method


# virtual methods
.method public getCompletedDownload()Z
    .locals 1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    return v0
.end method

.method public getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->delegate:Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    return-object v0
.end method

.method public getDownload()Lcom/tonyodev/fetch2/Download;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInterrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->interrupted:Z

    return v0
.end method

.method public getTerminated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->terminated:Z

    return v0
.end method

.method public run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "FileDownloader"

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v7, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v7, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getRequest()Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object v0

    iget-object v7, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->interruptMonitor:Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl$interruptMonitor$1;

    invoke-interface {v7, v0, v8}, Lcom/tonyodev/fetch2core/Downloader;->execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v7, :cond_0

    :try_start_1
    invoke-direct {v1, v7}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->setIsTotalUnknown(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v8, v6

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    move-object v8, v6

    move-object v9, v8

    :goto_0
    move-object v6, v7

    :goto_1
    move-object v7, v0

    goto/16 :goto_14

    :cond_0
    :goto_2
    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$Response;->isSuccessful()Z

    move-result v9

    goto :goto_3

    :cond_1
    move v9, v8

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v10

    if-nez v10, :cond_b

    if-eqz v7, :cond_b

    if-eqz v9, :cond_b

    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$Response;->getCode()I

    move-result v9

    const-wide/16 v10, 0x0

    const/16 v12, 0xce

    if-eq v9, v12, :cond_3

    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$Response;->getAcceptsRanges()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_4

    :cond_2
    move-wide v13, v10

    goto :goto_5

    :cond_3
    :goto_4
    iget-object v9, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v9}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v13

    :goto_5
    iput-wide v13, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$Response;->getContentLength()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$Response;->getCode()I

    move-result v9

    if-ne v9, v12, :cond_4

    iget-object v9, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileDownloader resuming Download "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    goto :goto_6

    :cond_4
    iget-object v9, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileDownloader starting Download "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v9

    iget-wide v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v9, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v9

    iget-wide v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v9, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    iget-object v9, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Lcom/tonyodev/fetch2core/StorageResolver;->fileExists(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->initialDownload:Lcom/tonyodev/fetch2/Download;

    invoke-interface {v13}, Lcom/tonyodev/fetch2/Download;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v13

    sget-object v14, Lcom/tonyodev/fetch2/EnqueueAction;->INCREMENT_FILE_NAME:Lcom/tonyodev/fetch2/EnqueueAction;

    if-ne v13, v14, :cond_5

    move v8, v5

    :cond_5
    invoke-interface {v9, v12, v8}, Lcom/tonyodev/fetch2core/StorageResolver;->createFile(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_6
    iget-boolean v8, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->preAllocateFileOnCreation:Z

    if-eqz v8, :cond_7

    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/Downloader$ServerRequest;->getFile()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v12

    invoke-interface {v8, v9, v12, v13}, Lcom/tonyodev/fetch2core/StorageResolver;->preAllocateFile(Ljava/lang/String;J)Z

    :cond_7
    iget-object v8, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-interface {v8, v0}, Lcom/tonyodev/fetch2core/StorageResolver;->getRequestOutputResourceWrapper(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Lcom/tonyodev/fetch2core/OutputResourceWrapper;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v8, v10, v11}, Lcom/tonyodev/fetch2core/OutputResourceWrapper;->setWriteOffset(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v9, v0}, Lcom/tonyodev/fetch2core/Downloader;->getRequestBufferSize(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)I

    move-result v0

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Lcom/tonyodev/fetch2core/Downloader$Response;->getByteStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v9, v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    iget-wide v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v6, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    iget-wide v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v6, v12, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    iget-object v6, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v6, v12, v13}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    iget-object v6, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-virtual {v6, v10, v11}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setStartByte(J)V

    iget-object v6, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v6, v10, v11}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v10

    iget-object v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-static {v11}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iget v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {v6, v10, v11, v12}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v3, v0

    :goto_7
    move-object v6, v9

    goto/16 :goto_1a

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_8
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v10

    iget-object v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {v6, v10, v11, v12}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    :cond_9
    invoke-direct {v1, v9, v8, v0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->writeToOutput(Ljava/io/BufferedInputStream;Lcom/tonyodev/fetch2core/OutputResourceWrapper;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_9
    move-object v6, v7

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    move-object v3, v0

    goto/16 :goto_1a

    :catch_2
    move-exception v0

    move-object v9, v6

    goto/16 :goto_0

    :cond_a
    move-object v9, v6

    goto :goto_9

    :cond_b
    if-nez v7, :cond_d

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_a

    :cond_c
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v8, "empty_response_body"

    invoke-direct {v0, v8}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_a
    if-nez v9, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_b

    :cond_e
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v8, "request_not_successful"

    invoke-direct {v0, v8}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_11

    iget-wide v8, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_c

    :cond_10
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v8, "unknown"

    invoke-direct {v0, v8}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_11
    :goto_c
    move-object v8, v6

    move-object v9, v8

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object v7, v6

    move-object v8, v7

    goto/16 :goto_1a

    :catch_3
    move-exception v0

    move-object v7, v0

    move-object v8, v6

    move-object v9, v8

    goto/16 :goto_14

    :cond_12
    move-object v8, v6

    move-object v9, v8

    :goto_d
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v10, v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v10, v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v10, v11}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v10, v11}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object v3, v0

    move-object v7, v6

    goto/16 :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_1

    :cond_13
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v7

    iget-object v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->totalDownloadBlocks:I

    invoke-interface {v0, v7, v10, v11}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v10, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->estimatedTimeRemainingInMilliseconds:J

    invoke-virtual {v0, v10, v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getAverageDownloadedBytesPerSecond()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v12

    if-eqz v12, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEtaInMilliSeconds()J

    move-result-wide v14

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloadedBytesPerSecond()J

    move-result-wide v16

    invoke-interface/range {v12 .. v17}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    goto :goto_f

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->isDownloadComplete()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz v6, :cond_16

    invoke-direct {v1, v6}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->verifyDownloadCompletion(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_16
    :goto_f
    if-eqz v9, :cond_17

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_10

    :catch_5
    move-exception v0

    move-object v3, v0

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v0, v2, v3}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_10
    if-eqz v6, :cond_18

    :try_start_7
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v6}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_11
    if-eqz v8, :cond_19

    :try_start_8
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_13

    :catch_7
    move-exception v0

    move-object v3, v0

    :goto_12
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v0, v2, v3}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    :goto_13
    invoke-virtual {v1, v5}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->setTerminated(Z)V

    goto/16 :goto_19

    :goto_14
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownload()Lcom/tonyodev/fetch2/Download;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileDownloader download:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10, v7}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v7}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromThrowable(Ljava/lang/Throwable;)Lcom/tonyodev/fetch2/Error;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    if-eqz v6, :cond_1a

    invoke-static {v6}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->copyDownloadResponseNoStream(Lcom/tonyodev/fetch2core/Downloader$Response;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tonyodev/fetch2/Error;->setHttpResponse(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    :cond_1a
    iget-boolean v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->retryOnNetworkGain:Z

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    xor-int/lit8 v11, v0, 0x1

    move v0, v5

    :goto_15
    const/16 v12, 0xb

    if-ge v0, v12, :cond_1c

    const-wide/16 v12, 0x1f4

    :try_start_a
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    iget-object v12, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v12}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v12

    if-nez v12, :cond_1b

    move v11, v5

    goto :goto_16

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :catch_8
    move-exception v0

    move-object v12, v0

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v0, v2, v12}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_16
    if-eqz v11, :cond_1d

    sget-object v10, Lcom/tonyodev/fetch2/Error;->NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v11, v12}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v11, v12}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloaded:J

    invoke-virtual {v0, v11, v12}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloadBlock:Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    iget-wide v11, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->total:J

    invoke-virtual {v0, v11, v12}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getTerminated()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDownloadInfo()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v3

    invoke-interface {v0, v3, v10, v7}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_1e
    if-eqz v9, :cond_1f

    :try_start_c
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_17

    :catch_9
    move-exception v0

    move-object v3, v0

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v0, v2, v3}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_17
    if-eqz v6, :cond_20

    :try_start_d
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v6}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_18

    :catch_a
    move-exception v0

    iget-object v3, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v3, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_18
    if-eqz v8, :cond_19

    :try_start_e
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto/16 :goto_13

    :catch_b
    move-exception v0

    move-object v3, v0

    goto/16 :goto_12

    :goto_19
    return-void

    :goto_1a
    if-eqz v6, :cond_21

    :try_start_f
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_1b

    :catch_c
    move-exception v0

    move-object v4, v0

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v0, v2, v4}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    :goto_1b
    if-eqz v7, :cond_22

    :try_start_10
    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->downloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, v7}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    goto :goto_1c

    :catch_d
    move-exception v0

    iget-object v4, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v4, v2, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_1c
    if-eqz v8, :cond_23

    :try_start_11
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    goto :goto_1d

    :catch_e
    move-exception v0

    move-object v4, v0

    iget-object v0, v1, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v0, v2, v4}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    :goto_1d
    invoke-virtual {v1, v5}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->setTerminated(Z)V

    throw v3
.end method

.method public setDelegate(Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;)V
    .locals 0
    .param p1    # Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->delegate:Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    return-void
.end method

.method public setInterrupted(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

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
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->interrupted:Z

    return-void
.end method

.method public setTerminated(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

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
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/downloader/SequentialFileDownloaderImpl;->terminated:Z

    return-void
.end method
