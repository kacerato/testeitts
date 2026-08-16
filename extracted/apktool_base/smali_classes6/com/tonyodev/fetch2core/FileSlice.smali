.class public final Lcom/tonyodev/fetch2core/FileSlice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private downloaded:J

.field private final endBytes:J

.field private final id:I

.field private final position:I

.field private final startBytes:J


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/tonyodev/fetch2core/FileSlice;-><init>(IIJJJILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(IIJJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    iput p2, p0, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    iput-wide p3, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    iput-wide p5, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    iput-wide p7, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    return-void
.end method

.method public synthetic constructor <init>(IIJJJILkotlin/jvm/internal/x;)V
    .locals 9

    and-int/lit8 v0, p9, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v2, p9, 0x4

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    move-wide v5, v3

    goto :goto_2

    :cond_2
    move-wide v5, p3

    :goto_2
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_3

    move-wide v7, v3

    goto :goto_3

    :cond_3
    move-wide v7, p5

    :goto_3
    and-int/lit8 v2, p9, 0x10

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v3, p7

    :goto_4
    move-object p1, p0

    move p2, v0

    move p3, v1

    move-wide p4, v5

    move-wide p6, v7

    move-wide/from16 p8, v3

    .line 3
    invoke-direct/range {p1 .. p9}, Lcom/tonyodev/fetch2core/FileSlice;-><init>(IIJJJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/tonyodev/fetch2core/FileSlice;IIJJJILjava/lang/Object;)Lcom/tonyodev/fetch2core/FileSlice;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    goto :goto_2

    :cond_2
    move-wide v3, p3

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    goto :goto_3

    :cond_3
    move-wide v5, p5

    :goto_3
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p7

    :goto_4
    move p1, v1

    move p2, v2

    move-wide p3, v3

    move-wide p5, v5

    move-wide/from16 p7, v7

    invoke-virtual/range {p0 .. p8}, Lcom/tonyodev/fetch2core/FileSlice;->copy(IIJJJ)Lcom/tonyodev/fetch2core/FileSlice;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    return-wide v0
.end method

.method public final copy(IIJJJ)Lcom/tonyodev/fetch2core/FileSlice;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v9, Lcom/tonyodev/fetch2core/FileSlice;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/tonyodev/fetch2core/FileSlice;-><init>(IIJJJ)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/tonyodev/fetch2core/FileSlice;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tonyodev/fetch2core/FileSlice;

    iget v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    iget v1, p1, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    iget v1, p1, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    iget-wide v2, p1, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    iget-wide v2, p1, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    iget-wide v2, p1, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

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

.method public final getDownloaded()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    return-wide v0
.end method

.method public final getEndBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    return-wide v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    return v0
.end method

.method public final getPosition()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    return v0
.end method

.method public final getStartBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDownloaded()Z
    .locals 4

    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    iget-wide v2, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setDownloaded(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileSlice(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
