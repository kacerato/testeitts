.class public interface abstract Lcom/tonyodev/fetch2/Download;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract copy()Lcom/tonyodev/fetch2/Download;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getAutoRetryAttempts()I
.end method

.method public abstract getAutoRetryMaxAttempts()I
.end method

.method public abstract getCreated()J
.end method

.method public abstract getDownloadOnEnqueue()Z
.end method

.method public abstract getDownloaded()J
.end method

.method public abstract getDownloadedBytesPerSecond()J
.end method

.method public abstract getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getError()Lcom/tonyodev/fetch2/Error;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getEtaInMilliSeconds()J
.end method

.method public abstract getExtras()Lcom/tonyodev/fetch2core/Extras;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getFile()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getFileUri()Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getGroup()I
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getId()I
.end method

.method public abstract getIdentifier()J
.end method

.method public abstract getNamespace()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPriority()Lcom/tonyodev/fetch2/Priority;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getProgress()I
.end method

.method public abstract getRequest()Lcom/tonyodev/fetch2/Request;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getStatus()Lcom/tonyodev/fetch2/Status;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getTag()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getTotal()J
.end method

.method public abstract getUrl()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
