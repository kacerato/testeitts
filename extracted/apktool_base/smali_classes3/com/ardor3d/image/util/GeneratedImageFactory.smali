.class public abstract Lcom/ardor3d/image/util/GeneratedImageFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs create1DColorImage(Z[Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/image/Image;
    .locals 8

    array-length v0, p1

    if-eqz p0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_1

    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/ardor3d/image/ImageDataFormat;->RGBA:Lcom/ardor3d/image/ImageDataFormat;

    :goto_2
    move-object v2, p0

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/ardor3d/image/ImageDataFormat;->RGB:Lcom/ardor3d/image/ImageDataFormat;

    goto :goto_2

    :goto_3
    new-instance p0, Lcom/ardor3d/image/Image;

    sget-object v3, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    array-length v4, p1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/image/Image;-><init>(Lcom/ardor3d/image/ImageDataFormat;Lcom/ardor3d/image/ImageDataType;IILjava/nio/ByteBuffer;[I)V

    return-object p0
.end method

.method public static varargs createColorImageFromLuminance8(Lcom/ardor3d/image/Image;Z[Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/image/Image;
    .locals 15

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/ardor3d/image/Image;->getDepth()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/ardor3d/image/Image;->getDepth()I

    move-result v2

    if-ge v1, v2, :cond_3

    move-object v2, p0

    invoke-virtual {p0, v1}, Lcom/ardor3d/image/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    if-eqz p1, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :cond_0
    const/4 v6, 0x3

    :goto_1
    mul-int/2addr v6, v4

    invoke-static {v6}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    new-array v7, v7, [B

    move v8, v0

    move v9, v8

    :goto_2
    if-ge v8, v4, :cond_2

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    aget-object v10, p2, v10

    add-int/lit8 v11, v9, 0x1

    invoke-interface {v10}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v12

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v7, v9

    add-int/lit8 v12, v9, 0x2

    invoke-interface {v10}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v14

    mul-float/2addr v14, v13

    float-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v7, v11

    add-int/lit8 v11, v9, 0x3

    invoke-interface {v10}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v14

    mul-float/2addr v14, v13

    float-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v7, v12

    if-eqz p1, :cond_1

    add-int/lit8 v9, v9, 0x4

    invoke-interface {v10}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result v10

    mul-float/2addr v10, v13

    float-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v7, v11

    goto :goto_3

    :cond_1
    move v9, v11

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v2, p0

    new-instance v7, Lcom/ardor3d/image/Image;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->RGBA:Lcom/ardor3d/image/ImageDataFormat;

    :goto_4
    move-object v1, v0

    goto :goto_5

    :cond_4
    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->RGB:Lcom/ardor3d/image/ImageDataFormat;

    goto :goto_4

    :goto_5
    sget-object v3, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    invoke-virtual {p0}, Lcom/ardor3d/image/Image;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/ardor3d/image/Image;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    move-object v0, v7

    move-object v2, v3

    move v3, v4

    move v4, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/image/Image;-><init>(Lcom/ardor3d/image/ImageDataFormat;Lcom/ardor3d/image/ImageDataType;IILjava/util/List;[I)V

    return-object v7
.end method

.method public static createLuminance8Image(Lcom/ardor3d/math/functions/Function3D;III)Lcom/ardor3d/image/Image;
    .locals 26

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    move-wide v8, v6

    goto :goto_0

    :cond_0
    move-wide v8, v4

    :goto_0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-ne v1, v0, :cond_1

    move-wide v12, v6

    goto :goto_1

    :cond_1
    move-wide v12, v10

    :goto_1
    if-ne v2, v0, :cond_2

    move-wide v14, v6

    goto :goto_2

    :cond_2
    move-wide v14, v4

    :goto_2
    if-ne v2, v0, :cond_3

    move-wide/from16 v20, v6

    goto :goto_3

    :cond_3
    move-wide/from16 v20, v10

    :goto_3
    if-ne v3, v0, :cond_4

    move-wide/from16 v22, v6

    goto :goto_4

    :cond_4
    move-wide/from16 v22, v4

    :goto_4
    if-ne v3, v0, :cond_5

    move-wide/from16 v24, v6

    goto :goto_5

    :cond_5
    move-wide/from16 v24, v10

    :goto_5
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide v4, v8

    move-wide v6, v12

    move-wide v8, v14

    move-wide/from16 v10, v20

    move-wide/from16 v12, v22

    move-wide/from16 v14, v24

    .line 1
    invoke-static/range {v0 .. v19}, Lcom/ardor3d/image/util/GeneratedImageFactory;->createLuminance8Image(Lcom/ardor3d/math/functions/Function3D;IIIDDDDDDDD)Lcom/ardor3d/image/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createLuminance8Image(Lcom/ardor3d/math/functions/Function3D;IIIDDDDDDDD)Lcom/ardor3d/image/Image;
    .locals 36

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    sub-double v3, p18, p16

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double v11, v9, v3

    .line 2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    mul-int v14, v0, v1

    .line 3
    new-array v15, v14, [B

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    :goto_0
    int-to-double v3, v2

    cmpg-double v5, v18, v3

    if-gez v5, :cond_2

    div-double v3, v18, v3

    sub-double v5, p14, p12

    mul-double/2addr v3, v5

    add-double v27, v3, p12

    const/4 v3, 0x0

    move-wide/from16 v29, v16

    :goto_1
    int-to-double v4, v1

    cmpg-double v6, v29, v4

    if-gez v6, :cond_1

    div-double v4, v29, v4

    sub-double v6, p10, p8

    mul-double/2addr v4, v6

    add-double v31, v4, p8

    move/from16 v33, v3

    move-wide/from16 v34, v16

    :goto_2
    int-to-double v3, v0

    cmpg-double v5, v34, v3

    if-gez v5, :cond_0

    div-double v3, v34, v3

    sub-double v5, p6, p4

    mul-double/2addr v3, v5

    add-double v21, v3, p4

    move-object/from16 v20, p0

    move-wide/from16 v23, v31

    move-wide/from16 v25, v27

    .line 4
    invoke-interface/range {v20 .. v26}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v3

    move-wide/from16 v5, p16

    move-wide/from16 v7, p18

    .line 5
    invoke-static/range {v3 .. v8}, Lcom/ardor3d/math/MathUtils;->clamp(DDD)D

    move-result-wide v3

    sub-double v3, v3, p16

    mul-double/2addr v3, v11

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double/2addr v3, v5

    add-int/lit8 v5, v33, 0x1

    double-to-int v3, v3

    int-to-byte v3, v3

    .line 6
    aput-byte v3, v15, v33

    add-double v34, v34, v9

    move/from16 v33, v5

    goto :goto_2

    :cond_0
    add-double v29, v29, v9

    move/from16 v3, v33

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v14}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-double v18, v18, v9

    goto :goto_0

    .line 10
    :cond_2
    new-instance v2, Lcom/ardor3d/image/Image;

    sget-object v3, Lcom/ardor3d/image/ImageDataFormat;->Luminance:Lcom/ardor3d/image/ImageDataFormat;

    sget-object v4, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    const/4 v5, 0x0

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move/from16 p6, p1

    move/from16 p7, p2

    move-object/from16 p8, v13

    move-object/from16 p9, v5

    invoke-direct/range {p3 .. p9}, Lcom/ardor3d/image/Image;-><init>(Lcom/ardor3d/image/ImageDataFormat;Lcom/ardor3d/image/ImageDataType;IILjava/util/List;[I)V

    return-object v2
.end method

.method public static createSolidColorImage(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;ZI)Lcom/ardor3d/image/Image;
    .locals 11

    mul-int v0, p2, p2

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    mul-int/2addr v3, v0

    invoke-static {v3}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    new-array v1, v1, [B

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-byte v3, v3

    const/4 v5, 0x0

    aput-byte v3, v1, v5

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-byte v3, v3

    const/4 v6, 0x1

    aput-byte v3, v1, v6

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-byte v3, v3

    const/4 v6, 0x2

    aput-byte v3, v1, v6

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p0

    mul-float/2addr p0, v4

    float-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v1, v2

    :cond_2
    :goto_2
    if-ge v5, v0, :cond_3

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    if-eqz p1, :cond_4

    sget-object p0, Lcom/ardor3d/image/ImageDataFormat;->RGBA:Lcom/ardor3d/image/ImageDataFormat;

    :goto_3
    move-object v5, p0

    goto :goto_4

    :cond_4
    sget-object p0, Lcom/ardor3d/image/ImageDataFormat;->RGB:Lcom/ardor3d/image/ImageDataFormat;

    goto :goto_3

    :goto_4
    new-instance p0, Lcom/ardor3d/image/Image;

    sget-object v6, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    const/4 v10, 0x0

    move-object v4, p0

    move v7, p2

    move v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/ardor3d/image/Image;-><init>(Lcom/ardor3d/image/ImageDataFormat;Lcom/ardor3d/image/ImageDataType;IILjava/nio/ByteBuffer;[I)V

    return-object p0
.end method

.method public static fillInColorTable([Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 8

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    sget-object v1, Lcom/ardor3d/math/ColorRGBA;->BLACK:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    aput-object v1, p0, v0

    :cond_0
    const/16 v1, 0xff

    aget-object v2, p0, v1

    if-nez v2, :cond_1

    sget-object v2, Lcom/ardor3d/math/ColorRGBA;->WHITE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    aput-object v2, p0, v1

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/ardor3d/image/util/GeneratedImageFactory;->findNonNull(I[Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)I

    move-result v3

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v4, p0, v2

    if-eqz v4, :cond_3

    add-int/lit8 v0, v2, 0x1

    invoke-static {v0, p0}, Lcom/ardor3d/image/util/GeneratedImageFactory;->findNonNull(I[Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v0

    move v0, v2

    goto :goto_1

    :cond_3
    sub-int v4, v2, v0

    int-to-float v4, v4

    sub-int v5, v3, v0

    int-to-float v5, v5

    div-float/2addr v4, v5

    aget-object v5, p0, v0

    aget-object v6, p0, v3

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7}, Lcom/ardor3d/math/ColorRGBA;->lerp(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;FLcom/ardor3d/math/ColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v4

    aput-object v4, p0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private static findNonNull(I[Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)I
    .locals 1

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-object v0, p1, p0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
