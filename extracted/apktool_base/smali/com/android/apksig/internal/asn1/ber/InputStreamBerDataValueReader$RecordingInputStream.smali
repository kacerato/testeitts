.class Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordingInputStream"
.end annotation


# instance fields
.field private final mBuf:Ljava/io/ByteArrayOutputStream;

.field private final mIn:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mIn:Ljava/io/InputStream;

    .line 4
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getReadByteCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public getReadBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    return p3
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const/16 v2, 0x1000

    new-array v3, v2, [B

    iget-object v4, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mIn:Ljava/io/InputStream;

    int-to-long v5, v2

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    const/4 p2, 0x0

    invoke-virtual {v4, v3, p2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_1

    iget-object v2, p0, Lcom/android/apksig/internal/asn1/ber/InputStreamBerDataValueReader$RecordingInputStream;->mBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v3, p2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method
