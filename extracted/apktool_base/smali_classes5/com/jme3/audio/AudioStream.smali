.class public Lcom/jme3/audio/AudioStream;
.super Lcom/jme3/audio/AudioData;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected duration:F

.field protected eof:Z

.field protected ids:[I

.field protected in:Ljava/io/InputStream;

.field protected open:Z

.field protected unqueuedBuffersBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/audio/AudioStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/audio/AudioStream;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/audio/AudioData;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/jme3/audio/AudioStream;->duration:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jme3/audio/AudioStream;->open:Z

    .line 4
    iput-boolean v0, p0, Lcom/jme3/audio/AudioStream;->eof:Z

    .line 5
    iput v0, p0, Lcom/jme3/audio/AudioStream;->unqueuedBuffersBytes:I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    const/4 v0, -0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/jme3/audio/AudioData;-><init>(I)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    iput v0, p0, Lcom/jme3/audio/AudioStream;->duration:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/jme3/audio/AudioStream;->open:Z

    .line 9
    iput-boolean v0, p0, Lcom/jme3/audio/AudioStream;->eof:Z

    .line 10
    iput v0, p0, Lcom/jme3/audio/AudioStream;->unqueuedBuffersBytes:I

    .line 11
    iput-object p1, p0, Lcom/jme3/audio/AudioStream;->ids:[I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/audio/AudioStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/jme3/audio/AudioStream;->open:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/audio/AudioStream;->open:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AudioStream is already closed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 2

    new-instance v0, Lcom/jme3/audio/AudioStream;

    iget-object v1, p0, Lcom/jme3/audio/AudioStream;->ids:[I

    invoke-direct {v0, v1}, Lcom/jme3/audio/AudioStream;-><init>([I)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/jme3/audio/AudioRenderer;

    invoke-interface {p1, p0}, Lcom/jme3/audio/AudioRenderer;->deleteAudioData(Lcom/jme3/audio/AudioData;)V

    return-void
.end method

.method public getDataType()Lcom/jme3/audio/AudioData$DataType;
    .locals 1

    sget-object v0, Lcom/jme3/audio/AudioData$DataType;->Stream:Lcom/jme3/audio/AudioData$DataType;

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioStream;->duration:F

    return v0
.end method

.method public getId()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t use getId() on streams"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getId(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/audio/AudioStream;->ids:[I

    aget p1, v0, p1

    return p1
.end method

.method public getIds()[I
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/AudioStream;->ids:[I

    return-object v0
.end method

.method public getUniqueId()J
    .locals 4

    iget-object v0, p0, Lcom/jme3/audio/AudioStream;->ids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x700000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnqueuedBufferBytes()I
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioStream;->unqueuedBuffersBytes:I

    return v0
.end method

.method public initIds(I)V
    .locals 0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/jme3/audio/AudioStream;->ids:[I

    return-void
.end method

.method public isEOF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/audio/AudioStream;->eof:Z

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/AudioStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/jme3/audio/SeekableStream;

    return v0
.end method

.method public readSamples([B)I
    .locals 2

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jme3/audio/AudioStream;->readSamples([BII)I

    move-result p1

    return p1
.end method

.method public readSamples([BII)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jme3/audio/AudioStream;->open:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jme3/audio/AudioStream;->eof:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/jme3/audio/AudioStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_1

    .line 3
    iput-boolean v0, p0, Lcom/jme3/audio/AudioStream;->eof:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return p1

    .line 4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    iput-boolean v0, p0, Lcom/jme3/audio/AudioStream;->eof:Z

    :cond_2
    :goto_2
    return v1
.end method

.method public resetObject()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/audio/AudioStream;->ids:[I

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method

.method public setId(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t use setId() on streams"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setId(II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/audio/AudioStream;->ids:[I

    aput p2, v0, p1

    return-void
.end method

.method public setIds([I)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/audio/AudioStream;->ids:[I

    return-void
.end method

.method public setTime(F)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/audio/AudioStream;->in:Ljava/io/InputStream;

    instance-of v1, v0, Lcom/jme3/audio/SeekableStream;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/audio/SeekableStream;

    invoke-interface {v0, p1}, Lcom/jme3/audio/SeekableStream;->setTime(F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/audio/AudioStream;->eof:Z

    iput p1, p0, Lcom/jme3/audio/AudioStream;->unqueuedBuffersBytes:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use setTime on a stream that is not seekable. You must load the file with the streamCache option set to true"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUnqueuedBufferBytes(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/AudioStream;->unqueuedBuffersBytes:I

    return-void
.end method

.method public updateData(Ljava/io/InputStream;F)V
    .locals 2

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/audio/AudioStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/jme3/audio/AudioStream;->in:Ljava/io/InputStream;

    iput p2, p0, Lcom/jme3/audio/AudioStream;->duration:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/audio/AudioStream;->open:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Data already set!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
