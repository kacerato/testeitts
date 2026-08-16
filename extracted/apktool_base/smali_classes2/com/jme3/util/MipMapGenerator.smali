.class public final Lcom/jme3/util/MipMapGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/MipMapGenerator$MipChain;,
        Lcom/jme3/util/MipMapGenerator$PixelAccumulator;
    }
.end annotation


# static fields
.field private static final EPSILON_ALPHA:F = 1.0E-8f


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areaResample(Lcom/jme3/texture/image/ImageRaster;Lcom/jme3/texture/image/ImageRaster;ZZ)V
    .locals 38

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/image/ImageRaster;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/image/ImageRaster;->getHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/image/ImageRaster;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/image/ImageRaster;->getHeight()I

    move-result v5

    int-to-double v6, v2

    int-to-double v8, v4

    div-double/2addr v6, v8

    int-to-double v8, v3

    int-to-double v10, v5

    div-double/2addr v8, v10

    new-instance v10, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v10}, Lcom/jme3/math/ColorRGBA;-><init>()V

    new-instance v11, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v11}, Lcom/jme3/math/ColorRGBA;-><init>()V

    new-instance v12, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;-><init>(Lcom/jme3/util/MipMapGenerator$1;)V

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v5, :cond_5

    int-to-double v0, v14

    mul-double/2addr v0, v8

    add-int/lit8 v15, v14, 0x1

    move/from16 v16, v14

    int-to-double v13, v15

    mul-double/2addr v13, v8

    move-wide/from16 v17, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_4

    move v11, v3

    move/from16 v21, v4

    int-to-double v3, v10

    mul-double/2addr v3, v6

    move/from16 v22, v5

    add-int/lit8 v5, v10, 0x1

    move/from16 v23, v10

    move/from16 v24, v11

    int-to-double v10, v5

    mul-double/2addr v10, v6

    move-wide/from16 v25, v6

    move v7, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    move/from16 v28, v7

    move/from16 v27, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v12}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->clear()V

    move/from16 v7, v27

    :goto_2
    if-ge v7, v9, :cond_3

    move/from16 v29, v9

    int-to-double v8, v7

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v30

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v32

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    sub-double v8, v8, v30

    move-wide/from16 v30, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x0

    cmpg-float v34, v8, v9

    if-gtz v34, :cond_1

    :cond_0
    move/from16 v35, v2

    move-wide/from16 v36, v3

    move-object/from16 v1, v19

    move-object/from16 v4, p0

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_5

    :cond_1
    move v9, v5

    :goto_3
    if-ge v9, v6, :cond_0

    int-to-double v0, v9

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v35

    add-double v0, v0, v32

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    sub-double v0, v0, v35

    move/from16 v35, v2

    move-wide/from16 v36, v3

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v4, v0, v1

    if-gtz v4, :cond_2

    move-object/from16 v4, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v1, v19

    goto :goto_4

    :cond_2
    mul-float/2addr v0, v8

    move-object/from16 v4, p0

    move-object/from16 v1, v19

    invoke-virtual {v4, v9, v7, v1}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v12, v1, v0, v2, v3}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->add(Lcom/jme3/math/ColorRGBA;FZZ)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v19, v1

    move/from16 v2, v35

    move-wide/from16 v3, v36

    const-wide/16 v0, 0x0

    goto :goto_3

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v19, v1

    move/from16 v9, v29

    move-wide/from16 v0, v30

    move/from16 v2, v35

    move-wide/from16 v3, v36

    goto :goto_2

    :cond_3
    move-object/from16 v4, p0

    move/from16 v3, p3

    move-wide/from16 v30, v0

    move/from16 v35, v2

    move/from16 v29, v9

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v2, p2

    invoke-virtual {v12, v0, v2, v3}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->toColor(Lcom/jme3/math/ColorRGBA;ZZ)V

    move-object/from16 v5, p1

    move/from16 v6, v16

    move/from16 v7, v23

    invoke-virtual {v5, v7, v6, v0}, Lcom/jme3/texture/image/ImageRaster;->setPixel(IILcom/jme3/math/ColorRGBA;)V

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v3, v24

    move-wide/from16 v6, v25

    move/from16 v8, v27

    move/from16 v10, v28

    move-wide/from16 v0, v30

    move/from16 v2, v35

    goto/16 :goto_1

    :cond_4
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move v14, v15

    move-wide/from16 v8, v17

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move/from16 v4, v21

    move/from16 v5, v22

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private static bilinearResample(Lcom/jme3/texture/image/ImageRaster;Lcom/jme3/texture/image/ImageRaster;ZZ)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/image/ImageRaster;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/image/ImageRaster;->getHeight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/image/ImageRaster;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/image/ImageRaster;->getHeight()I

    move-result v6

    int-to-double v7, v3

    int-to-double v9, v5

    div-double/2addr v7, v9

    int-to-double v9, v4

    int-to-double v11, v6

    div-double/2addr v9, v11

    new-instance v11, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v11}, Lcom/jme3/math/ColorRGBA;-><init>()V

    new-instance v12, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v12}, Lcom/jme3/math/ColorRGBA;-><init>()V

    new-instance v13, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;-><init>(Lcom/jme3/util/MipMapGenerator$1;)V

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v6, :cond_5

    int-to-double v1, v15

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v1, v1, v16

    mul-double/2addr v1, v9

    sub-double v1, v1, v16

    move/from16 v18, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    move-wide/from16 v19, v9

    int-to-double v9, v14

    sub-double/2addr v1, v9

    if-gez v14, :cond_0

    const-wide/16 v1, 0x0

    const/4 v14, 0x0

    :cond_0
    add-int/lit8 v15, v14, 0x1

    if-lt v15, v4, :cond_1

    add-int/lit8 v14, v4, -0x1

    move v15, v14

    const-wide/16 v1, 0x0

    :cond_1
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    sub-double v9, v21, v1

    double-to-float v9, v9

    double-to-float v1, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    move v10, v4

    move/from16 v23, v5

    int-to-double v4, v2

    add-double v4, v4, v16

    mul-double/2addr v4, v7

    sub-double v4, v4, v16

    move/from16 v24, v6

    move-wide/from16 v25, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-double v7, v6

    sub-double/2addr v4, v7

    if-gez v6, :cond_2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :cond_2
    add-int/lit8 v7, v6, 0x1

    if-lt v7, v3, :cond_3

    add-int/lit8 v6, v3, -0x1

    move/from16 v27, v2

    move v8, v3

    move v7, v6

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_3
    move/from16 v27, v2

    move v8, v3

    :goto_2
    sub-double v2, v21, v4

    double-to-float v2, v2

    double-to-float v3, v4

    invoke-virtual {v13}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->clear()V

    invoke-virtual {v0, v6, v14, v11}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    mul-float v4, v2, v9

    move/from16 v5, p2

    move/from16 v28, v8

    move/from16 v8, p3

    invoke-virtual {v13, v11, v4, v5, v8}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->add(Lcom/jme3/math/ColorRGBA;FZZ)V

    invoke-virtual {v0, v7, v14, v11}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    mul-float v4, v3, v9

    invoke-virtual {v13, v11, v4, v5, v8}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->add(Lcom/jme3/math/ColorRGBA;FZZ)V

    invoke-virtual {v0, v6, v15, v11}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    mul-float/2addr v2, v1

    invoke-virtual {v13, v11, v2, v5, v8}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->add(Lcom/jme3/math/ColorRGBA;FZZ)V

    invoke-virtual {v0, v7, v15, v11}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    mul-float/2addr v3, v1

    invoke-virtual {v13, v11, v3, v5, v8}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->add(Lcom/jme3/math/ColorRGBA;FZZ)V

    invoke-virtual {v13, v12, v5, v8}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->toColor(Lcom/jme3/math/ColorRGBA;ZZ)V

    move-object/from16 v2, p1

    move/from16 v3, v18

    move/from16 v4, v27

    invoke-virtual {v2, v4, v3, v12}, Lcom/jme3/texture/image/ImageRaster;->setPixel(IILcom/jme3/math/ColorRGBA;)V

    add-int/lit8 v4, v4, 0x1

    move v2, v4

    move v4, v10

    move/from16 v5, v23

    move/from16 v6, v24

    move-wide/from16 v7, v25

    move/from16 v3, v28

    goto :goto_1

    :cond_4
    move-object/from16 v2, p1

    move/from16 v28, v3

    move v10, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move-wide/from16 v25, v7

    move/from16 v3, v18

    move/from16 v5, p2

    move/from16 v8, p3

    add-int/lit8 v15, v3, 0x1

    move v1, v5

    move v2, v8

    move-wide/from16 v9, v19

    move/from16 v5, v23

    move-wide/from16 v7, v25

    move/from16 v3, v28

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static canGenerateMipmaps(Lcom/jme3/texture/Image;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v1

    if-lt v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getDepth()I

    move-result v1

    if-gt v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->isCompressed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v1

    if-lez v1, :cond_5

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/jme3/util/MipMapGenerator;->levelSize(Lcom/jme3/texture/Image$Format;II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    if-ge v3, v1, :cond_2

    :cond_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p0

    invoke-static {p0}, Lcom/jme3/texture/image/ImageRaster;->isSupported(Lcom/jme3/texture/Image$Format;)Z

    move-result p0

    return p0

    :catch_0
    :cond_5
    :goto_0
    return v0
.end method

.method private static copyBaseLevel(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image data is smaller than expected base level size. Data capacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", expected="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image data buffer is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateMipChainForSlice(Lcom/jme3/texture/Image;IIIZZ)Lcom/jme3/util/MipMapGenerator$MipChain;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move v7, p2

    move v8, p3

    invoke-static {v2, p2, p3}, Lcom/jme3/util/MipMapGenerator;->levelSize(Lcom/jme3/texture/Image$Format;II)I

    move-result v3

    invoke-static {v1, v3}, Lcom/jme3/util/MipMapGenerator;->copyBaseLevel(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v9

    new-instance v10, Lcom/jme3/texture/Image;

    move-object v1, v10

    move v3, p2

    move v4, p3

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v9, 0x0

    const/4 v2, 0x1

    if-gt v7, v2, :cond_3

    if-le v8, v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    move v2, v9

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v9, v3, :cond_1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    aput v3, v1, v9

    add-int/2addr v2, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v0, Lcom/jme3/util/MipMapGenerator$MipChain;

    invoke-direct {v0, v2, v1}, Lcom/jme3/util/MipMapGenerator$MipChain;-><init>(Ljava/nio/ByteBuffer;[I)V

    return-object v0

    :cond_3
    :goto_3
    div-int/lit8 v7, v7, 0x2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-int/lit8 v8, v8, 0x2

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v2, 0x0

    move v3, v7

    move v4, v8

    move v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/jme3/util/MipMapGenerator;->scaleLevel(Lcom/jme3/texture/Image;IIIZZ)Lcom/jme3/texture/Image;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static generateMipMaps(Lcom/jme3/texture/Image;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0}, Lcom/jme3/util/MipMapGenerator;->isSrgb(Lcom/jme3/texture/Image;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/jme3/util/MipMapGenerator;->generateMipMaps(Lcom/jme3/texture/Image;ZZ)V

    return-void
.end method

.method public static generateMipMaps(Lcom/jme3/texture/Image;ZZ)V
    .locals 12

    .line 2
    invoke-static {p0}, Lcom/jme3/util/MipMapGenerator;->validateImage(Lcom/jme3/texture/Image;)V

    .line 3
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v6

    .line 4
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v7

    .line 5
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_0

    move-object v0, p0

    move v1, v11

    move v2, v6

    move v3, v7

    move v4, p1

    move v5, p2

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/jme3/util/MipMapGenerator;->generateMipChainForSlice(Lcom/jme3/texture/Image;IIIZZ)Lcom/jme3/util/MipMapGenerator$MipChain;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move p1, v10

    .line 8
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 9
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/util/MipMapGenerator$MipChain;

    iget-object p2, p2, Lcom/jme3/util/MipMapGenerator$MipChain;->combinedData:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/texture/Image;->setData(ILjava/nio/ByteBuffer;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/util/MipMapGenerator$MipChain;

    iget-object p1, p1, Lcom/jme3/util/MipMapGenerator$MipChain;->mipSizes:[I

    invoke-virtual {p0, p1}, Lcom/jme3/texture/Image;->setMipMapSizes([I)V

    :cond_2
    return-void
.end method

.method private static isSrgb(Lcom/jme3/texture/Image;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v0

    sget-object v1, Lcom/jme3/texture/image/ColorSpace;->sRGB:Lcom/jme3/texture/image/ColorSpace;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "srgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static levelSize(Lcom/jme3/texture/Image$Format;II)I
    .locals 9

    invoke-virtual {p0}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v0

    int-to-long v1, p1

    int-to-long v3, p2

    mul-long/2addr v1, v3

    int-to-long v3, v0

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x8

    rem-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    const-string v5, " "

    const-string v6, "x"

    if-nez v0, :cond_1

    div-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    long-to-int p0, v1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image level is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image level is not byte-addressable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resizeToPowerOf2(Lcom/jme3/texture/Image;)Lcom/jme3/texture/Image;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->nearestPowerOfTwo(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/math/FastMath;->nearestPowerOfTwo(I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/jme3/util/MipMapGenerator;->scaleImage(Lcom/jme3/texture/Image;II)Lcom/jme3/texture/Image;

    move-result-object p0

    return-object p0
.end method

.method public static scaleImage(Lcom/jme3/texture/Image;II)Lcom/jme3/texture/Image;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0}, Lcom/jme3/util/MipMapGenerator;->isSrgb(Lcom/jme3/texture/Image;)Z

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/jme3/util/MipMapGenerator;->scaleImage(Lcom/jme3/texture/Image;IIZZ)Lcom/jme3/texture/Image;

    move-result-object p0

    return-object p0
.end method

.method public static scaleImage(Lcom/jme3/texture/Image;IIZZ)Lcom/jme3/texture/Image;
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/jme3/util/MipMapGenerator;->scaleLevel(Lcom/jme3/texture/Image;IIIZZ)Lcom/jme3/texture/Image;

    move-result-object p0

    return-object p0
.end method

.method private static scaleLevel(Lcom/jme3/texture/Image;IIIZZ)Lcom/jme3/texture/Image;
    .locals 8

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    if-lt p3, v0, :cond_2

    invoke-static {p0}, Lcom/jme3/util/MipMapGenerator;->validateImage(Lcom/jme3/texture/Image;)V

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/jme3/util/MipMapGenerator;->levelSize(Lcom/jme3/texture/Image$Format;II)I

    move-result v1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    new-instance v1, Lcom/jme3/texture/Image;

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v7

    move-object v2, v1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, p4}, Lcom/jme3/texture/image/ImageRaster;->create(Lcom/jme3/texture/Image;IIZ)Lcom/jme3/texture/image/ImageRaster;

    move-result-object p1

    invoke-static {v1, v2, v2, p4}, Lcom/jme3/texture/image/ImageRaster;->create(Lcom/jme3/texture/Image;IIZ)Lcom/jme3/texture/image/ImageRaster;

    move-result-object p4

    invoke-virtual {p1}, Lcom/jme3/texture/image/ImageRaster;->getWidth()I

    move-result v3

    if-gt p2, v3, :cond_0

    invoke-virtual {p1}, Lcom/jme3/texture/image/ImageRaster;->getHeight()I

    move-result p2

    if-gt p3, p2, :cond_0

    move v2, v0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/texture/Image$Format;->isFloatingPont()Z

    move-result p0

    xor-int/2addr p0, v0

    if-eqz v2, :cond_1

    invoke-static {p1, p4, p5, p0}, Lcom/jme3/util/MipMapGenerator;->areaResample(Lcom/jme3/texture/image/ImageRaster;Lcom/jme3/texture/image/ImageRaster;ZZ)V

    goto :goto_0

    :cond_1
    invoke-static {p1, p4, p5, p0}, Lcom/jme3/util/MipMapGenerator;->bilinearResample(Lcom/jme3/texture/image/ImageRaster;Lcom/jme3/texture/image/ImageRaster;ZZ)V

    :goto_0
    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Output size must be at least 1x1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateImage(Lcom/jme3/texture/Image;)V
    .locals 5

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v0

    if-lez v0, :cond_3

    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/jme3/util/MipMapGenerator;->levelSize(Lcom/jme3/texture/Image$Format;II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "Image data buffer "

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    if-lt v4, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is smaller than expected base level size. Data capacity="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expected="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPU mipmap generation requires byte-addressable formats. Unsupported format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bits per pixel"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image has no data buffers"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image size must be at least 1x1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
