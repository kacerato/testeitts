.class public Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$SleepCallback;,
        Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$WriteCallback;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private bufferStartPosition:J

.field private bytesWrittenSinceLastSleep:J

.field private lastWritePosition:J

.field private maxBytesPerMillisecond:D

.field private sleepFunction:Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$SleepCallback;

.field private totalBytesWritten:J

.field private totalWriteTimeMs:J

.field private writeCallback:Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$WriteCallback;


# direct methods
.method public constructor <init>(IDLorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$WriteCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/b;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/db/b;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->sleepFunction:Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$SleepCallback;

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->buffer:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->lastWritePosition:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->bufferStartPosition:J

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->maxBytesPerMillisecond:D

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->writeCallback:Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$WriteCallback;

    return-void
.end method


# virtual methods
.method public flush()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->lastWritePosition:J

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->bufferStartPosition:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->writeCallback:Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$WriteCallback;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->buffer:[B

    invoke-static {v5, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->bufferStartPosition:J

    invoke-interface {v4, v1, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$WriteCallback;->write(Ljava/nio/ByteBuffer;J)Z

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->totalBytesWritten:J

    int-to-long v6, v0

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->totalBytesWritten:J

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->totalWriteTimeMs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->totalWriteTimeMs:J

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->bytesWrittenSinceLastSleep:J

    add-long/2addr v2, v6

    long-to-double v4, v4

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->maxBytesPerMillisecond:D

    mul-double/2addr v4, v6

    double-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->bytesWrittenSinceLastSleep:J

    long-to-double v2, v2

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->maxBytesPerMillisecond:D

    div-double/2addr v2, v6

    double-to-long v2, v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->sleepFunction:Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$SleepCallback;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$SleepCallback;->sleep(J)V

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->bytesWrittenSinceLastSleep:J

    long-to-double v4, v4

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->maxBytesPerMillisecond:D

    long-to-double v2, v2

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    double-to-long v2, v4

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->bytesWrittenSinceLastSleep:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->lastWritePosition:J

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->bufferStartPosition:J

    return v1
.end method

.method public getBytesWritten()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->totalBytesWritten:J

    return-wide v0
.end method

.method public getTotalWriteTimeMs()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->totalWriteTimeMs:J

    return-wide v0
.end method

.method public setSleepFunction(Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$SleepCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->sleepFunction:Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$SleepCallback;

    return-void
.end method

.method public write(J[B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->lastWritePosition:J

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->bufferStartPosition:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    array-length v1, p3

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->buffer:[B

    array-length v4, v2

    if-gt v1, v4, :cond_0

    array-length v1, p3

    invoke-static {p3, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p3

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->lastWritePosition:J

    return v3

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->flush()Z

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->buffer:[B

    array-length v2, p3

    invoke-static {p3, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->bufferStartPosition:J

    array-length p3, p3

    int-to-long v1, p3

    add-long/2addr p1, v1

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->lastWritePosition:J

    return v0
.end method
