.class public interface abstract Lcom/tonyodev/fetch2/helper/PriorityListProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# virtual methods
.method public abstract getDownloadConcurrentLimit()I
.end method

.method public abstract getGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPriorityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isStopped()Z
.end method

.method public abstract pause()V
.end method

.method public abstract resetBackOffTime()V
.end method

.method public abstract resume()V
.end method

.method public abstract sendBackOffResetSignal()V
.end method

.method public abstract setDownloadConcurrentLimit(I)V
.end method

.method public abstract setGlobalNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V
    .param p1    # Lcom/tonyodev/fetch2/NetworkType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
