.class public Lcom/jme3/texture/plugins/HDRLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private dataStore:Ljava/nio/ByteBuffer;

.field private rleTempBuffer:Ljava/nio/ByteBuffer;

.field private final tempF:[F

.field private writeRGBE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/texture/plugins/HDRLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/plugins/HDRLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->writeRGBE:Z

    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->tempF:[F

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->tempF:[F

    .line 3
    iput-boolean p1, p0, Lcom/jme3/texture/plugins/HDRLoader;->writeRGBE:Z

    return-void
.end method

.method public static convertFloatToRGBE([BFFF)V
    .locals 17

    move/from16 v0, p1

    float-to-double v0, v0

    move/from16 v2, p2

    float-to-double v2, v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move/from16 v4, p3

    move-wide v5, v2

    goto :goto_0

    :cond_0
    move/from16 v4, p3

    move-wide v5, v0

    :goto_0
    float-to-double v7, v4

    cmpl-double v4, v7, v5

    if-lez v4, :cond_1

    move-wide v5, v7

    :cond_1
    const-wide v9, 0x3949f623d5a8a733L    # 1.0E-32

    cmpg-double v4, v5, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-gez v4, :cond_2

    aput-byte v12, p0, v9

    aput-byte v12, p0, v10

    aput-byte v12, p0, v11

    aput-byte v12, p0, v12

    goto :goto_1

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14}, Ljava/lang/Math;->log10(D)D

    move-result-wide v15

    div-double/2addr v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    div-double/2addr v0, v13

    const-wide v15, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v15

    double-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, v12

    div-double/2addr v2, v13

    mul-double/2addr v2, v15

    double-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v11

    div-double/2addr v7, v13

    mul-double/2addr v7, v15

    double-to-int v0, v7

    int-to-byte v0, v0

    aput-byte v0, p0, v10

    const-wide/high16 v0, 0x4060000000000000L    # 128.0

    add-double/2addr v4, v0

    double-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, p0, v9

    :goto_1
    return-void
.end method

.method public static convertRGBEtoFloat([B[F)V
    .locals 10

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    aget-byte p0, p0, v6

    and-int/lit16 p0, p0, 0xff

    add-int/lit16 p0, p0, -0x88

    int-to-double v6, p0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float p0, v6

    int-to-float v1, v1

    mul-float/2addr v1, p0

    aput v1, p1, v0

    int-to-float v0, v3

    mul-float/2addr v0, p0

    aput v0, p1, v2

    int-to-float v0, v5

    mul-float/2addr v0, p0

    aput v0, p1, v4

    return-void
.end method

.method public static convertRGBEtoFloat2([B[F)V
    .locals 10

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    aget-byte p0, p0, v6

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 p0, p0, -0x80

    int-to-double v6, p0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float p0, v6

    int-to-float v1, v1

    const/high16 v6, 0x43800000    # 256.0f

    div-float/2addr v1, v6

    mul-float/2addr v1, p0

    aput v1, p1, v0

    int-to-float v0, v3

    div-float/2addr v0, v6

    mul-float/2addr v0, p0

    aput v0, p1, v2

    int-to-float v0, v5

    div-float/2addr v0, v6

    mul-float/2addr v0, p0

    aput v0, p1, v4

    return-void
.end method

.method public static convertRGBEtoFloat3([B[F)V
    .locals 10

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    aget-byte p0, p0, v6

    and-int/lit16 p0, p0, 0xff

    add-int/lit16 p0, p0, -0x88

    int-to-double v6, p0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float p0, v6

    int-to-float v1, v1

    mul-float/2addr v1, p0

    aput v1, p1, v0

    int-to-float v0, v3

    mul-float/2addr v0, p0

    aput v0, p1, v2

    int-to-float v0, v5

    mul-float/2addr v0, p0

    aput v0, p1, v4

    return-void
.end method

.method private decodeScanline(Ljava/io/InputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    if-lt p2, v0, :cond_0

    const/16 v1, 0x7fff

    if-le p2, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jme3/texture/plugins/HDRLoader;->decodeScanlineUncompressed(Ljava/io/InputStream;I)V

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-static {p1, v1}, Lcom/jme3/export/binary/ByteUtils;->readFully(Ljava/io/InputStream;[B)V

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    aget-byte v2, v1, v3

    if-ne v2, v4, :cond_4

    aget-byte v2, v1, v4

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v0, v2, 0x8

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    if-ne v0, p2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/jme3/texture/plugins/HDRLoader;->decodeScanlineRLE(Ljava/io/InputStream;I)Z

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal scanline width in HDR file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    sub-int/2addr p2, v3

    invoke-direct {p0, p1, p2}, Lcom/jme3/texture/plugins/HDRLoader;->decodeScanlineUncompressed(Ljava/io/InputStream;I)V

    :goto_1
    return-void
.end method

.method private decodeScanlineRLE(Ljava/io/InputStream;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    mul-int/lit8 v0, p2, 0x4

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    mul-int/lit8 v1, p2, 0x4

    if-ge v0, v1, :cond_1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    move v2, v0

    :cond_2
    if-ge v2, p2, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0x80

    if-le v3, v4, :cond_3

    add-int/lit8 v3, v3, -0x80

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    :goto_2
    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v2, 0x1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v1

    int-to-byte v7, v4

    invoke-virtual {v3, v2, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v3, v5

    move v2, v6

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v4, v3, -0x1

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    iget-object v5, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v2, 0x1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v1

    int-to-byte v3, v3

    invoke-virtual {v5, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v3, v4

    move v2, v6

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-array p1, v2, [B

    :goto_4
    if-ge v0, p2, :cond_6

    iget-object v1, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Lcom/jme3/texture/plugins/HDRLoader;->writeRGBE([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method private decodeScanlineUncompressed(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-static {p1, v0}, Lcom/jme3/export/binary/ByteUtils;->readFully(Ljava/io/InputStream;[B)V

    invoke-direct {p0, v0}, Lcom/jme3/texture/plugins/HDRLoader;->writeRGBE([B)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private writeRGBE([B)V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->writeRGBE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->dataStore:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->tempF:[F

    invoke-static {p1, v0}, Lcom/jme3/texture/plugins/HDRLoader;->convertRGBEtoFloat([B[F)V

    iget-object p1, p0, Lcom/jme3/texture/plugins/HDRLoader;->dataStore:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->tempF:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->convertFloatToHalf(F)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->tempF:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->convertFloatToHalf(F)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->tempF:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->convertFloatToHalf(F)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;Z)Lcom/jme3/texture/Image;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/jme3/texture/plugins/HDRLoader;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_10

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v4, :cond_3

    .line 6
    sget-object v3, Lcom/jme3/texture/plugins/HDRLoader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Ignored string: {0}"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 9
    const-string v5, "format"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10
    const-string v2, "32-bit_rle_rgbe"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "32-bit_rle_xyze"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unsupported format in HDR picture"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    const-string v5, "exposure"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 13
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    goto/16 :goto_0

    .line 14
    :cond_6
    const-string v5, "gamma"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 15
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    goto/16 :goto_0

    .line 16
    :cond_7
    sget-object v3, Lcom/jme3/texture/plugins/HDRLoader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "HDR Command ignored: {0}"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 17
    :cond_8
    :goto_1
    const-string v3, "\\s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 18
    array-length v3, v2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_f

    .line 19
    aget-object v0, v2, v0

    const-string v3, "-Y"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    aget-object v0, v2, v0

    const-string v3, "+X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 20
    :cond_9
    sget-object v0, Lcom/jme3/texture/plugins/HDRLoader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Flipping/Rotating attributes ignored!"

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_a
    const/4 v0, 0x3

    .line 21
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 22
    aget-object v0, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-nez v1, :cond_b

    .line 23
    sget-object v0, Lcom/jme3/texture/plugins/HDRLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Unsure if specified image is Radiance HDR"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 24
    :cond_b
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 25
    iget-boolean v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->writeRGBE:Z

    if-eqz v0, :cond_c

    .line 26
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    :goto_2
    move-object v6, v0

    goto :goto_3

    .line 27
    :cond_c
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB16F:Lcom/jme3/texture/Image$Format;

    goto :goto_2

    :goto_3
    mul-int v0, v7, v8

    .line 28
    invoke-virtual {v6}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->dataStore:Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v6}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    mul-int/2addr v0, v7

    add-int/lit8 v1, v8, -0x1

    :goto_4
    if-ltz v1, :cond_e

    if-eqz p2, :cond_d

    .line 30
    iget-object v2, p0, Lcom/jme3/texture/plugins/HDRLoader;->dataStore:Ljava/nio/ByteBuffer;

    mul-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 31
    :cond_d
    invoke-direct {p0, p1, v7}, Lcom/jme3/texture/plugins/HDRLoader;->decodeScanline(Ljava/io/InputStream;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 32
    :cond_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 33
    iget-object p1, p0, Lcom/jme3/texture/plugins/HDRLoader;->dataStore:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 34
    new-instance p1, Lcom/jme3/texture/Image;

    iget-object v9, p0, Lcom/jme3/texture/plugins/HDRLoader;->dataStore:Ljava/nio/ByteBuffer;

    sget-object v10, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V

    return-object p1

    .line 35
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid resolution string in HDR file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_10
    :goto_5
    const-string v3, "#?RADIANCE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "#?RGBE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_11
    move v1, v4

    goto/16 :goto_0
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/asset/TextureKey;

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/TextureKey;

    invoke-virtual {v0}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v0

    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/texture/plugins/HDRLoader;->load(Ljava/io/InputStream;Z)Lcom/jme3/texture/Image;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 42
    :cond_1
    throw v0

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Texture assets must be loaded using a TextureKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
