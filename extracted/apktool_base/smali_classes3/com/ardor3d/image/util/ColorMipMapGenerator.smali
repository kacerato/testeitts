.class public abstract Lcom/ardor3d/image/util/ColorMipMapGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateColorMipMap(I[Lcom/ardor3d/math/ColorRGBA;Lcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/image/Image;
    .locals 12

    invoke-static {p0}, Lcom/ardor3d/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Lcom/ardor3d/math/MathUtils;->log(DD)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    mul-int v2, p0, p0

    mul-int/lit8 v2, v2, 0x4

    new-array v9, v0, [I

    const/4 v3, 0x0

    aput v2, v9, v3

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_0

    add-int/lit8 v5, v4, -0x1

    aget v5, v9, v5

    shr-int/2addr v5, v1

    aput v5, v9, v4

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {p2}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    invoke-virtual {p2}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result p2

    mul-float/2addr p2, v4

    float-to-int p2, p2

    filled-new-array {v2, v5, p2}, [I

    move-result-object p2

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_3

    aget v5, v9, v2

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    sub-int v7, v0, v2

    array-length v10, p1

    add-int/2addr v7, v10

    int-to-float v7, v7

    int-to-float v10, v0

    div-float/2addr v7, v10

    move v10, v3

    :goto_2
    if-ge v10, v5, :cond_2

    array-length v11, p1

    if-lt v2, v11, :cond_1

    aget v11, p2, v3

    int-to-float v11, v11

    mul-float/2addr v11, v7

    float-to-int v11, v11

    int-to-byte v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    aget v11, p2, v1

    int-to-float v11, v11

    mul-float/2addr v11, v7

    float-to-int v11, v11

    int-to-byte v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    aget v11, p2, v6

    int-to-float v11, v11

    mul-float/2addr v11, v7

    float-to-int v11, v11

    int-to-byte v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_1
    aget-object v11, p1, v2

    invoke-virtual {v11}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v11

    mul-float/2addr v11, v4

    float-to-int v11, v11

    int-to-byte v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    aget-object v11, p1, v2

    invoke-virtual {v11}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v11

    mul-float/2addr v11, v4

    float-to-int v11, v11

    int-to-byte v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    aget-object v11, p1, v2

    invoke-virtual {v11}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v11

    mul-float/2addr v11, v4

    float-to-int v11, v11

    int-to-byte v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_3
    const/4 v11, -0x1

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance p1, Lcom/ardor3d/image/Image;

    sget-object v4, Lcom/ardor3d/image/ImageDataFormat;->RGBA:Lcom/ardor3d/image/ImageDataFormat;

    sget-object v5, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    move-object v3, p1

    move v6, p0

    move v7, p0

    invoke-direct/range {v3 .. v9}, Lcom/ardor3d/image/Image;-><init>(Lcom/ardor3d/image/ImageDataFormat;Lcom/ardor3d/image/ImageDataType;IILjava/nio/ByteBuffer;[I)V

    return-object p1

    :cond_4
    new-instance p0, Lcom/ardor3d/util/Ardor3dException;

    const-string p1, "size must be power of two!"

    invoke-direct {p0, p1}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
