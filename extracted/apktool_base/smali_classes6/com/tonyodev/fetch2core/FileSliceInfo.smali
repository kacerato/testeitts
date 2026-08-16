.class public final Lcom/tonyodev/fetch2core/FileSliceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bytesPerFileSlice:J

.field private final slicingCount:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    iput-wide p2, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/tonyodev/fetch2core/FileSliceInfo;IJILjava/lang/Object;)Lcom/tonyodev/fetch2core/FileSliceInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tonyodev/fetch2core/FileSliceInfo;->copy(IJ)Lcom/tonyodev/fetch2core/FileSliceInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    return-wide v0
.end method

.method public final copy(IJ)Lcom/tonyodev/fetch2core/FileSliceInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/tonyodev/fetch2core/FileSliceInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/tonyodev/fetch2core/FileSliceInfo;-><init>(IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/tonyodev/fetch2core/FileSliceInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tonyodev/fetch2core/FileSliceInfo;

    iget v0, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    iget v1, p1, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    iget-wide v2, p1, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBytesPerFileSlice()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    return-wide v0
.end method

.method public final getSlicingCount()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileSliceInfo(slicingCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPerFileSlice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
