.class public final Lcom/android/tools/r8/internal/t80;
.super Lcom/android/tools/r8/internal/u80;
.source "SourceFile"


# instance fields
.field public final i:Ljava/nio/channels/FileChannel;

.field public j:Ljava/nio/MappedByteBuffer;

.field public final k:J

.field public final l:[B

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/util/function/Predicate;Z)V
    .locals 7

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/internal/u80;-><init>(Ljava/util/function/Predicate;Z)V

    const/16 p2, 0x2000

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/tools/r8/internal/t80;->l:[B

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/tools/r8/internal/t80;->m:I

    iput p2, p0, Lcom/android/tools/r8/internal/t80;->n:I

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/nio/file/OpenOption;

    sget-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v0, p3, p2

    invoke-static {p1, p3}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/t80;->i:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/tools/r8/internal/t80;->k:J

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget p3, p0, Lcom/android/tools/r8/internal/t80;->m:I

    int-to-long v3, p3

    sub-long/2addr p1, v3

    const-wide/32 v5, 0x7fffffff

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/t80;->j:Ljava/nio/MappedByteBuffer;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/t80;->n:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/t80;->n:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/t80;->l:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/t80;->i:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()[B
    .locals 9

    iget v0, p0, Lcom/android/tools/r8/internal/t80;->m:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/tools/r8/internal/t80;->k:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/t80;->n:I

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/t80;->m:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/tools/r8/internal/t80;->k:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/t80;->j:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/t80;->i:Ljava/nio/channels/FileChannel;

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget v0, p0, Lcom/android/tools/r8/internal/t80;->m:I

    int-to-long v3, v0

    iget-wide v5, p0, Lcom/android/tools/r8/internal/t80;->k:J

    sub-long/2addr v5, v3

    const-wide/32 v7, 0x7fffffff

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/t80;->j:Ljava/nio/MappedByteBuffer;

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/t80;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/t80;->m:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/t80;->j:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/t80;->l:[B

    iget v2, p0, Lcom/android/tools/r8/internal/t80;->n:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/t80;->n:I

    aput-byte v0, v1, v2

    const/16 v0, 0x2000

    if-ne v3, v0, :cond_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/t80;->l:[B

    return-object v0
.end method
