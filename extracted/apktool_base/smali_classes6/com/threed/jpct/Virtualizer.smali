.class public Lcom/threed/jpct/Virtualizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cnt:I


# instance fields
.field private buffy:[B

.field private cleaned:Z

.field private ctx:Landroid/content/Context;

.field private currentSize:J

.field private maxSize:J

.field private myCnt:I

.field private virtualized:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/threed/jpct/Virtualizer;->myCnt:I

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    .line 6
    iput-boolean v0, p0, Lcom/threed/jpct/Virtualizer;->cleaned:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/threed/jpct/Virtualizer;->maxSize:J

    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    .line 10
    sget v0, Lcom/threed/jpct/Virtualizer;->cnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/threed/jpct/Virtualizer;->cnt:I

    iput v0, p0, Lcom/threed/jpct/Virtualizer;->myCnt:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/threed/jpct/Virtualizer;-><init>()V

    const/high16 v0, 0x100000

    mul-int/2addr p1, v0

    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Lcom/threed/jpct/Virtualizer;->maxSize:J

    return-void
.end method

.method private cleanUp(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/threed/jpct/Virtualizer;->cleaned:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/threed/jpct/Virtualizer;->cleaned:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Cleaned up cache ("

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " files): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    aget-object v4, v1, v3

    .line 10
    const-string v5, "_vir_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {p1, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v0, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private cleanUpInstanceOnly(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Finalizing Virtualizer...cleaning up instance cache!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Cleaned up instance cache ("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " files): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_vir_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/threed/jpct/Virtualizer;->myCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private readIntoBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created temp buffer with size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    new-array v2, v0, [B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Read file length doesn\'t match buffer length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeInt(ILjava/io/OutputStream;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v0, v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p3, v5

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p3, v4

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p3, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p3, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p3, v2

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p3, v3

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p3, v4

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p3, v5

    :goto_1
    iget-object p1, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeShort(SLjava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    iget-object p1, p0, Lcom/threed/jpct/Virtualizer;->buffy:[B

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/threed/jpct/Virtualizer;->cleanUpInstanceOnly(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to clean up virtualizer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/threed/jpct/Virtualizer;->cleanUpInstanceOnly(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public freeHandles(Lcom/threed/jpct/Texture;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/threed/jpct/Texture;->texels:[I

    iput-object v0, p1, Lcom/threed/jpct/Texture;->zippedTexels:[B

    :cond_0
    return-void
.end method

.method public getInputCacheStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not in cache!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getOutputCacheStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string p1, "Cache not available!"

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isCached(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method

.method public isFull()Z
    .locals 4

    iget-wide v0, p0, Lcom/threed/jpct/Virtualizer;->maxSize:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/threed/jpct/Virtualizer;->currentSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVirtual(Lcom/threed/jpct/Texture;)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public readFromCache(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 6

    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "No context set!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x800

    invoke-direct {v0, v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/threed/jpct/Virtualizer;->readIntoBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loaded "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from cache!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v3

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " not found in cache!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    return-object v2

    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from cache: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    return-object v2

    :goto_1
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_3
    throw p1
.end method

.method public restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(",
            "Lcom/threed/jpct/CompiledInstance;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 20
    const-string p1, "No context set!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-object v2

    .line 21
    :cond_0
    const-class v0, Ljava/nio/IntBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 22
    const-string v0, "_ib_"

    move v1, v3

    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "_bb_"

    .line 24
    :goto_0
    const-class v4, Ljava/nio/FloatBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    .line 25
    const-string v0, "_fb_"

    move v1, v5

    .line 26
    :cond_2
    const-class v4, Ljava/nio/ShortBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x3

    if-eqz v4, :cond_3

    .line 27
    const-string v0, "_sb_"

    move v1, v6

    .line 28
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "_vir_"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/threed/jpct/Virtualizer;->myCnt:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".dat"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 30
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 32
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Trying to restore buffer from file "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 33
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v4, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v4, p3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p3, 0x800

    invoke-direct {p1, v0, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    invoke-direct {p0, p1}, Lcom/threed/jpct/Virtualizer;->readIntoBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p3

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v6, :cond_4

    goto :goto_1

    .line 35
    :cond_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto :goto_4

    :catch_0
    move-exception p3

    move-object v9, v2

    move-object v2, p1

    move-object p1, v9

    goto :goto_2

    .line 36
    :cond_5
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    goto :goto_1

    .line 37
    :cond_6
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    goto :goto_1

    :cond_7
    move-object v2, p3

    .line 38
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Buffer of type "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " restored from disk!"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p3

    move-object p1, v2

    .line 40
    :goto_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unable to restore buffer of type "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_8

    .line 41
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_8
    move-object v2, p1

    .line 42
    :catch_3
    :goto_3
    invoke-virtual {p2, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/Buffer;

    return-object p1

    :goto_4
    if-eqz v2, :cond_9

    .line 43
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 44
    :catch_4
    :cond_9
    throw p2

    .line 45
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Buffer data with name "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-object v2
.end method

.method public restore(Lcom/threed/jpct/Texture;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    const-string p1, "No context set!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    return v1

    .line 5
    :cond_1
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    const/16 v6, 0x800

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    new-array v2, v6, [B

    .line 7
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    :cond_2
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 9
    invoke-virtual {v5, v2, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v2, v4

    goto :goto_2

    :cond_3
    :goto_0
    if-gt v6, v7, :cond_2

    .line 10
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 11
    const-string v5, "_z_.dat"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    iput-object v2, p1, Lcom/threed/jpct/Texture;->zippedTexels:[B

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {v2}, Lcom/threed/jpct/ZipHelper;->byteArrayToInt([B)[I

    move-result-object v2

    iput-object v2, p1, Lcom/threed/jpct/Texture;->texels:[I

    .line 14
    :goto_1
    const-string p1, "Retrieved texture data from disk!"

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return v0

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 16
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to restore texture: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_5

    .line 17
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_5
    return v1

    :goto_3
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 18
    :catch_4
    :cond_6
    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/threed/jpct/Virtualizer;->cleanUp(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z
    .locals 9

    .line 22
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 23
    const-string p1, "No context set!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return v1

    :cond_0
    if-nez p2, :cond_1

    return v1

    .line 24
    :cond_1
    instance-of v0, p2, Ljava/nio/IntBuffer;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 25
    const-string v0, "_ib_"

    move v3, v2

    goto :goto_0

    .line 26
    :cond_2
    const-string v0, "_bb_"

    move v3, v1

    .line 27
    :goto_0
    instance-of v4, p2, Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    .line 28
    const-string v0, "_fb_"

    move v3, v5

    .line 29
    :cond_3
    instance-of v4, p2, Ljava/nio/ShortBuffer;

    const/4 v6, 0x3

    if-eqz v4, :cond_4

    .line 30
    const-string v0, "_sb_"

    move v3, v6

    .line 31
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "_vir_"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/threed/jpct/Virtualizer;->myCnt:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".dat"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 33
    :try_start_0
    iget-object v4, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/threed/jpct/Virtualizer;->cleanUp(Landroid/content/Context;)V

    .line 34
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    iget-object v8, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v8, p3, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v8, 0x800

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_b

    if-eq v3, v2, :cond_9

    if-eq v3, v5, :cond_7

    if-eq v3, v6, :cond_5

    move p2, v1

    goto/16 :goto_4

    .line 35
    :cond_5
    :try_start_1
    check-cast p2, Ljava/nio/ShortBuffer;

    .line 36
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v5, v0, [S

    .line 37
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 38
    invoke-virtual {p2, v5}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    shl-int/lit8 p2, v0, 0x1

    .line 39
    invoke-direct {p0, p2, v4, v2}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    move v6, v1

    :goto_1
    if-lt v6, v0, :cond_6

    goto/16 :goto_4

    .line 40
    :cond_6
    aget-short v7, v5, v6

    invoke-direct {p0, v7, v4}, Lcom/threed/jpct/Virtualizer;->writeShort(SLjava/io/OutputStream;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto/16 :goto_6

    :catch_0
    move-exception p1

    move-object v0, v4

    goto/16 :goto_5

    .line 41
    :cond_7
    check-cast p2, Ljava/nio/FloatBuffer;

    .line 42
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v5, v0, [F

    .line 43
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 44
    invoke-virtual {p2, v5}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    shl-int/lit8 p2, v0, 0x2

    .line 45
    invoke-direct {p0, p2, v4, v2}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    move v6, v1

    :goto_2
    if-lt v6, v0, :cond_8

    goto :goto_4

    .line 46
    :cond_8
    aget v7, v5, v6

    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    invoke-direct {p0, v7, v4, v1}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 47
    :cond_9
    check-cast p2, Ljava/nio/IntBuffer;

    .line 48
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v5, v0, [I

    .line 49
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 50
    invoke-virtual {p2, v5}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    shl-int/lit8 p2, v0, 0x2

    .line 51
    invoke-direct {p0, p2, v4, v2}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    move v6, v1

    :goto_3
    if-lt v6, v0, :cond_a

    goto :goto_4

    .line 52
    :cond_a
    aget v7, v5, v6

    invoke-direct {p0, v7, v4, v1}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 53
    :cond_b
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v5, v0, [B

    .line 55
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 56
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 57
    invoke-direct {p0, v0, v4, v2}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    .line 58
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    move p2, v0

    .line 59
    :goto_4
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    .line 60
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    .line 61
    const-string v0, ""

    .line 62
    :cond_c
    iget-object v5, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Stored buffer of type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " on disk ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes / "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return v2

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p1

    .line 65
    :goto_5
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to virtualize buffer of type "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 66
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 67
    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_d
    if-eqz v0, :cond_e

    .line 68
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_e
    return v1

    :goto_6
    if-eqz v0, :cond_f

    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 69
    :catch_4
    :cond_f
    throw p1
.end method

.method public store(Lcom/threed/jpct/Texture;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    const-string p1, "No context set!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return v1

    .line 3
    :cond_0
    iget-object v2, p1, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    :try_start_0
    invoke-direct {p0, v0}, Lcom/threed/jpct/Virtualizer;->cleanUp(Landroid/content/Context;)V

    .line 5
    iget-object v0, p1, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p1, Lcom/threed/jpct/Texture;->texels:[I

    invoke-static {v0}, Lcom/threed/jpct/ZipHelper;->intToByteArray([I)[B

    move-result-object v0

    move v4, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_2
    move v4, v3

    .line 7
    :goto_0
    iget-wide v5, p0, Lcom/threed/jpct/Virtualizer;->maxSize:J

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3

    iget-wide v7, p0, Lcom/threed/jpct/Virtualizer;->currentSize:J

    array-length v9, v0

    int-to-long v9, v9

    add-long/2addr v7, v9

    cmp-long v5, v7, v5

    if-lez v5, :cond_3

    .line 8
    const-string p1, "Maximum disk space f\u00fcr virtual textures exceeded!"

    invoke-static {p1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return v1

    .line 9
    :cond_3
    iget-wide v5, p0, Lcom/threed/jpct/Virtualizer;->currentSize:J

    array-length v7, v0

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/threed/jpct/Virtualizer;->currentSize:J

    .line 10
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_vir_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/threed/jpct/Virtualizer;->myCnt:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    const-string v4, "_z_"

    goto :goto_1

    :cond_4
    const-string v4, "_n_"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".dat"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v7, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v7, v4, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    const/16 v8, 0x800

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 14
    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->virtualized:Ljava/util/Map;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iput-object v2, p1, Lcom/threed/jpct/Texture;->texels:[I

    .line 16
    iput-object v2, p1, Lcom/threed/jpct/Texture;->zippedTexels:[B

    .line 17
    const-string p1, "Stored texture data on disk!"

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return v3

    :catchall_1
    move-exception p1

    move-object v2, v6

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v2, v6

    .line 19
    :goto_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unable to virtualize texture: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    .line 20
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_5
    return v1

    :goto_3
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 21
    :catch_4
    :cond_6
    throw p1
.end method

.method public storeInCache(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z
    .locals 12

    iget-object v0, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "No context set!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/threed/jpct/Virtualizer;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lcom/threed/jpct/Virtualizer$1;

    invoke-direct {v4, p0}, Lcom/threed/jpct/Virtualizer$1;-><init>(Lcom/threed/jpct/Virtualizer;)V

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v6, 0x0

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    const-wide/32 v8, 0x500000

    cmp-long v4, v6, v8

    if-lez v4, :cond_6

    const-string v4, "Purging cache directory!"

    invoke-static {v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    cmp-long v10, v6, v8

    if-gez v10, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    sub-long/2addr v6, v10

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_6
    :goto_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x800

    invoke-direct {v4, v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, v4, v0}, Lcom/threed/jpct/Virtualizer;->writeInt(ILjava/io/OutputStream;Z)V

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Stored "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in cache!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    return v0

    :catchall_1
    move-exception p1

    move-object v2, v4

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v2, v4

    goto :goto_3

    :cond_7
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-long/2addr v6, v8

    goto/16 :goto_0

    :goto_3
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to cache buffer: "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    if-eqz v2, :cond_9

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_9
    return v1

    :goto_4
    if-eqz v2, :cond_a

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_a
    throw p1
.end method
