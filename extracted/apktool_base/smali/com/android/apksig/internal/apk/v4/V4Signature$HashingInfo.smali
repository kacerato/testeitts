.class public Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v4/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashingInfo"
.end annotation


# instance fields
.field public final hashAlgorithm:I

.field public final log2BlockSize:B

.field public final rawRootHash:[B

.field public final salt:[B


# direct methods
.method public constructor <init>(IB[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->hashAlgorithm:I

    iput-byte p2, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->log2BlockSize:B

    iput-object p3, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->salt:[B

    iput-object p4, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->rawRootHash:[B

    return-void
.end method

.method public static fromByteArray([B)Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    new-instance v3, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;-><init>(IB[B[B)V

    return-object v3
.end method


# virtual methods
.method public toByteArray()[B
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->salt:[B

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->log2BlockSize:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->salt:[B

    invoke-static {v0, v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v0, v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
