.class public Lcom/jme3/audio/plugins/WAVLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;
    }
.end annotation


# static fields
.field private static final i_RIFF:I = 0x46464952

.field private static final i_WAVE:I = 0x45564157

.field private static final i_data:I = 0x61746164

.field private static final i_fmt:I = 0x20746d66

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private bytesPerSec:I

.field private duration:F

.field private in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/audio/plugins/WAVLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/audio/plugins/WAVLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private load(Lcom/jme3/asset/AssetInfo;Ljava/io/InputStream;Z)Lcom/jme3/audio/AudioData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-direct {v0, p1, p2}, Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;-><init>(Lcom/jme3/asset/AssetInfo;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    .line 2
    invoke-virtual {v0}, Lcom/jme3/util/LittleEndien;->readInt()I

    move-result p2

    const v0, 0x46464952

    if-ne p2, v0, :cond_6

    .line 3
    iget-object p2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {p2}, Lcom/jme3/util/LittleEndien;->readInt()I

    .line 4
    iget-object p2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {p2}, Lcom/jme3/util/LittleEndien;->readInt()I

    move-result p2

    const v0, 0x45564157

    if-ne p2, v0, :cond_5

    const/4 p2, 0x0

    const/16 v0, 0xc

    if-eqz p3, :cond_0

    .line 5
    new-instance v1, Lcom/jme3/audio/AudioStream;

    invoke-direct {v1}, Lcom/jme3/audio/AudioStream;-><init>()V

    move-object v2, p2

    move-object v3, v1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/jme3/audio/AudioBuffer;

    invoke-direct {v1}, Lcom/jme3/audio/AudioBuffer;-><init>()V

    move-object v3, p2

    move-object v2, v1

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v4}, Lcom/jme3/util/LittleEndien;->readInt()I

    move-result v4

    .line 8
    iget-object v5, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v5}, Lcom/jme3/util/LittleEndien;->readInt()I

    move-result v5

    add-int/lit8 v0, v0, 0x8

    const v6, 0x20746d66

    if-eq v4, v6, :cond_4

    const v6, 0x61746164

    if-eq v4, v6, :cond_2

    .line 9
    iget-object v4, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v4, v5}, Lcom/jme3/util/LittleEndien;->skipBytes(I)I

    move-result v4

    if-gtz v4, :cond_1

    .line 10
    sget-object p3, Lcom/jme3/audio/plugins/WAVLoader;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 12
    const-string v1, "Reached end of stream prematurely while skipping unknown chunk of size {0}. Asset: {1}"

    invoke-virtual {p3, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_1
    add-int/2addr v0, v4

    goto :goto_0

    .line 13
    :cond_2
    iget p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->bytesPerSec:I

    div-int p1, v5, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->duration:F

    if-eqz p3, :cond_3

    .line 14
    invoke-direct {p0, v0, v5, v3}, Lcom/jme3/audio/plugins/WAVLoader;->readDataChunkForStream(IILcom/jme3/audio/AudioStream;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-direct {p0, v5, v2}, Lcom/jme3/audio/plugins/WAVLoader;->readDataChunkForBuffer(ILcom/jme3/audio/AudioBuffer;)V

    :goto_1
    return-object v1

    .line 16
    :cond_4
    invoke-direct {p0, v5, v1}, Lcom/jme3/audio/plugins/WAVLoader;->readFormatChunk(ILcom/jme3/audio/AudioData;)V

    add-int/2addr v0, v5

    goto :goto_0

    .line 17
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "WAVE File does not contain audio"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File is not a WAVE file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readDataChunkForBuffer(ILcom/jme3/audio/AudioBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    iget-object v1, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v1, v0}, Lcom/jme3/util/LittleEndien;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2, p1}, Lcom/jme3/audio/AudioBuffer;->updateData(Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {p1}, Lcom/jme3/util/LittleEndien;->close()V

    return-void
.end method

.method private readDataChunkForStream(IILcom/jme3/audio/AudioStream;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {p2, p1}, Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;->setResetOffset(I)V

    iget-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    iget p2, p0, Lcom/jme3/audio/plugins/WAVLoader;->duration:F

    invoke-virtual {p3, p1, p2}, Lcom/jme3/audio/AudioStream;->updateData(Ljava/io/InputStream;F)V

    return-void
.end method

.method private readFormatChunk(ILcom/jme3/audio/AudioData;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v0}, Lcom/jme3/util/LittleEndien;->readShort()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v0}, Lcom/jme3/util/LittleEndien;->readShort()S

    move-result v0

    iget-object v1, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v1}, Lcom/jme3/util/LittleEndien;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v2}, Lcom/jme3/util/LittleEndien;->readInt()I

    move-result v2

    iput v2, p0, Lcom/jme3/audio/plugins/WAVLoader;->bytesPerSec:I

    iget-object v2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v2}, Lcom/jme3/util/LittleEndien;->readShort()S

    move-result v2

    iget-object v3, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v3}, Lcom/jme3/util/LittleEndien;->readShort()S

    move-result v3

    mul-int v4, v3, v0

    mul-int/2addr v4, v1

    const/16 v5, 0x8

    div-int/2addr v4, v5

    iget v6, p0, Lcom/jme3/audio/plugins/WAVLoader;->bytesPerSec:I

    if-eq v4, v6, :cond_0

    sget-object v6, Lcom/jme3/audio/plugins/WAVLoader;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v8, p0, Lcom/jme3/audio/plugins/WAVLoader;->bytesPerSec:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v4, v8}, [Ljava/lang/Object;

    move-result-object v4

    const-string v8, "Expected {0} bytes per second, got {1}"

    invoke-virtual {v6, v7, v8, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v4, 0x10

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Only 8 and 16 bits per sample are supported!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    div-int/lit8 v5, v3, 0x8

    mul-int/2addr v5, v0

    if-ne v5, v2, :cond_5

    mul-int/2addr v2, v1

    iget v5, p0, Lcom/jme3/audio/plugins/WAVLoader;->bytesPerSec:I

    if-ne v2, v5, :cond_4

    invoke-virtual {p2, v0, v3, v1}, Lcom/jme3/audio/AudioData;->setupFormat(III)V

    sub-int/2addr p1, v4

    if-lez p1, :cond_3

    iget-object p2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    int-to-long v0, p1

    invoke-static {p2, v0, v1}, Lcom/jme3/export/binary/ByteUtils;->skipFully(Ljava/io/InputStream;J)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid bytes per second value"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid bytes per sample value"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "WAV Loader only supports PCM wave files"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v4

    check-cast v4, Lcom/jme3/audio/AudioKey;

    invoke-virtual {v4}, Lcom/jme3/audio/AudioKey;->isStream()Z

    move-result v4

    .line 21
    invoke-direct {p0, p1, v3, v4}, Lcom/jme3/audio/plugins/WAVLoader;->load(Lcom/jme3/asset/AssetInfo;Ljava/io/InputStream;Z)Lcom/jme3/audio/AudioData;

    move-result-object p1

    .line 22
    instance-of v4, p1, Lcom/jme3/audio/AudioStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 23
    :cond_0
    iput-object v2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    .line 24
    iput v1, p0, Lcom/jme3/audio/plugins/WAVLoader;->bytesPerSec:I

    .line 25
    iput v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->duration:F

    if-eqz v3, :cond_1

    .line 26
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v2

    .line 27
    :goto_0
    iput-object v2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    .line 28
    iput v1, p0, Lcom/jme3/audio/plugins/WAVLoader;->bytesPerSec:I

    .line 29
    iput v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->duration:F

    if-eqz v3, :cond_2

    .line 30
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 31
    :cond_2
    throw p1
.end method
