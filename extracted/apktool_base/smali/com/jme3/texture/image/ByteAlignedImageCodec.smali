.class Lcom/jme3/texture/image/ByteAlignedImageCodec;
.super Lcom/jme3/texture/image/ImageCodec;
.source "SourceFile"


# instance fields
.field private final ap:I

.field private final az:I

.field be:Z

.field private final bp:I

.field private final bz:I

.field private final gp:I

.field private final gz:I

.field private final rp:I

.field private final rz:I


# direct methods
.method public constructor <init>(IIIIIIIIII)V
    .locals 14

    move-object v7, p0

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    shl-int/lit8 v0, v8, 0x3

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sub-long/2addr v3, v1

    long-to-int v3, v3

    shl-int/lit8 v0, v9, 0x3

    shl-long v4, v1, v0

    sub-long/2addr v4, v1

    long-to-int v4, v4

    shl-int/lit8 v0, v10, 0x3

    shl-long v5, v1, v0

    sub-long/2addr v5, v1

    long-to-int v5, v5

    shl-int/lit8 v0, v11, 0x3

    shl-long v12, v1, v0

    sub-long/2addr v12, v1

    long-to-int v6, v12

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/image/ImageCodec;-><init>(IIIIII)V

    move/from16 v0, p7

    iput v0, v7, Lcom/jme3/texture/image/ByteAlignedImageCodec;->ap:I

    iput v8, v7, Lcom/jme3/texture/image/ByteAlignedImageCodec;->az:I

    move/from16 v0, p8

    iput v0, v7, Lcom/jme3/texture/image/ByteAlignedImageCodec;->rp:I

    iput v9, v7, Lcom/jme3/texture/image/ByteAlignedImageCodec;->rz:I

    move/from16 v0, p9

    iput v0, v7, Lcom/jme3/texture/image/ByteAlignedImageCodec;->gp:I

    iput v10, v7, Lcom/jme3/texture/image/ByteAlignedImageCodec;->gz:I

    move/from16 v0, p10

    iput v0, v7, Lcom/jme3/texture/image/ByteAlignedImageCodec;->bp:I

    iput v11, v7, Lcom/jme3/texture/image/ByteAlignedImageCodec;->bz:I

    return-void
.end method

.method private static readComponent([BII)I
    .locals 3

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ltz p2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int v2, p1, p2

    :try_start_0
    aget-byte v2, p0, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0

    :cond_0
    return v1
.end method

.method private static readPixelRaw(Ljava/nio/ByteBuffer;II[B)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private writeComponent(III[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    mul-int/lit8 v1, v0, 0x8

    shr-int v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    add-int/lit8 v2, p2, 0x1

    aput-byte v1, p4, p2

    add-int/lit8 v0, v0, 0x1

    move p2, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static writePixelRaw(Ljava/nio/ByteBuffer;I[BI)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

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

    invoke-static {p1, p2, p3, p7}, Lcom/jme3/texture/image/ByteAlignedImageCodec;->readPixelRaw(Ljava/nio/ByteBuffer;II[B)V

    iget p1, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->ap:I

    iget p2, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->az:I

    invoke-static {p7, p1, p2}, Lcom/jme3/texture/image/ByteAlignedImageCodec;->readComponent([BII)I

    move-result p1

    const/4 p2, 0x0

    aput p1, p6, p2

    iget p1, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->rp:I

    iget p2, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->rz:I

    invoke-static {p7, p1, p2}, Lcom/jme3/texture/image/ByteAlignedImageCodec;->readComponent([BII)I

    move-result p1

    const/4 p2, 0x1

    aput p1, p6, p2

    iget p1, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->gp:I

    iget p2, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->gz:I

    invoke-static {p7, p1, p2}, Lcom/jme3/texture/image/ByteAlignedImageCodec;->readComponent([BII)I

    move-result p1

    const/4 p2, 0x2

    aput p1, p6, p2

    iget p1, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->bp:I

    iget p2, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->bz:I

    invoke-static {p7, p1, p2}, Lcom/jme3/texture/image/ByteAlignedImageCodec;->readComponent([BII)I

    move-result p1

    const/4 p2, 0x3

    aput p1, p6, p2

    return-void
.end method

.method public writeComponents(Ljava/nio/ByteBuffer;IIII[I[B)V
    .locals 3

    const/4 v0, 0x0

    aget v0, p6, v0

    iget v1, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->ap:I

    iget v2, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->az:I

    invoke-direct {p0, v0, v1, v2, p7}, Lcom/jme3/texture/image/ByteAlignedImageCodec;->writeComponent(III[B)V

    const/4 v0, 0x1

    aget v0, p6, v0

    iget v1, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->rp:I

    iget v2, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->rz:I

    invoke-direct {p0, v0, v1, v2, p7}, Lcom/jme3/texture/image/ByteAlignedImageCodec;->writeComponent(III[B)V

    const/4 v0, 0x2

    aget v0, p6, v0

    iget v1, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->gp:I

    iget v2, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->gz:I

    invoke-direct {p0, v0, v1, v2, p7}, Lcom/jme3/texture/image/ByteAlignedImageCodec;->writeComponent(III[B)V

    const/4 v0, 0x3

    aget p6, p6, v0

    iget v0, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->bp:I

    iget v1, p0, Lcom/jme3/texture/image/ByteAlignedImageCodec;->bz:I

    invoke-direct {p0, p6, v0, v1, p7}, Lcom/jme3/texture/image/ByteAlignedImageCodec;->writeComponent(III[B)V

    mul-int/2addr p3, p4

    add-int/2addr p2, p3

    iget p3, p0, Lcom/jme3/texture/image/ImageCodec;->bpp:I

    mul-int/2addr p2, p3

    add-int/2addr p2, p5

    invoke-static {p1, p2, p7, p3}, Lcom/jme3/texture/image/ByteAlignedImageCodec;->writePixelRaw(Ljava/nio/ByteBuffer;I[BI)V

    return-void
.end method
