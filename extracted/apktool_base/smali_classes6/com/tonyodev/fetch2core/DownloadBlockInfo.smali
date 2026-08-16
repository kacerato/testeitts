.class public final Lcom/tonyodev/fetch2core/DownloadBlockInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2core/DownloadBlock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;


# instance fields
.field private blockPosition:I

.field private downloadId:I

.field private downloadedBytes:J

.field private endByte:J

.field private startByte:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->CREATOR:Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->downloadId:I

    iput v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->blockPosition:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->startByte:J

    iput-wide v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->endByte:J

    iput-wide v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->downloadedBytes:J

    return-void
.end method


# virtual methods
.method public copy()Lcom/tonyodev/fetch2core/DownloadBlock;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-direct {v0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;-><init>()V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadId(I)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getBlockPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setBlockPosition(I)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getStartByte()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setStartByte(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getEndByte()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadedBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_8

    check-cast p1, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadId()I

    move-result v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadId()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getBlockPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getBlockPosition()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getStartByte()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getStartByte()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getEndByte()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getEndByte()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadedBytes()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadedBytes()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0

    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.tonyodev.fetch2core.DownloadBlockInfo"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBlockPosition()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->blockPosition:I

    return v0
.end method

.method public getDownloadId()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->downloadId:I

    return v0
.end method

.method public getDownloadedBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->downloadedBytes:J

    return-wide v0
.end method

.method public getEndByte()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->endByte:J

    return-wide v0
.end method

.method public getProgress()I
    .locals 6

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadedBytes()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getEndByte()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getStartByte()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->calculateProgress(JJ)I

    move-result v0

    return v0
.end method

.method public getStartByte()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->startByte:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadId()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getBlockPosition()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getStartByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getEndByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadedBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setBlockPosition(I)V
    .locals 0

    iput p1, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->blockPosition:I

    return-void
.end method

.method public setDownloadId(I)V
    .locals 0

    iput p1, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->downloadId:I

    return-void
.end method

.method public setDownloadedBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->downloadedBytes:J

    return-void
.end method

.method public setEndByte(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->endByte:J

    return-void
.end method

.method public setStartByte(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->startByte:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadBlock(downloadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blockPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getBlockPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "startByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getStartByte()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getEndByte()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadedBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getBlockPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getStartByte()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getEndByte()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadedBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
