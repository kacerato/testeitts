.class Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;
.super Lcom/jme3/util/LittleEndien;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/audio/SeekableStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/audio/plugins/WAVLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResettableInputStream"
.end annotation


# instance fields
.field private final info:Lcom/jme3/asset/AssetInfo;

.field private resetOffset:I


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetInfo;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/jme3/util/LittleEndien;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;->resetOffset:I

    iput-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;->info:Lcom/jme3/asset/AssetInfo;

    return-void
.end method


# virtual methods
.method public setResetOffset(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;->resetOffset:I

    return-void
.end method

.method public setTime(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;->info:Lcom/jme3/asset/AssetInfo;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    iget v0, p0, Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;->resetOffset:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/jme3/export/binary/ByteUtils;->skipFully(Ljava/io/InputStream;J)V

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/jme3/util/LittleEndien;->in:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Seeking WAV files not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
