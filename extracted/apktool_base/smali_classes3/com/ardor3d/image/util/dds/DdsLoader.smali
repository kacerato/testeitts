.class public Lcom/ardor3d/image/util/dds/DdsLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/image/util/ImageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/image/util/dds/DdsLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final populateImage(Lcom/ardor3d/image/Image;Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;Lcom/ardor3d/util/LittleEndianDataInput;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget-object v0, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->ddpf:Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    iget v0, v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwFlags:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v10

    const/16 v2, 0x40

    invoke-static {v0, v2}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v11

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v12

    const/high16 v3, 0x20000

    invoke-static {v0, v3}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v13

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v14

    if-eqz v10, :cond_8

    iget-object v0, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget-object v0, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->ddpf:Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    iget v0, v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwFourCC:I

    const-string v4, "DXT1"

    invoke-static {v4}, Lcom/ardor3d/image/util/dds/DdsUtils;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_0

    iput v1, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->bpp:I

    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "DDS format: DXT1A"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->PrecompressedDXT1A:Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v8, v0}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    goto/16 :goto_1

    :cond_0
    const-string v4, "DXT3"

    invoke-static {v4}, Lcom/ardor3d/image/util/dds/DdsUtils;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x8

    if-ne v0, v4, :cond_1

    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "DDS format: DXT3"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iput v5, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->bpp:I

    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->PrecompressedDXT3:Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v8, v0}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    goto/16 :goto_1

    :cond_1
    const-string v4, "DXT5"

    invoke-static {v4}, Lcom/ardor3d/image/util/dds/DdsUtils;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_2

    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "DDS format: DXT5"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iput v5, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->bpp:I

    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->PrecompressedDXT5:Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v8, v0}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    goto/16 :goto_1

    :cond_2
    const-string v4, "DX10"

    invoke-static {v4}, Lcom/ardor3d/image/util/dds/DdsUtils;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_5

    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader$1;->$SwitchMap$com$ardor3d$image$util$dds$DxgiFormat:[I

    iget-object v4, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->headerDX10:Lcom/ardor3d/image/util/dds/DdsHeaderDX10;

    iget-object v4, v4, Lcom/ardor3d/image/util/dds/DdsHeaderDX10;->dxgiFormat:Lcom/ardor3d/image/util/dds/DxgiFormat;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_4

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "DXGI format: BC5_UNORM"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iput v5, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->bpp:I

    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->PrecompressedLATC_LA:Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v8, v0}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dxgiFormat not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->headerDX10:Lcom/ardor3d/image/util/dds/DdsHeaderDX10;

    iget-object v2, v2, Lcom/ardor3d/image/util/dds/DdsHeaderDX10;->dxgiFormat:Lcom/ardor3d/image/util/dds/DxgiFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v2, "DXGI format: BC4_UNORM"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iput v1, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->bpp:I

    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->PrecompressedLATC_L:Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v8, v0}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "DXT2"

    invoke-static {v1}, Lcom/ardor3d/image/util/dds/DdsUtils;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_7

    const-string v1, "DXT4"

    invoke-static {v1}, Lcom/ardor3d/image/util/dds/DdsUtils;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "DDS format: DXT4"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Error;

    const-string v1, "DXT4 is not supported."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported compressed dds format found ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "DDS format: DXT2"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Error;

    const-string v1, "DXT2 is not supported."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    sget-object v0, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    invoke-virtual {v8, v0}, Lcom/ardor3d/image/Image;->setDataType(Lcom/ardor3d/image/ImageDataType;)V

    iget-object v0, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget-object v0, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->ddpf:Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    iget v0, v0, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwRGBBitCount:I

    iput v0, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->bpp:I

    if-eqz v11, :cond_a

    if-eqz v12, :cond_9

    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "DDS format: uncompressed rgba"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->RGBA:Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v8, v0}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "DDS format: uncompressed rgb "

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->RGB:Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v8, v0}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    goto :goto_1

    :cond_a
    if-nez v13, :cond_c

    if-eqz v12, :cond_b

    goto :goto_0

    :cond_b
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unsupported uncompressed dds format found."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_0
    if-eqz v13, :cond_d

    if-eqz v12, :cond_d

    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "DDS format: uncompressed LumAlpha"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->LuminanceAlpha:Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v8, v0}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    goto :goto_1

    :cond_d
    if-eqz v13, :cond_e

    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "DDS format: uncompressed Lum"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->Luminance:Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v8, v0}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    goto :goto_1

    :cond_e
    if-eqz v14, :cond_f

    sget-object v0, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "DDS format: uncompressed Alpha"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    sget-object v0, Lcom/ardor3d/image/ImageDataFormat;->Alpha:Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v8, v0}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    :cond_f
    :goto_1
    invoke-virtual {v9, v10}, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->calcMipmapSizes(Z)V

    iget-object v0, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->mipmapByteSizes:[I

    invoke-virtual {v8, v0}, Lcom/ardor3d/image/Image;->setMipMapByteSizes([I)V

    iget-object v0, v9, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->mipmapByteSizes:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v15, v3

    :goto_2
    if-ge v3, v1, :cond_10

    aget v4, v0, v3

    add-int/2addr v15, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_10
    invoke-static {}, Lcom/google/common/collect/M1;->q()Ljava/util/ArrayList;

    move-result-object v7

    move v6, v2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/image/Image;->getDepth()I

    move-result v0

    if-ge v6, v0, :cond_14

    if-eqz v10, :cond_12

    move-object/from16 v5, p2

    invoke-static {v5, v15, v9, v8}, Lcom/ardor3d/image/util/dds/DdsLoader;->readDXT(Lcom/ardor3d/util/LittleEndianDataInput;ILcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;Lcom/ardor3d/image/Image;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    move/from16 v16, v6

    move-object v9, v7

    goto :goto_4

    :cond_12
    move-object/from16 v5, p2

    if-nez v11, :cond_13

    if-nez v13, :cond_13

    if-eqz v14, :cond_11

    :cond_13
    move-object/from16 v0, p2

    move v1, v15

    move v2, v11

    move v3, v13

    move v4, v14

    move v5, v12

    move/from16 v16, v6

    move-object/from16 v6, p1

    move-object v9, v7

    move-object/from16 v7, p0

    invoke-static/range {v0 .. v7}, Lcom/ardor3d/image/util/dds/DdsLoader;->readUncompressed(Lcom/ardor3d/util/LittleEndianDataInput;IZZZZLcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;Lcom/ardor3d/image/Image;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v6, v16, 0x1

    move-object v7, v9

    move-object/from16 v9, p1

    goto :goto_3

    :cond_14
    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/ardor3d/image/Image;->setData(Ljava/util/List;)V

    return-void
.end method

.method public static final readDXT(Lcom/ardor3d/util/LittleEndianDataInput;ILcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;Lcom/ardor3d/image/Image;)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p2, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v1, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwWidth:I

    iget v0, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwHeight:I

    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p2, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v3, v3, Lcom/ardor3d/image/util/dds/DdsHeader;->dwMipMapCount:I

    if-ge v2, v3, :cond_1

    iget-object v3, p2, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->mipmapByteSizes:[I

    aget v3, v3, v2

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Lcom/ardor3d/util/LittleEndianDataInput;->readFully([B)V

    iget-boolean v4, p2, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->flipVertically:Z

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/ardor3d/image/Image;->getDataFormat()Lcom/ardor3d/image/ImageDataFormat;

    move-result-object v4

    invoke-static {v3, v1, v0, v4}, Lcom/ardor3d/image/util/dds/DdsUtils;->flipDXT([BIILcom/ardor3d/image/ImageDataFormat;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p1
.end method

.method private static readUncompressed(Lcom/ardor3d/util/LittleEndianDataInput;IZZZZLcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;Lcom/ardor3d/image/Image;)Ljava/nio/ByteBuffer;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget-object v1, v1, Lcom/ardor3d/image/util/dds/DdsHeader;->ddpf:Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    iget v1, v1, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwRBitMask:I

    invoke-static {v1}, Lcom/ardor3d/image/util/dds/DdsUtils;->shiftCount(I)I

    move-result v1

    iget-object v2, v0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget-object v2, v2, Lcom/ardor3d/image/util/dds/DdsHeader;->ddpf:Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    iget v2, v2, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwGBitMask:I

    invoke-static {v2}, Lcom/ardor3d/image/util/dds/DdsUtils;->shiftCount(I)I

    move-result v2

    iget-object v3, v0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget-object v3, v3, Lcom/ardor3d/image/util/dds/DdsHeader;->ddpf:Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    iget v3, v3, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwBBitMask:I

    invoke-static {v3}, Lcom/ardor3d/image/util/dds/DdsUtils;->shiftCount(I)I

    move-result v3

    iget-object v4, v0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget-object v4, v4, Lcom/ardor3d/image/util/dds/DdsHeader;->ddpf:Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    iget v4, v4, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwABitMask:I

    invoke-static {v4}, Lcom/ardor3d/image/util/dds/DdsUtils;->shiftCount(I)I

    move-result v4

    iget-object v5, v0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget-object v5, v5, Lcom/ardor3d/image/util/dds/DdsHeader;->ddpf:Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    iget v5, v5, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwRGBBitCount:I

    div-int/lit8 v5, v5, 0x8

    invoke-virtual/range {p7 .. p7}, Lcom/ardor3d/image/Image;->getDataFormat()Lcom/ardor3d/image/ImageDataFormat;

    move-result-object v6

    invoke-virtual/range {p7 .. p7}, Lcom/ardor3d/image/Image;->getDataType()Lcom/ardor3d/image/ImageDataType;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ardor3d/image/util/ImageUtils;->getPixelByteSize(Lcom/ardor3d/image/ImageDataFormat;Lcom/ardor3d/image/ImageDataType;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v8, v0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v9, v8, Lcom/ardor3d/image/util/dds/DdsHeader;->dwWidth:I

    iget v8, v8, Lcom/ardor3d/image/util/dds/DdsHeader;->dwHeight:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    iget-object v13, v0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v13, v13, Lcom/ardor3d/image/util/dds/DdsHeader;->dwMipMapCount:I

    if-ge v11, v13, :cond_8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_7

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v9, :cond_6

    new-array v10, v5, [B

    move-object/from16 v14, p0

    invoke-virtual {v14, v10}, Lcom/ardor3d/util/LittleEndianDataInput;->readFully([B)V

    invoke-static {v10}, Lcom/ardor3d/image/util/dds/DdsUtils;->getInt([B)I

    move-result v10

    move/from16 v16, v5

    iget-object v5, v0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget-object v5, v5, Lcom/ardor3d/image/util/dds/DdsHeader;->ddpf:Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    iget v14, v5, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwRBitMask:I

    and-int/2addr v14, v10

    shr-int/2addr v14, v1

    int-to-byte v14, v14

    move/from16 v17, v1

    iget v1, v5, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwGBitMask:I

    and-int/2addr v1, v10

    shr-int/2addr v1, v2

    int-to-byte v1, v1

    move/from16 v18, v2

    iget v2, v5, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwBBitMask:I

    and-int/2addr v2, v10

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    iget v5, v5, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwABitMask:I

    and-int/2addr v5, v10

    shr-int/2addr v5, v4

    int-to-byte v5, v5

    iget-boolean v10, v0, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->flipVertically:Z

    if-eqz v10, :cond_0

    sub-int v10, v8, v13

    const/16 v19, 0x1

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v10, v9

    add-int/2addr v10, v15

    mul-int/2addr v10, v6

    add-int/2addr v10, v12

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p5, :cond_2

    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_2
    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_5

    if-eqz p5, :cond_4

    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v16

    move/from16 v1, v17

    move/from16 v2, v18

    goto :goto_2

    :cond_6
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v16, v5

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_7
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v16, v5

    mul-int v1, v9, v8

    mul-int/2addr v1, v6

    add-int/2addr v12, v1

    div-int/lit8 v9, v9, 0x2

    const/4 v1, 0x1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_8
    return-object v7
.end method

.method private static final updateDepth(Lcom/ardor3d/image/Image;Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;)V
    .locals 3

    iget-object v0, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v0, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwCaps2:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v0, v0, Lcom/ardor3d/image/util/dds/DdsHeader;->dwCaps2:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v0

    iget-object v1, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v1, v1, Lcom/ardor3d/image/util/dds/DdsHeader;->dwCaps2:I

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v1, v1, Lcom/ardor3d/image/util/dds/DdsHeader;->dwCaps2:I

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v1, v1, Lcom/ardor3d/image/util/dds/DdsHeader;->dwCaps2:I

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v1, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v1, v1, Lcom/ardor3d/image/util/dds/DdsHeader;->dwCaps2:I

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object p1, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget p1, p1, Lcom/ardor3d/image/util/dds/DdsHeader;->dwCaps2:I

    const v1, 0x8000

    invoke-static {p1, v1}, Lcom/ardor3d/image/util/dds/DdsUtils;->isSet(II)Z

    move-result p1

    if-eqz p1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    const/4 p1, 0x6

    if-ne v0, p1, :cond_5

    invoke-virtual {p0, v0}, Lcom/ardor3d/image/Image;->setDepth(I)V

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Cubemaps without all faces defined are not currently supported."

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object p1, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget p1, p1, Lcom/ardor3d/image/util/dds/DdsHeader;->dwDepth:I

    if-lez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ardor3d/image/Image;->setDepth(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;Z)Lcom/ardor3d/image/Image;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/ardor3d/util/LittleEndianDataInput;

    invoke-direct {v0, p1}, Lcom/ardor3d/util/LittleEndianDataInput;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/ardor3d/util/LittleEndianDataInput;->readInt()I

    move-result p1

    const-string v1, "DDS "

    invoke-static {v1}, Lcom/ardor3d/image/util/dds/DdsUtils;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/ardor3d/image/util/dds/DdsLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Reading DDS file."

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    new-instance p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;-><init>(Lcom/ardor3d/image/util/dds/DdsLoader$1;)V

    iput-boolean p2, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->flipVertically:Z

    invoke-static {v0}, Lcom/ardor3d/image/util/dds/DdsHeader;->read(Lcom/ardor3d/util/LittleEndianDataInput;)Lcom/ardor3d/image/util/dds/DdsHeader;

    move-result-object p2

    iput-object p2, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget-object p2, p2, Lcom/ardor3d/image/util/dds/DdsHeader;->ddpf:Lcom/ardor3d/image/util/dds/DdsPixelFormat;

    iget p2, p2, Lcom/ardor3d/image/util/dds/DdsPixelFormat;->dwFourCC:I

    const-string v2, "DX10"

    invoke-static {v2}, Lcom/ardor3d/image/util/dds/DdsUtils;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne p2, v2, :cond_0

    invoke-static {v0}, Lcom/ardor3d/image/util/dds/DdsHeaderDX10;->read(Lcom/ardor3d/util/LittleEndianDataInput;)Lcom/ardor3d/image/util/dds/DdsHeaderDX10;

    move-result-object v1

    :cond_0
    iput-object v1, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->headerDX10:Lcom/ardor3d/image/util/dds/DdsHeaderDX10;

    new-instance p2, Lcom/ardor3d/image/Image;

    invoke-direct {p2}, Lcom/ardor3d/image/Image;-><init>()V

    iget-object v1, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v1, v1, Lcom/ardor3d/image/util/dds/DdsHeader;->dwWidth:I

    invoke-virtual {p2, v1}, Lcom/ardor3d/image/Image;->setWidth(I)V

    iget-object v1, p1, Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;->header:Lcom/ardor3d/image/util/dds/DdsHeader;

    iget v1, v1, Lcom/ardor3d/image/util/dds/DdsHeader;->dwHeight:I

    invoke-virtual {p2, v1}, Lcom/ardor3d/image/Image;->setHeight(I)V

    invoke-static {p2, p1}, Lcom/ardor3d/image/util/dds/DdsLoader;->updateDepth(Lcom/ardor3d/image/Image;Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;)V

    invoke-static {p2, p1, v0}, Lcom/ardor3d/image/util/dds/DdsLoader;->populateImage(Lcom/ardor3d/image/Image;Lcom/ardor3d/image/util/dds/DdsLoader$DdsImageInfo;Lcom/ardor3d/util/LittleEndianDataInput;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/Error;

    const-string p2, "Not a dds file."

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method
