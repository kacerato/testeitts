.class Lcom/jme3/texture/image/BitMaskImageCodec;
.super Lcom/jme3/texture/image/ImageCodec;
.source "SourceFile"


# instance fields
.field final as:I

.field be:Z

.field final bs:I

.field final gs:I

.field final rs:I


# direct methods
.method public constructor <init>(IIIIIIIIII)V
    .locals 10

    move-object v7, p0

    const-wide/16 v0, 0x1

    shl-long v2, v0, p3

    sub-long/2addr v2, v0

    long-to-int v3, v2

    shl-long v4, v0, p4

    sub-long/2addr v4, v0

    long-to-int v4, v4

    shl-long v5, v0, p5

    sub-long/2addr v5, v0

    long-to-int v5, v5

    shl-long v8, v0, p6

    sub-long/2addr v8, v0

    long-to-int v6, v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/image/ImageCodec;-><init>(IIIIII)V

    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/jme3/texture/image/BitMaskImageCodec;->be:Z

    const/4 v0, 0x4

    if-gt v1, v0, :cond_0

    move/from16 v0, p7

    iput v0, v7, Lcom/jme3/texture/image/BitMaskImageCodec;->as:I

    move/from16 v0, p8

    iput v0, v7, Lcom/jme3/texture/image/BitMaskImageCodec;->rs:I

    move/from16 v0, p9

    iput v0, v7, Lcom/jme3/texture/image/BitMaskImageCodec;->gs:I

    move/from16 v0, p10

    iput v0, v7, Lcom/jme3/texture/image/BitMaskImageCodec;->bs:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use ByteAlignedImageCodec for codecs with pixel sizes larger than 4 bytes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readPixelRaw(Ljava/nio/ByteBuffer;II)I
    .locals 3

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v2, p1, 0x8

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private writePixelRaw(Ljava/nio/ByteBuffer;III)V
    .locals 1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p4, :cond_0

    mul-int/lit8 v0, p2, 0x8

    shr-int v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public readComponents(Ljava/nio/ByteBuffer;IIII[I[B)V
    .locals 0

    mul-int/2addr p3, p4

    add-int/2addr p2, p3

    iget p3, p0, Lcom/jme3/texture/image/ImageCodec;->bpp:I

    mul-int/2addr p2, p3

    add-int/2addr p2, p5

    invoke-static {p1, p2, p3}, Lcom/jme3/texture/image/BitMaskImageCodec;->readPixelRaw(Ljava/nio/ByteBuffer;II)I

    move-result p1

    iget p2, p0, Lcom/jme3/texture/image/BitMaskImageCodec;->as:I

    shr-int p2, p1, p2

    iget p3, p0, Lcom/jme3/texture/image/ImageCodec;->maxAlpha:I

    and-int/2addr p2, p3

    const/4 p3, 0x0

    aput p2, p6, p3

    iget p2, p0, Lcom/jme3/texture/image/BitMaskImageCodec;->rs:I

    shr-int p2, p1, p2

    iget p3, p0, Lcom/jme3/texture/image/ImageCodec;->maxRed:I

    and-int/2addr p2, p3

    const/4 p3, 0x1

    aput p2, p6, p3

    iget p2, p0, Lcom/jme3/texture/image/BitMaskImageCodec;->gs:I

    shr-int p2, p1, p2

    iget p3, p0, Lcom/jme3/texture/image/ImageCodec;->maxGreen:I

    and-int/2addr p2, p3

    const/4 p3, 0x2

    aput p2, p6, p3

    iget p2, p0, Lcom/jme3/texture/image/BitMaskImageCodec;->bs:I

    shr-int/2addr p1, p2

    iget p2, p0, Lcom/jme3/texture/image/ImageCodec;->maxBlue:I

    and-int/2addr p1, p2

    const/4 p2, 0x3

    aput p1, p6, p2

    return-void
.end method

.method public writeComponents(Ljava/nio/ByteBuffer;IIII[I[B)V
    .locals 2

    const/4 p7, 0x0

    aget p7, p6, p7

    iget v0, p0, Lcom/jme3/texture/image/ImageCodec;->maxAlpha:I

    and-int/2addr p7, v0

    iget v0, p0, Lcom/jme3/texture/image/BitMaskImageCodec;->as:I

    shl-int/2addr p7, v0

    const/4 v0, 0x1

    aget v0, p6, v0

    iget v1, p0, Lcom/jme3/texture/image/ImageCodec;->maxRed:I

    and-int/2addr v0, v1

    iget v1, p0, Lcom/jme3/texture/image/BitMaskImageCodec;->rs:I

    shl-int/2addr v0, v1

    or-int/2addr p7, v0

    const/4 v0, 0x2

    aget v0, p6, v0

    iget v1, p0, Lcom/jme3/texture/image/ImageCodec;->maxGreen:I

    and-int/2addr v0, v1

    iget v1, p0, Lcom/jme3/texture/image/BitMaskImageCodec;->gs:I

    shl-int/2addr v0, v1

    or-int/2addr p7, v0

    const/4 v0, 0x3

    aget p6, p6, v0

    iget v0, p0, Lcom/jme3/texture/image/ImageCodec;->maxBlue:I

    and-int/2addr p6, v0

    iget v0, p0, Lcom/jme3/texture/image/BitMaskImageCodec;->bs:I

    shl-int/2addr p6, v0

    or-int/2addr p6, p7

    mul-int/2addr p3, p4

    add-int/2addr p2, p3

    iget p3, p0, Lcom/jme3/texture/image/ImageCodec;->bpp:I

    mul-int/2addr p2, p3

    add-int/2addr p2, p5

    invoke-direct {p0, p1, p2, p6, p3}, Lcom/jme3/texture/image/BitMaskImageCodec;->writePixelRaw(Ljava/nio/ByteBuffer;III)V

    return-void
.end method
