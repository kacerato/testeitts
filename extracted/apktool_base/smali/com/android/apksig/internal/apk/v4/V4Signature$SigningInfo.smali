.class public Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v4/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigningInfo"
.end annotation


# instance fields
.field public final additionalData:[B

.field public final apkDigest:[B

.field public final certificate:[B

.field public final publicKey:[B

.field public final signature:[B

.field public final signatureAlgorithmId:I


# direct methods
.method public constructor <init>([B[B[B[BI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->apkDigest:[B

    iput-object p2, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    iput-object p3, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->additionalData:[B

    iput-object p4, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->publicKey:[B

    iput p5, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->signatureAlgorithmId:I

    iput-object p6, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->signature:[B

    return-void
.end method

.method public static fromByteArray([B)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;
    .locals 1
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

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->fromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    move-result-object p0

    return-object p0
.end method

.method public static fromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    new-instance p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;-><init>([B[B[B[BI[B)V

    return-object p0
.end method


# virtual methods
.method public toByteArray()[B
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v0

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->additionalData:[B

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->publicKey:[B

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->signature:[B

    invoke-static {v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v0, v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    invoke-static {v0, v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->additionalData:[B

    invoke-static {v0, v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->publicKey:[B

    invoke-static {v0, v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    iget v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->signatureAlgorithmId:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->signature:[B

    invoke-static {v0, v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
