.class public interface abstract Lcom/tonyodev/fetch2core/DownloadBlock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract copy()Lcom/tonyodev/fetch2core/DownloadBlock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getBlockPosition()I
.end method

.method public abstract getDownloadId()I
.end method

.method public abstract getDownloadedBytes()J
.end method

.method public abstract getEndByte()J
.end method

.method public abstract getProgress()I
.end method

.method public abstract getStartByte()J
.end method
