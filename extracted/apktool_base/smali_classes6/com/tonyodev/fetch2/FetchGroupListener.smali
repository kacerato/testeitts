.class public interface abstract Lcom/tonyodev/fetch2/FetchGroupListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/FetchListener;


# virtual methods
.method public abstract onAdded(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onCancelled(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onCompleted(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onDeleted(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onDownloadBlockUpdated(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;ILcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/DownloadBlock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onError(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;Lcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/Error;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onPaused(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onProgress(ILcom/tonyodev/fetch2/Download;JJLcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onQueued(ILcom/tonyodev/fetch2/Download;ZLcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onRemoved(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onResumed(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onStarted(ILcom/tonyodev/fetch2/Download;Ljava/util/List;ILcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2/Download;",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2core/DownloadBlock;",
            ">;I",
            "Lcom/tonyodev/fetch2/FetchGroup;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onWaitingNetwork(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/FetchGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
