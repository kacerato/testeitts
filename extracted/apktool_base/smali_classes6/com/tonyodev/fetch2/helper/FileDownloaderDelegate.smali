.class public final Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;


# instance fields
.field private final downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchListener:Lcom/tonyodev/fetch2/FetchListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final globalAutoRetryMaxAttempts:I

.field private volatile interrupted:Z

.field private final retryOnNetworkGain:Z


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;Lcom/tonyodev/fetch2/FetchListener;ZI)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/FetchListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downloadInfoUpdater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    iput-object p2, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    iput-boolean p3, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->retryOnNetworkGain:Z

    iput p4, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->globalAutoRetryMaxAttempts:I

    return-void
.end method


# virtual methods
.method public getInterrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->interrupted:Z

    return v0
.end method

.method public getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public onComplete(Lcom/tonyodev/fetch2/Download;)V
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/FetchListener;->onCompleted(Lcom/tonyodev/fetch2/Download;)V

    :cond_0
    return-void
.end method

.method public onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/DownloadBlock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tonyodev/fetch2/FetchListener;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    .locals 5
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/Error;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->globalAutoRetryMaxAttempts:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getAutoRetryMaxAttempts()I

    move-result v0

    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    iget-boolean v2, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->retryOnNetworkGain:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v2

    sget-object v4, Lcom/tonyodev/fetch2/Error;->NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

    if-ne v2, v4, :cond_1

    sget-object p2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    iget-object p2, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {p2, v1}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    iget-object p2, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    invoke-interface {p2, p1, v3}, Lcom/tonyodev/fetch2/FetchListener;->onQueued(Lcom/tonyodev/fetch2/Download;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryAttempts()I

    move-result v2

    if-ge v2, v0, :cond_2

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getAutoRetryAttempts()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {v1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    sget-object p2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    iget-object p2, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {p2, v1}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    iget-object p2, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    invoke-interface {p2, p1, v3}, Lcom/tonyodev/fetch2/FetchListener;->onQueued(Lcom/tonyodev/fetch2/Download;Z)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/tonyodev/fetch2/Status;->FAILED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tonyodev/fetch2/FetchListener;->onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onProgress(Lcom/tonyodev/fetch2/Download;JJ)V
    .locals 7
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/tonyodev/fetch2/FetchListener;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    :cond_0
    return-void
.end method

.method public onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Download;",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2core/DownloadBlock;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadBlocks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->fetchListener:Lcom/tonyodev/fetch2/FetchListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tonyodev/fetch2/FetchListener;->onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public saveDownloadProgress(Lcom/tonyodev/fetch2/Download;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->getInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    sget-object v0, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    :cond_0
    return-void
.end method

.method public setInterrupted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/helper/FileDownloaderDelegate;->interrupted:Z

    return-void
.end method
