.class public LGc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGc/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/MediaExtractor;

.field public b:Landroid/media/MediaCodec;

.field public c:Landroid/media/MediaFormat;

.field public d:[Ljava/nio/ByteBuffer;

.field public e:Z

.field public f:[Ljava/nio/ByteBuffer;

.field public g:I

.field public h:Z

.field public i:LGc/a$a;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "afd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, LGc/a;->a:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 10
    iput v1, p0, LGc/a;->g:I

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, LGc/a;->h:Z

    .line 12
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 15
    :goto_0
    invoke-virtual {p0}, LGc/a;->h()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LGc/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputFilename"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, LGc/a;->a:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, LGc/a;->g:I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, LGc/a;->h:Z

    .line 6
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, LGc/a;->h()V

    return-void
.end method


# virtual methods
.method public final a(LGc/a$a;I)LGc/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reuse",
            "requiredCount"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, LGc/a;->i:LGc/a$a;

    if-nez p1, :cond_0

    new-instance p1, LGc/a$a;

    invoke-direct {p1}, LGc/a$a;-><init>()V

    iput-object p1, p0, LGc/a;->i:LGc/a$a;

    :cond_0
    iget-object p1, p0, LGc/a;->i:LGc/a$a;

    :cond_1
    iget-object v0, p1, LGc/a$a;->a:[S

    if-eqz v0, :cond_2

    array-length v0, v0

    if-ge v0, p2, :cond_3

    :cond_2
    new-array p2, p2, [S

    iput-object p2, p1, LGc/a$a;->a:[S

    :cond_3
    return-object p1
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, LGc/a;->c:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, LGc/a;->c:Landroid/media/MediaFormat;

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final d(Landroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    iget-object v0, p0, LGc/a;->b:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, LGc/a;->h:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, LGc/a;->e:Z

    const/4 v2, 0x0

    const-wide/16 v3, 0x2710

    const/4 v5, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, LGc/a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-ltz v7, :cond_2

    iget-object v0, p0, LGc/a;->d:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v6, p0, LGc/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v9

    if-gez v9, :cond_1

    iget-object v6, p0, LGc/a;->b:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x0

    const/4 v12, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput-boolean v5, p0, LGc/a;->e:Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, LGc/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    iget-object v6, p0, LGc/a;->b:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v0, p0, LGc/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    :cond_2
    :goto_1
    iget-object v0, p0, LGc/a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, LGc/a;->g:I

    const/4 v3, -0x1

    if-ltz v0, :cond_5

    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez p1, :cond_3

    iget-object p1, p0, LGc/a;->b:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput v3, p0, LGc/a;->g:I

    iput-boolean v5, p0, LGc/a;->h:Z

    return-object v1

    :cond_3
    iput-boolean v5, p0, LGc/a;->h:Z

    :cond_4
    iget-object p1, p0, LGc/a;->f:[Ljava/nio/ByteBuffer;

    aget-object p1, p1, v0

    return-object p1

    :cond_5
    const/4 v2, -0x3

    if-ne v0, v2, :cond_6

    iget-object v0, p0, LGc/a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, LGc/a;->f:[Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_6
    const/4 v2, -0x2

    if-ne v0, v2, :cond_7

    iget-object v0, p0, LGc/a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, LGc/a;->c:Landroid/media/MediaFormat;

    goto :goto_0

    :cond_7
    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, LGc/a;->e:Z

    if-eqz v0, :cond_0

    :cond_8
    :goto_2
    return-object v1
.end method

.method public e(LGc/a$a;)LGc/a$a;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reuse"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-virtual {p0, v1}, LGc/a;->d(Landroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-gtz v3, :cond_1

    iget-object v1, p0, LGc/a;->b:Landroid/media/MediaCodec;

    iget v2, p0, LGc/a;->g:I

    invoke-virtual {v1, v2, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput v4, p0, LGc/a;->g:I

    invoke-virtual {p0, p1, v5}, LGc/a;->a(LGc/a$a;I)LGc/a$a;

    move-result-object p1

    iput v5, p1, LGc/a$a;->b:I

    return-object p1

    :cond_1
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {p0, p1, v2}, LGc/a;->a(LGc/a$a;I)LGc/a$a;

    move-result-object p1

    iget-object v3, p1, LGc/a$a;->a:[S

    invoke-virtual {v1, v3, v5, v2}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget-object v1, p0, LGc/a;->b:Landroid/media/MediaCodec;

    iget v3, p0, LGc/a;->g:I

    invoke-virtual {v1, v3, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput v4, p0, LGc/a;->g:I

    iput v2, p1, LGc/a$a;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public f()[S
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LGc/a;->e(LGc/a$a;)LGc/a$a;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget v0, v1, LGc/a$a;->b:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [S

    return-object v0

    :cond_1
    iget-object v1, v1, LGc/a$a;->a:[S

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LGc/a;->b:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_2
    iget-object v1, p0, LGc/a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :cond_0
    :try_start_3
    iget-object v1, p0, LGc/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    iput-object v0, p0, LGc/a;->b:Landroid/media/MediaCodec;

    return-void

    :goto_1
    :try_start_4
    iget-object v2, p0, LGc/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    iput-object v0, p0, LGc/a;->b:Landroid/media/MediaCodec;

    throw v1
.end method

.method public final h()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LGc/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, LGc/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, p0, LGc/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, LGc/a;->b:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput-object v3, p0, LGc/a;->c:Landroid/media/MediaFormat;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, LGc/a;->b:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, LGc/a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, LGc/a;->d:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, LGc/a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, LGc/a;->f:[Ljava/nio/ByteBuffer;

    iput-boolean v1, p0, LGc/a;->e:Z

    iput-boolean v1, p0, LGc/a;->h:Z

    return-void

    :cond_2
    iget-object v0, p0, LGc/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No decoder for file format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
