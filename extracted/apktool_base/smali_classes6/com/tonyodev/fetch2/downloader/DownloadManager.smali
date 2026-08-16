.class public interface abstract Lcom/tonyodev/fetch2/downloader/DownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract canAccommodateNewDownload()Z
.end method

.method public abstract cancel(I)Z
.end method

.method public abstract cancelAll()V
.end method

.method public abstract contains(I)Z
.end method

.method public abstract getActiveDownloadCount()I
.end method

.method public abstract getActiveDownloads()Ljava/util/List;
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
.end method

.method public abstract getActiveDownloadsIds()Ljava/util/List;
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
.end method

.method public abstract getConcurrentLimit()I
.end method

.method public abstract getDownloadFileTempDir(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getFileDownloaderDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getNewFileDownloaderForDownload(Lcom/tonyodev/fetch2/Download;)Lcom/tonyodev/fetch2/downloader/FileDownloader;
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isClosed()Z
.end method

.method public abstract setConcurrentLimit(I)V
.end method

.method public abstract start(Lcom/tonyodev/fetch2/Download;)Z
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
