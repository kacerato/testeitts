.class public Lcom/jme3/texture/image/MipMapImageRaster;
.super Lcom/jme3/texture/image/ImageRaster;
.source "SourceFile"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private final codec:Lcom/jme3/texture/image/ImageCodec;

.field private final components:[I

.field private height:[I

.field private final image:Lcom/jme3/texture/Image;

.field private mipLevel:I

.field private offsets:[I

.field private slice:I

.field private final temp:[B

.field private width:[I


# direct methods
.method public constructor <init>(Lcom/jme3/texture/Image;I)V
    .locals 5

    invoke-direct {p0}, Lcom/jme3/texture/image/ImageRaster;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iput-object p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->image:Lcom/jme3/texture/Image;

    iput p2, p0, Lcom/jme3/texture/image/MipMapImageRaster;->slice:I

    invoke-virtual {p1, p2}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/texture/image/MipMapImageRaster;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p2

    invoke-static {p2}, Lcom/jme3/texture/image/ImageCodec;->lookup(Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/image/ImageCodec;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/texture/image/MipMapImageRaster;->codec:Lcom/jme3/texture/image/ImageCodec;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object p2

    array-length p2, p2

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->width:[I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->height:[I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->offsets:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->width:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v2

    shr-int/2addr v2, v0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->height:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v2

    shr-int/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->offsets:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    iget-object v4, p0, Lcom/jme3/texture/image/MipMapImageRaster;->offsets:[I

    aget v3, v4, v3

    add-int/2addr v2, v3

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->codec:Lcom/jme3/texture/image/ImageCodec;

    instance-of p2, p1, Lcom/jme3/texture/image/ByteAlignedImageCodec;

    if-nez p2, :cond_3

    instance-of p2, p1, Lcom/jme3/texture/image/ByteOffsetImageCodec;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->temp:[B

    goto :goto_2

    :cond_3
    :goto_1
    iget p1, p1, Lcom/jme3/texture/image/ImageCodec;->bpp:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->temp:[B

    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Image must have MipMapSizes initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->image:Lcom/jme3/texture/Image;

    iget v1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->slice:I

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->buffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private rangeCheck(II)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->width:[I

    iget v1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->mipLevel:I

    aget v0, v0, v1

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->height:[I

    aget p1, p1, v1

    if-ge p2, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x and y must be inside the image dimensions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->height:[I

    iget v1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->mipLevel:I

    aget v0, v0, v1

    return v0
.end method

.method public getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/jme3/texture/image/MipMapImageRaster;->rangeCheck(II)V

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->codec:Lcom/jme3/texture/image/ImageCodec;

    invoke-direct {p0}, Lcom/jme3/texture/image/MipMapImageRaster;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/texture/image/MipMapImageRaster;->width:[I

    iget v3, p0, Lcom/jme3/texture/image/MipMapImageRaster;->mipLevel:I

    aget v4, v2, v3

    iget-object v2, p0, Lcom/jme3/texture/image/MipMapImageRaster;->offsets:[I

    aget v5, v2, v3

    iget-object v6, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget-object v7, p0, Lcom/jme3/texture/image/MipMapImageRaster;->temp:[B

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/jme3/texture/image/ImageCodec;->readComponents(Ljava/nio/ByteBuffer;IIII[I[B)V

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p3}, Lcom/jme3/math/ColorRGBA;-><init>()V

    :cond_0
    iget-object p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->codec:Lcom/jme3/texture/image/ImageCodec;

    iget p2, p1, Lcom/jme3/texture/image/ImageCodec;->type:I

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    aget p1, p1, v3

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-object p2, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    aget p2, p2, v2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-object v2, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    aget v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget-object v2, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    aget v0, v2, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p3, p1, p2, v1, v0}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    aget p1, p1, v3

    int-to-short p1, p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->convertHalfToFloat(S)F

    move-result p1

    iget-object p2, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    aget p2, p2, v2

    int-to-short p2, p2

    invoke-static {p2}, Lcom/jme3/math/FastMath;->convertHalfToFloat(S)F

    move-result p2

    iget-object v2, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    aget v1, v2, v1

    int-to-short v1, v1

    invoke-static {v1}, Lcom/jme3/math/FastMath;->convertHalfToFloat(S)F

    move-result v1

    iget-object v2, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    aget v0, v2, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->convertHalfToFloat(S)F

    move-result v0

    invoke-virtual {p3, p1, p2, v1, v0}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    aget v3, p2, v3

    int-to-float v3, v3

    iget v4, p1, Lcom/jme3/texture/image/ImageCodec;->maxRed:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget v2, p2, v2

    int-to-float v2, v2

    iget v4, p1, Lcom/jme3/texture/image/ImageCodec;->maxGreen:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    aget v1, p2, v1

    int-to-float v1, v1

    iget v4, p1, Lcom/jme3/texture/image/ImageCodec;->maxBlue:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    aget p2, p2, v0

    int-to-float p2, p2

    iget p1, p1, Lcom/jme3/texture/image/ImageCodec;->maxAlpha:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p3, v3, v2, v1, p2}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    :goto_0
    iget-object p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->codec:Lcom/jme3/texture/image/ImageCodec;

    iget-boolean p2, p1, Lcom/jme3/texture/image/ImageCodec;->isGray:Z

    if-eqz p2, :cond_4

    iget p1, p3, Lcom/jme3/math/ColorRGBA;->r:F

    iput p1, p3, Lcom/jme3/math/ColorRGBA;->b:F

    iput p1, p3, Lcom/jme3/math/ColorRGBA;->g:F

    goto :goto_1

    :cond_4
    iget p2, p1, Lcom/jme3/texture/image/ImageCodec;->maxRed:I

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_5

    iput v0, p3, Lcom/jme3/math/ColorRGBA;->r:F

    :cond_5
    iget p2, p1, Lcom/jme3/texture/image/ImageCodec;->maxGreen:I

    if-nez p2, :cond_6

    iput v0, p3, Lcom/jme3/math/ColorRGBA;->g:F

    :cond_6
    iget p2, p1, Lcom/jme3/texture/image/ImageCodec;->maxBlue:I

    if-nez p2, :cond_7

    iput v0, p3, Lcom/jme3/math/ColorRGBA;->b:F

    :cond_7
    iget p1, p1, Lcom/jme3/texture/image/ImageCodec;->maxAlpha:I

    if-nez p1, :cond_8

    iput v0, p3, Lcom/jme3/math/ColorRGBA;->a:F

    :cond_8
    :goto_1
    return-object p3
.end method

.method public getWidth()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->width:[I

    iget v1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->mipLevel:I

    aget v0, v0, v1

    return v0
.end method

.method public setMipLevel(I)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->image:Lcom/jme3/texture/Image;

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->mipLevel:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mip level must be between 0 and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->image:Lcom/jme3/texture/Image;

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPixel(IILcom/jme3/math/ColorRGBA;)V
    .locals 11

    invoke-direct {p0, p1, p2}, Lcom/jme3/texture/image/MipMapImageRaster;->rangeCheck(II)V

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->codec:Lcom/jme3/texture/image/ImageCodec;

    iget-boolean v0, v0, Lcom/jme3/texture/image/ImageCodec;->isGray:Z

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/jme3/math/ColorRGBA;->r:F

    const v1, 0x3e8a3d71    # 0.27f

    mul-float/2addr v0, v1

    iget v1, p3, Lcom/jme3/math/ColorRGBA;->g:F

    const v2, 0x3f2b851f    # 0.67f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p3, Lcom/jme3/math/ColorRGBA;->b:F

    const v2, 0x3d75c28f    # 0.06f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    new-instance v1, Lcom/jme3/math/ColorRGBA;

    iget p3, p3, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-direct {v1, v0, v0, v0, p3}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    move-object p3, v1

    :cond_0
    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->codec:Lcom/jme3/texture/image/ImageCodec;

    iget v1, v0, Lcom/jme3/texture/image/ImageCodec;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget v1, p3, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget v1, p3, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget v1, p3, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget p3, p3, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    aput p3, v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget v1, p3, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->convertFloatToHalf(F)S

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget v1, p3, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->convertFloatToHalf(F)S

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget v1, p3, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->convertFloatToHalf(F)S

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget p3, p3, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-static {p3}, Lcom/jme3/math/FastMath;->convertFloatToHalf(F)S

    move-result p3

    aput p3, v0, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget v6, p3, Lcom/jme3/math/ColorRGBA;->a:F

    iget v0, v0, Lcom/jme3/texture/image/ImageCodec;->maxAlpha:I

    int-to-float v7, v0

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v1, v3

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget v1, p3, Lcom/jme3/math/ColorRGBA;->r:F

    iget-object v3, p0, Lcom/jme3/texture/image/MipMapImageRaster;->codec:Lcom/jme3/texture/image/ImageCodec;

    iget v3, v3, Lcom/jme3/texture/image/ImageCodec;->maxRed:I

    int-to-float v6, v3

    mul-float/2addr v1, v6

    add-float/2addr v1, v7

    float-to-int v1, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget v1, p3, Lcom/jme3/math/ColorRGBA;->g:F

    iget-object v3, p0, Lcom/jme3/texture/image/MipMapImageRaster;->codec:Lcom/jme3/texture/image/ImageCodec;

    iget v3, v3, Lcom/jme3/texture/image/ImageCodec;->maxGreen:I

    int-to-float v5, v3

    mul-float/2addr v1, v5

    add-float/2addr v1, v7

    float-to-int v1, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget p3, p3, Lcom/jme3/math/ColorRGBA;->b:F

    iget-object v1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->codec:Lcom/jme3/texture/image/ImageCodec;

    iget v1, v1, Lcom/jme3/texture/image/ImageCodec;->maxBlue:I

    int-to-float v3, v1

    mul-float/2addr p3, v3

    add-float/2addr p3, v7

    float-to-int p3, p3

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    aput p3, v0, v2

    :goto_0
    iget-object v3, p0, Lcom/jme3/texture/image/MipMapImageRaster;->codec:Lcom/jme3/texture/image/ImageCodec;

    invoke-direct {p0}, Lcom/jme3/texture/image/MipMapImageRaster;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object p3, p0, Lcom/jme3/texture/image/MipMapImageRaster;->width:[I

    iget v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->mipLevel:I

    aget v7, p3, v0

    iget-object p3, p0, Lcom/jme3/texture/image/MipMapImageRaster;->offsets:[I

    aget v8, p3, v0

    iget-object v9, p0, Lcom/jme3/texture/image/MipMapImageRaster;->components:[I

    iget-object v10, p0, Lcom/jme3/texture/image/MipMapImageRaster;->temp:[B

    move v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/jme3/texture/image/ImageCodec;->writeComponents(Ljava/nio/ByteBuffer;IIII[I[B)V

    iget-object p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->image:Lcom/jme3/texture/Image;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    return-void
.end method

.method public setSlice(I)V
    .locals 1

    iput p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->slice:I

    iget-object v0, p0, Lcom/jme3/texture/image/MipMapImageRaster;->image:Lcom/jme3/texture/Image;

    invoke-virtual {v0, p1}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/texture/image/MipMapImageRaster;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method
