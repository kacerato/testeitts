.class public interface abstract Lcom/tonyodev/fetch2/downloader/FileDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
    }
.end annotation


# virtual methods
.method public abstract getCompletedDownload()Z
.end method

.method public abstract getDelegate()Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getDownload()Lcom/tonyodev/fetch2/Download;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getInterrupted()Z
.end method

.method public abstract getTerminated()Z
.end method

.method public abstract setDelegate(Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;)V
    .param p1    # Lcom/tonyodev/fetch2/downloader/FileDownloader$Delegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setInterrupted(Z)V
.end method

.method public abstract setTerminated(Z)V
.end method
