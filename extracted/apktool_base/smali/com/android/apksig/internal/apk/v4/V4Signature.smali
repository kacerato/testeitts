.class public Lcom/android/apksig/internal/apk/v4/V4Signature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;,
        Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;,
        Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;,
        Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:I = 0x2

.field public static final HASHING_ALGORITHM_SHA256:I = 0x1

.field public static final LOG2_BLOCK_SIZE_4096_BYTES:B = 0xct

.field public static final MAX_SIGNING_INFOS_SIZE:I = 0x1c00


# instance fields
.field public final hashingInfo:[B

.field public final signingInfos:[B

.field public final version:I


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature;->version:I

    iput-object p2, p0, Lcom/android/apksig/internal/apk/v4/V4Signature;->hashingInfo:[B

    iput-object p3, p0, Lcom/android/apksig/internal/apk/v4/V4Signature;->signingInfos:[B

    return-void
.end method

.method public static bytesSize([B)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static getSignedData(JLcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)[B
    .locals 3

    iget-object v0, p2, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->salt:[B

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    iget-object v1, p2, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->additionalData:[B

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget p0, p2, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-byte p0, p2, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->log2BlockSize:B

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p0, p2, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->salt:[B

    invoke-static {v1, p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget-object p0, p2, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v1, p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget-object p0, p3, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v1, p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget-object p0, p3, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    invoke-static {v1, p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget-object p0, p3, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->additionalData:[B

    invoke-static {v1, p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readIntLE(Ljava/io/InputStream;)I

    move-result v0

    .line 2
    new-array v0, v0, [B

    .line 3
    invoke-static {p0, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readFully(Ljava/io/InputStream;[B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readBytes(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 7
    new-array v0, v0, [B

    .line 8
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    .line 9
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readFrom(Ljava/io/InputStream;)Lcom/android/apksig/internal/apk/v4/V4Signature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readIntLE(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    new-instance v2, Lcom/android/apksig/internal/apk/v4/V4Signature;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;-><init>(I[B[B)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid signature version."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
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

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static readIntLE(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {p0, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readFully(Ljava/io/InputStream;[B)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public static writeBytes(Ljava/io/OutputStream;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeIntLE(Ljava/io/OutputStream;I)V

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeIntLE(Ljava/io/OutputStream;I)V

    .line 3
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeBytes(Ljava/nio/ByteBuffer;[B)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void

    .line 5
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static writeIntLE(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/apksig/internal/apk/v4/V4Signature;->version:I

    invoke-static {p1, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeIntLE(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v4/V4Signature;->hashingInfo:[B

    invoke-static {p1, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/io/OutputStream;[B)V

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v4/V4Signature;->signingInfos:[B

    invoke-static {p1, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/io/OutputStream;[B)V

    return-void
.end method
