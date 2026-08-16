.class final Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$downloadInfo$2;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;-><init>(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Downloader;JLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZLjava/lang/String;ZLcom/tonyodev/fetch2core/StorageResolver;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/a<",
        "Lcom/tonyodev/fetch2/database/DownloadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$downloadInfo$2;->this$0:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$downloadInfo$2;->this$0:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->access$getInitialDownload$p(Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;)Lcom/tonyodev/fetch2/Download;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$downloadInfo$2;->this$0:Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl;->getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;->toDownloadInfo(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/downloader/ParallelFileDownloaderImpl$downloadInfo$2;->invoke()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method
