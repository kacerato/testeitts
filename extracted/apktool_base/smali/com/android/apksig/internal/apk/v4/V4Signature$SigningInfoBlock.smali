.class public Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v4/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigningInfoBlock"
.end annotation


# instance fields
.field public final blockId:I

.field public final signingInfo:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;->blockId:I

    iput-object p2, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;->signingInfo:[B

    return-void
.end method

.method public static fromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    new-instance v1, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    invoke-direct {v1, v0, p0}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;-><init>(I[B)V

    return-object v1
.end method


# virtual methods
.method public toByteArray()[B
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;->signingInfo:[B

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->bytesSize([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;->blockId:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;->signingInfo:[B

    invoke-static {v0, v1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
