.class public Lcom/jme3/asset/plugins/HttpZipLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final byteBuf:Ljava/nio/ByteBuffer;

.field private final charBuf:Ljava/nio/CharBuffer;

.field private entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;",
            ">;"
        }
    .end annotation
.end field

.field private numEntries:I

.field private rootPath:Ljava/lang/String;

.field private tableLength:I

.field private tableOffset:I

.field private final utf8Decoder:Ljava/nio/charset/CharsetDecoder;

.field private zipUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/asset/plugins/HttpZipLocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/asset/plugins/HttpZipLocator;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->rootPath:Ljava/lang/String;

    const/16 v0, 0xfa

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->charBuf:Ljava/nio/CharBuffer;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method public static synthetic access$100(Lcom/jme3/asset/plugins/HttpZipLocator;Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/jme3/asset/plugins/HttpZipLocator;->openStream(Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/jme3/asset/plugins/HttpZipLocator;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private fillByteArray([BLjava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sub-int v2, v0, v1

    invoke-virtual {p2, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to read entire array"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private static get16([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method private static get32([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private getUTF8String([BII)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_3

    sub-int v3, p3, v2

    iget-object v4, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->byteBuf:Ljava/nio/ByteBuffer;

    add-int v6, p2, v2

    invoke-virtual {v5, p1, v6, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v6, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->byteBuf:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->charBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v6, v7, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_2
    iget-object v4, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->charBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->charBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->charBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getu32([BI)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    int-to-long v0, v0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    const/16 v2, 0x18

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private openStream(Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->nameLength:Ljava/lang/Integer;

    const/16 v1, 0x1e

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->extraLength:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2
    iget v0, p1, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->offset:I

    invoke-direct {p0, v0, v1}, Lcom/jme3/asset/plugins/HttpZipLocator;->readData(II)Ljava/io/InputStream;

    move-result-object v0

    .line 3
    :try_start_0
    new-array v2, v1, [B

    .line 4
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    const/16 v3, 0x1a

    .line 5
    invoke-static {v2, v3}, Lcom/jme3/asset/plugins/HttpZipLocator;->get16([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->nameLength:Ljava/lang/Integer;

    const/16 v3, 0x1c

    .line 6
    invoke-static {v2, v3}, Lcom/jme3/asset/plugins/HttpZipLocator;->get16([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->extraLength:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1

    .line 9
    :cond_1
    :goto_1
    iget v0, p1, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->offset:I

    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->nameLength:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->extraLength:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    iget v1, p1, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->compSize:I

    invoke-direct {p0, v0, v1}, Lcom/jme3/asset/plugins/HttpZipLocator;->readData(II)Ljava/io/InputStream;

    move-result-object v0

    .line 11
    iget-boolean p1, p1, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->deflate:Z

    if-eqz p1, :cond_2

    .line 12
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object p1

    :cond_2
    return-object v0
.end method

.method private readCentralDirectory()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->tableLength:I

    new-array v1, v0, [B

    iget v2, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->tableOffset:I

    invoke-direct {p0, v2, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->readData(II)Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->fillByteArray([BLjava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget v2, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->numEntries:I

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->entries:Ljava/util/HashMap;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->numEntries:I

    if-ge v0, v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/jme3/asset/plugins/HttpZipLocator;->readTableEntry([BI)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method private readData(II)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->zipUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "-"

    const v2, 0x7fffffff

    if-eq p1, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eq p2, v2, :cond_2

    if-eq p1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bytes="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Range"

    invoke-virtual {v0, p2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xce

    if-ne p1, p2, :cond_3

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_4

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Your server does not support HTTP feature Content-Range. Please contact your server administrator."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readEndHeader()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc8

    new-array v1, v0, [B

    const v2, 0x7fffffff

    invoke-direct {p0, v2, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->readData(II)Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->fillByteArray([BLjava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/16 v0, 0xb2

    :goto_0
    const/4 v2, -0x1

    if-ltz v0, :cond_2

    aget-byte v3, v1, v0

    const/16 v4, 0x50

    if-ne v3, v4, :cond_1

    invoke-static {v1, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->get32([BI)I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v5, 0x6054b50

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_3

    add-int/lit8 v2, v0, 0xa

    invoke-static {v1, v2}, Lcom/jme3/asset/plugins/HttpZipLocator;->get16([BI)I

    move-result v2

    iput v2, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->numEntries:I

    add-int/lit8 v2, v0, 0xc

    invoke-static {v1, v2}, Lcom/jme3/asset/plugins/HttpZipLocator;->get32([BI)I

    move-result v2

    iput v2, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->tableLength:I

    add-int/lit8 v0, v0, 0x10

    invoke-static {v1, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->get32([BI)I

    move-result v0

    iput v0, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->tableOffset:I

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot find Zip End Header in file!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
.end method

.method private readTableEntry([BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/jme3/asset/plugins/HttpZipLocator;->get32([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x2014b50    # 1.6619997E-316

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    add-int/lit8 v0, p2, 0x1c

    invoke-static {p1, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->get16([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x1e

    invoke-static {p1, v1}, Lcom/jme3/asset/plugins/HttpZipLocator;->get16([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x20

    invoke-static {p1, v2}, Lcom/jme3/asset/plugins/HttpZipLocator;->get16([BI)I

    move-result v2

    add-int/lit8 v3, p2, 0x2e

    add-int v4, v3, v0

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Lcom/jme3/asset/plugins/HttpZipLocator;->get16([BI)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    return v4

    :cond_0
    add-int/lit8 v1, p2, 0xa

    invoke-static {p1, v1}, Lcom/jme3/asset/plugins/HttpZipLocator;->get16([BI)I

    move-result v1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    invoke-direct {p0, p1, v3, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->getUTF8String([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2f

    if-ne v3, v6, :cond_2

    return v4

    :cond_2
    new-instance v3, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;-><init>(Lcom/jme3/asset/plugins/HttpZipLocator$1;)V

    iput-object v0, v3, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->name:Ljava/lang/String;

    if-ne v1, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v3, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->deflate:Z

    add-int/lit8 v0, p2, 0x10

    invoke-static {p1, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->getu32([BI)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->crc:J

    add-int/lit8 v0, p2, 0x18

    invoke-static {p1, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->get32([BI)I

    move-result v0

    iput v0, v3, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->length:I

    add-int/lit8 v0, p2, 0x14

    invoke-static {p1, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->get32([BI)I

    move-result v0

    iput v0, v3, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->compSize:I

    add-int/lit8 p2, p2, 0x2a

    invoke-static {p1, p2}, Lcom/jme3/asset/plugins/HttpZipLocator;->get32([BI)I

    move-result p1

    iput p1, v3, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->offset:I

    iget-object p1, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->entries:Ljava/util/HashMap;

    iget-object p2, v3, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Central directory error, expected \'PK12\'"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public load(Ljava/net/URL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "HttpZipLocator only supports HTTP(S) URLs"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->zipUrl:Ljava/net/URL;

    invoke-direct {p0}, Lcom/jme3/asset/plugins/HttpZipLocator;->readEndHeader()V

    invoke-direct {p0}, Lcom/jme3/asset/plugins/HttpZipLocator;->readCentralDirectory()V

    return-void
.end method

.method public locate(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;
    .locals 2

    iget-object v0, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->entries:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lcom/jme3/asset/plugins/HttpZipLocator$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/jme3/asset/plugins/HttpZipLocator$1;-><init>(Lcom/jme3/asset/plugins/HttpZipLocator;Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;)V

    return-object v1
.end method

.method public openStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;

    if-eqz v0, :cond_0

    .line 14
    invoke-direct {p0, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->openStream(Lcom/jme3/asset/plugins/HttpZipLocator$ZipEntry2;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRootPath(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->rootPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/jme3/asset/plugins/HttpZipLocator;->rootPath:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jme3/asset/plugins/HttpZipLocator;->load(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jme3/asset/plugins/HttpZipLocator;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set root path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
