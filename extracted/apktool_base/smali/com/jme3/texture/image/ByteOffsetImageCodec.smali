.class public Lcom/jme3/texture/image/ByteOffsetImageCodec;
.super Lcom/jme3/texture/image/ImageCodec;
.source "SourceFile"


# instance fields
.field private final alphaPos:I

.field private final bluePos:I

.field private final greenPos:I

.field private final redPos:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 12

    move-object v7, p0

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    const/4 v0, 0x0

    const/16 v1, 0xff

    const/4 v2, -0x1

    if-eq v8, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eq v9, v2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-eq v10, v2, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    if-eq v11, v2, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v0

    :goto_3
    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/image/ImageCodec;-><init>(IIIIII)V

    iput v8, v7, Lcom/jme3/texture/image/ByteOffsetImageCodec;->alphaPos:I

    iput v9, v7, Lcom/jme3/texture/image/ByteOffsetImageCodec;->redPos:I

    iput v10, v7, Lcom/jme3/texture/image/ByteOffsetImageCodec;->greenPos:I

    iput v11, v7, Lcom/jme3/texture/image/ByteOffsetImageCodec;->bluePos:I

    return-void
.end method


# virtual methods
.method public readComponents(Ljava/nio/ByteBuffer;IIII[I[B)V
    .locals 0

    mul-int/2addr p3, p4

    add-int/2addr p3, p2

    iget p2, p0, Lcom/jme3/texture/image/ImageCodec;->bpp:I

    mul-int/2addr p3, p2

    add-int/2addr p3, p5

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget p2, p0, Lcom/jme3/texture/image/ImageCodec;->bpp:I

    const/4 p3, 0x0

    invoke-virtual {p1, p7, p3, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/jme3/texture/image/ByteOffsetImageCodec;->alphaPos:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    aget-byte p1, p7, p1

    and-int/lit16 p1, p1, 0xff

    aput p1, p6, p3

    :cond_0
    iget p1, p0, Lcom/jme3/texture/image/ByteOffsetImageCodec;->redPos:I

    if-eq p1, p2, :cond_1

    aget-byte p1, p7, p1

    and-int/lit16 p1, p1, 0xff

    const/4 p3, 0x1

    aput p1, p6, p3

    :cond_1
    iget p1, p0, Lcom/jme3/texture/image/ByteOffsetImageCodec;->greenPos:I

    if-eq p1, p2, :cond_2

    aget-byte p1, p7, p1

    and-int/lit16 p1, p1, 0xff

    const/4 p3, 0x2

    aput p1, p6, p3

    :cond_2
    iget p1, p0, Lcom/jme3/texture/image/ByteOffsetImageCodec;->bluePos:I

    if-eq p1, p2, :cond_3

    aget-byte p1, p7, p1

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x3

    aput p1, p6, p2

    :cond_3
    return-void
.end method

.method public writeComponents(Ljava/nio/ByteBuffer;IIII[I[B)V
    .locals 1

    mul-int/2addr p3, p4

    add-int/2addr p3, p2

    iget p2, p0, Lcom/jme3/texture/image/ImageCodec;->bpp:I

    mul-int/2addr p3, p2

    add-int/2addr p3, p5

    iget p2, p0, Lcom/jme3/texture/image/ByteOffsetImageCodec;->alphaPos:I

    const/4 p4, 0x0

    const/4 p5, -0x1

    if-eq p2, p5, :cond_0

    aget v0, p6, p4

    int-to-byte v0, v0

    aput-byte v0, p7, p2

    :cond_0
    iget p2, p0, Lcom/jme3/texture/image/ByteOffsetImageCodec;->redPos:I

    if-eq p2, p5, :cond_1

    const/4 v0, 0x1

    aget v0, p6, v0

    int-to-byte v0, v0

    aput-byte v0, p7, p2

    :cond_1
    iget p2, p0, Lcom/jme3/texture/image/ByteOffsetImageCodec;->greenPos:I

    if-eq p2, p5, :cond_2

    const/4 v0, 0x2

    aget v0, p6, v0

    int-to-byte v0, v0

    aput-byte v0, p7, p2

    :cond_2
    iget p2, p0, Lcom/jme3/texture/image/ByteOffsetImageCodec;->bluePos:I

    if-eq p2, p5, :cond_3

    const/4 p5, 0x3

    aget p5, p6, p5

    int-to-byte p5, p5

    aput-byte p5, p7, p2

    :cond_3
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget p2, p0, Lcom/jme3/texture/image/ImageCodec;->bpp:I

    invoke-virtual {p1, p7, p4, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method
