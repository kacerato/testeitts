.class public final Lcom/jme3/texture/plugins/TGALoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final TYPE_BLACKANDWHITE:I = 0x3

.field public static final TYPE_BLACKANDWHITE_RLE:I = 0xb

.field public static final TYPE_COLORMAPPED:I = 0x1

.field public static final TYPE_COLORMAPPED_RLE:I = 0x9

.field public static final TYPE_NO_IMAGE:I = 0x0

.field public static final TYPE_TRUECOLOR:I = 0x2

.field public static final TYPE_TRUECOLOR_RLE:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static flipEndian(S)S
    .locals 2

    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr p0, v1

    ushr-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method private static getBitsAsByte([BII)B
    .locals 8

    div-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    rem-int/2addr p1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, p2, -0x1

    if-ltz v4, :cond_4

    aget-byte v5, p0, v0

    const/4 v6, 0x7

    const/4 v7, 0x2

    if-ne p1, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    rsub-int/lit8 v6, p1, 0x6

    shl-int v6, v7, v6

    :goto_1
    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, -0x2

    shl-int p2, v7, p2

    add-int/2addr v3, p2

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    if-ne p1, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    move p1, v2

    :cond_3
    move p2, v4

    goto :goto_0

    :cond_4
    int-to-byte p0, v3

    return p0
.end method

.method public static load(Ljava/io/InputStream;Z)Lcom/jme3/texture/Image;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    .line 10
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 11
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 12
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 13
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    invoke-static {v5}, Lcom/jme3/texture/plugins/TGALoader;->flipEndian(S)S

    move-result v5

    .line 14
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 15
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 16
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 17
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    invoke-static {v7}, Lcom/jme3/texture/plugins/TGALoader;->flipEndian(S)S

    move-result v7

    .line 18
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    invoke-static {v8}, Lcom/jme3/texture/plugins/TGALoader;->flipEndian(S)S

    move-result v8

    .line 19
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v9

    .line 20
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v10

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_0

    xor-int/lit8 v10, p1, 0x1

    goto :goto_0

    :cond_0
    move/from16 v10, p1

    :goto_0
    if-lez v1, :cond_1

    int-to-long v12, v1

    .line 21
    invoke-static {v0, v12, v13}, Lcom/jme3/export/binary/ByteUtils;->skipFully(Ljava/io/InputStream;J)V

    :cond_1
    const/16 v1, 0x8

    const/4 v13, 0x3

    const/4 v15, 0x1

    if-eqz v3, :cond_2

    mul-int v3, v6, v5

    shr-int/2addr v3, v13

    .line 22
    div-int/lit8 v14, v6, 0x3

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 23
    new-array v3, v3, [B

    .line 24
    invoke-static {v0, v3}, Lcom/jme3/export/binary/ByteUtils;->readFully(Ljava/io/InputStream;[B)V

    if-eq v4, v15, :cond_3

    const/16 v1, 0x9

    if-ne v4, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    goto :goto_4

    .line 25
    :cond_3
    :goto_1
    new-array v1, v5, [Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;

    mul-int/lit8 v17, v14, 0x3

    sub-int v15, v6, v17

    int-to-float v11, v14

    const/high16 v13, 0x40000000    # 2.0f

    .line 26
    invoke-static {v13, v11}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result v11

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v11, v11, v18

    const/high16 v19, 0x437f0000    # 255.0f

    div-float v11, v19, v11

    int-to-float v12, v15

    .line 27
    invoke-static {v13, v12}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result v12

    sub-float v12, v12, v18

    div-float v19, v19, v12

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v5, :cond_5

    .line 28
    new-instance v13, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;

    invoke-direct {v13}, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;-><init>()V

    mul-int v2, v6, v12

    move/from16 v18, v5

    .line 29
    invoke-static {v3, v2, v14}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    int-to-byte v5, v5

    iput-byte v5, v13, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->red:B

    add-int v5, v2, v14

    .line 30
    invoke-static {v3, v5, v14}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    int-to-byte v5, v5

    iput-byte v5, v13, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->green:B

    mul-int/lit8 v5, v14, 0x2

    add-int/2addr v5, v2

    .line 31
    invoke-static {v3, v5, v14}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    int-to-byte v5, v5

    iput-byte v5, v13, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->blue:B

    if-gtz v15, :cond_4

    const/4 v5, -0x1

    .line 32
    iput-byte v5, v13, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->alpha:B

    goto :goto_3

    :cond_4
    const/4 v5, -0x1

    add-int v2, v2, v17

    .line 33
    invoke-static {v3, v2, v15}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v19

    float-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, v13, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->alpha:B

    .line 34
    :goto_3
    aput-object v13, v1, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p0

    move/from16 v5, v18

    goto :goto_2

    :cond_5
    const/4 v5, -0x1

    goto :goto_5

    :goto_4
    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x4

    const/16 v3, 0x20

    if-ne v9, v3, :cond_6

    mul-int v6, v7, v8

    mul-int/2addr v6, v2

    .line 35
    new-array v6, v6, [B

    move v13, v2

    goto :goto_6

    :cond_6
    mul-int v6, v7, v8

    const/4 v11, 0x3

    mul-int/2addr v6, v11

    .line 36
    new-array v6, v6, [B

    move v13, v11

    .line 37
    :goto_6
    const-string v11, "Unsupported TGA true color depth: "

    const v14, 0x41039ce7

    const/4 v5, 0x6

    const/4 v3, 0x5

    const/4 v12, 0x2

    if-ne v4, v12, :cond_15

    const/16 v2, 0x10

    if-ne v9, v2, :cond_d

    .line 38
    new-array v1, v12, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_7
    add-int/lit8 v9, v8, -0x1

    if-gt v2, v9, :cond_b

    if-nez v10, :cond_7

    sub-int/2addr v9, v2

    mul-int/2addr v9, v7

    mul-int v4, v9, v13

    :cond_7
    move v9, v4

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v7, :cond_a

    .line 39
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    const/4 v12, 0x1

    aput-byte v11, v1, v12

    .line 40
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    const/16 v16, 0x0

    aput-byte v11, v1, v16

    add-int/lit8 v11, v9, 0x1

    .line 41
    invoke-static {v1, v12, v3}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v15

    int-to-float v12, v15

    mul-float/2addr v12, v14

    float-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v6, v9

    add-int/lit8 v12, v9, 0x2

    .line 42
    invoke-static {v1, v5, v3}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v15, v15

    int-to-byte v15, v15

    aput-byte v15, v6, v11

    add-int/lit8 v11, v9, 0x3

    const/16 v15, 0xb

    .line 43
    invoke-static {v1, v15, v3}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v14

    float-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v6, v12

    const/4 v5, 0x4

    if-ne v13, v5, :cond_9

    const/4 v5, 0x0

    const/4 v12, 0x1

    .line 44
    invoke-static {v1, v5, v12}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v15

    if-ne v15, v12, :cond_8

    const/4 v15, -0x1

    :cond_8
    add-int/lit8 v9, v9, 0x4

    .line 45
    aput-byte v15, v6, v11

    goto :goto_9

    :cond_9
    move v9, v11

    :goto_9
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x6

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v2, 0x1

    move v4, v9

    const/4 v5, 0x6

    goto :goto_7

    :cond_b
    const/4 v2, 0x4

    if-ne v13, v2, :cond_c

    .line 46
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    goto/16 :goto_25

    :cond_c
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    goto/16 :goto_25

    :cond_d
    const/16 v1, 0x18

    if-ne v9, v1, :cond_10

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v8, :cond_f

    if-nez v10, :cond_e

    add-int/lit8 v1, v8, -0x1

    sub-int/2addr v1, v14

    mul-int/2addr v1, v7

    :goto_b
    mul-int/2addr v1, v13

    goto :goto_c

    :cond_e
    mul-int v1, v14, v7

    goto :goto_b

    :goto_c
    mul-int v2, v7, v13

    .line 47
    invoke-virtual {v0, v6, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 48
    :cond_f
    sget-object v0, Lcom/jme3/texture/Image$Format;->BGR8:Lcom/jme3/texture/Image$Format;

    goto/16 :goto_25

    :cond_10
    const/16 v1, 0x20

    if-ne v9, v1, :cond_14

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    add-int/lit8 v3, v8, -0x1

    if-gt v1, v3, :cond_13

    if-nez v10, :cond_11

    sub-int/2addr v3, v1

    mul-int/2addr v3, v7

    mul-int v2, v3, v13

    :cond_11
    move v3, v2

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v7, :cond_12

    .line 49
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 50
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 51
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 52
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    add-int/lit8 v12, v3, 0x1

    .line 53
    aput-byte v9, v6, v3

    add-int/lit8 v9, v3, 0x2

    .line 54
    aput-byte v5, v6, v12

    add-int/lit8 v5, v3, 0x3

    .line 55
    aput-byte v4, v6, v9

    add-int/lit8 v3, v3, 0x4

    .line 56
    aput-byte v11, v6, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_12
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_d

    .line 57
    :cond_13
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    goto/16 :goto_25

    .line 58
    :cond_14
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/16 v2, 0xa

    if-ne v4, v2, :cond_29

    const/16 v2, 0x20

    if-ne v9, v2, :cond_1b

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    add-int/lit8 v3, v8, -0x1

    if-gt v1, v3, :cond_1a

    if-nez v10, :cond_16

    sub-int/2addr v3, v1

    mul-int/2addr v3, v7

    mul-int v2, v3, v13

    :cond_16
    move v3, v2

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v7, :cond_19

    .line 59
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_18

    and-int/lit8 v4, v4, 0x7f

    add-int/2addr v2, v4

    .line 60
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 61
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 62
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    .line 63
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v12

    :goto_11
    add-int/lit8 v14, v4, -0x1

    if-ltz v4, :cond_17

    add-int/lit8 v4, v3, 0x1

    .line 64
    aput-byte v11, v6, v3

    add-int/lit8 v15, v3, 0x2

    .line 65
    aput-byte v9, v6, v4

    add-int/lit8 v4, v3, 0x3

    .line 66
    aput-byte v5, v6, v15

    add-int/lit8 v3, v3, 0x4

    .line 67
    aput-byte v12, v6, v4

    move v4, v14

    goto :goto_11

    :cond_17
    const/4 v4, 0x1

    goto :goto_13

    :cond_18
    add-int/2addr v2, v4

    :goto_12
    add-int/lit8 v5, v4, -0x1

    if-ltz v4, :cond_17

    .line 68
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 69
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 70
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    .line 71
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v12

    add-int/lit8 v14, v3, 0x1

    .line 72
    aput-byte v11, v6, v3

    add-int/lit8 v11, v3, 0x2

    .line 73
    aput-byte v9, v6, v14

    add-int/lit8 v9, v3, 0x3

    .line 74
    aput-byte v4, v6, v11

    add-int/lit8 v3, v3, 0x4

    .line 75
    aput-byte v12, v6, v9

    move v4, v5

    goto :goto_12

    :goto_13
    add-int/2addr v2, v4

    goto :goto_10

    :cond_19
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_f

    .line 76
    :cond_1a
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    goto/16 :goto_25

    :cond_1b
    const/16 v1, 0x18

    if-ne v9, v1, :cond_21

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_14
    add-int/lit8 v3, v8, -0x1

    if-gt v1, v3, :cond_20

    if-nez v10, :cond_1c

    sub-int/2addr v3, v1

    mul-int/2addr v3, v7

    mul-int v2, v3, v13

    :cond_1c
    move v3, v2

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v7, :cond_1f

    .line 77
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_1e

    and-int/lit8 v4, v4, 0x7f

    add-int/2addr v2, v4

    .line 78
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 79
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 80
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    :goto_16
    add-int/lit8 v12, v4, -0x1

    if-ltz v4, :cond_1d

    add-int/lit8 v4, v3, 0x1

    .line 81
    aput-byte v11, v6, v3

    add-int/lit8 v14, v3, 0x2

    .line 82
    aput-byte v9, v6, v4

    add-int/lit8 v3, v3, 0x3

    .line 83
    aput-byte v5, v6, v14

    move v4, v12

    goto :goto_16

    :cond_1d
    const/4 v4, 0x1

    goto :goto_18

    :cond_1e
    add-int/2addr v2, v4

    :goto_17
    add-int/lit8 v5, v4, -0x1

    if-ltz v4, :cond_1d

    .line 84
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 85
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 86
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    add-int/lit8 v12, v3, 0x1

    .line 87
    aput-byte v11, v6, v3

    add-int/lit8 v11, v3, 0x2

    .line 88
    aput-byte v9, v6, v12

    add-int/lit8 v3, v3, 0x3

    .line 89
    aput-byte v4, v6, v11

    move v4, v5

    goto :goto_17

    :goto_18
    add-int/2addr v2, v4

    goto :goto_15

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_14

    .line 90
    :cond_20
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    goto/16 :goto_25

    :cond_21
    const/16 v1, 0x10

    if-ne v9, v1, :cond_28

    .line 91
    new-array v1, v12, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_19
    add-int/lit8 v5, v8, -0x1

    if-gt v4, v5, :cond_27

    if-nez v10, :cond_22

    sub-int/2addr v5, v4

    mul-int/2addr v5, v7

    mul-int v2, v5, v13

    :cond_22
    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v7, :cond_26

    .line 92
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    and-int/lit16 v11, v9, 0x80

    if-eqz v11, :cond_24

    and-int/lit8 v9, v9, 0x7f

    add-int/2addr v5, v9

    .line 93
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    const/4 v12, 0x1

    aput-byte v11, v1, v12

    .line 94
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    const/4 v15, 0x0

    aput-byte v11, v1, v15

    .line 95
    invoke-static {v1, v12, v3}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v14

    float-to-int v11, v11

    int-to-byte v11, v11

    const/4 v12, 0x6

    .line 96
    invoke-static {v1, v12, v3}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v15

    int-to-float v12, v15

    mul-float/2addr v12, v14

    float-to-int v12, v12

    int-to-byte v12, v12

    move/from16 v16, v2

    const/16 v15, 0xb

    .line 97
    invoke-static {v1, v15, v3}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v14

    float-to-int v2, v2

    int-to-byte v2, v2

    :goto_1b
    add-int/lit8 v15, v9, -0x1

    if-ltz v9, :cond_23

    add-int/lit8 v9, v16, 0x1

    .line 98
    aput-byte v2, v6, v16

    add-int/lit8 v17, v16, 0x2

    .line 99
    aput-byte v12, v6, v9

    add-int/lit8 v16, v16, 0x3

    .line 100
    aput-byte v11, v6, v17

    move v9, v15

    goto :goto_1b

    :cond_23
    move/from16 v2, v16

    const/4 v9, 0x1

    const/16 v12, 0xb

    goto :goto_1d

    :cond_24
    move/from16 v16, v2

    add-int/2addr v5, v9

    :goto_1c
    add-int/lit8 v11, v9, -0x1

    if-ltz v9, :cond_25

    .line 101
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    const/4 v12, 0x1

    aput-byte v9, v1, v12

    .line 102
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    const/4 v15, 0x0

    aput-byte v9, v1, v15

    .line 103
    invoke-static {v1, v12, v3}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v14

    float-to-int v9, v9

    int-to-byte v9, v9

    const/4 v12, 0x6

    .line 104
    invoke-static {v1, v12, v3}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v15, v15

    int-to-byte v15, v15

    move/from16 v17, v5

    const/16 v12, 0xb

    .line 105
    invoke-static {v1, v12, v3}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v14

    float-to-int v5, v5

    int-to-byte v5, v5

    add-int/lit8 v16, v2, 0x1

    .line 106
    aput-byte v5, v6, v2

    add-int/lit8 v5, v2, 0x2

    .line 107
    aput-byte v15, v6, v16

    add-int/lit8 v2, v2, 0x3

    .line 108
    aput-byte v9, v6, v5

    move v9, v11

    move/from16 v5, v17

    goto :goto_1c

    :cond_25
    move/from16 v17, v5

    const/16 v12, 0xb

    const/4 v9, 0x1

    :goto_1d
    add-int/2addr v5, v9

    goto/16 :goto_1a

    :cond_26
    move/from16 v16, v2

    const/16 v12, 0xb

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_19

    .line 109
    :cond_27
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    goto/16 :goto_25

    .line 110
    :cond_28
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    const/4 v2, 0x1

    if-ne v4, v2, :cond_36

    const/16 v3, 0x8

    .line 111
    div-int/2addr v9, v3

    .line 112
    const-string v3, "TGA: Invalid color map entry referenced: "

    if-ne v9, v2, :cond_2f

    const/4 v2, 0x0

    const/16 v16, 0x0

    :goto_1e
    add-int/lit8 v4, v8, -0x1

    if-gt v2, v4, :cond_2e

    if-nez v10, :cond_2a

    sub-int/2addr v4, v2

    mul-int/2addr v4, v7

    mul-int v16, v4, v13

    :cond_2a
    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v7, :cond_2d

    .line 113
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 114
    array-length v9, v1

    if-ge v5, v9, :cond_2c

    if-ltz v5, :cond_2c

    .line 115
    aget-object v5, v1, v5

    add-int/lit8 v9, v16, 0x1

    .line 116
    iget-byte v11, v5, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->blue:B

    aput-byte v11, v6, v16

    add-int/lit8 v11, v16, 0x2

    .line 117
    iget-byte v12, v5, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->green:B

    aput-byte v12, v6, v9

    add-int/lit8 v9, v16, 0x3

    .line 118
    iget-byte v12, v5, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->red:B

    aput-byte v12, v6, v11

    const/4 v11, 0x4

    if-ne v13, v11, :cond_2b

    add-int/lit8 v16, v16, 0x4

    .line 119
    iget-byte v5, v5, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->alpha:B

    aput-byte v5, v6, v9

    goto :goto_20

    :cond_2b
    move/from16 v16, v9

    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 120
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2e
    const/4 v0, 0x4

    goto :goto_24

    :cond_2f
    if-ne v9, v12, :cond_35

    const/4 v2, 0x0

    const/16 v16, 0x0

    :goto_21
    add-int/lit8 v4, v8, -0x1

    if-gt v2, v4, :cond_2e

    if-nez v10, :cond_30

    sub-int/2addr v4, v2

    mul-int/2addr v4, v7

    mul-int v16, v4, v13

    :cond_30
    const/4 v4, 0x0

    :goto_22
    if-ge v4, v7, :cond_33

    .line 121
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    invoke-static {v5}, Lcom/jme3/texture/plugins/TGALoader;->flipEndian(S)S

    move-result v5

    .line 122
    array-length v9, v1

    if-ge v5, v9, :cond_32

    if-ltz v5, :cond_32

    .line 123
    aget-object v5, v1, v5

    add-int/lit8 v9, v16, 0x1

    .line 124
    iget-byte v11, v5, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->blue:B

    aput-byte v11, v6, v16

    add-int/lit8 v11, v16, 0x2

    .line 125
    iget-byte v12, v5, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->green:B

    aput-byte v12, v6, v9

    add-int/lit8 v9, v16, 0x3

    .line 126
    iget-byte v12, v5, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->red:B

    aput-byte v12, v6, v11

    const/4 v11, 0x4

    if-ne v13, v11, :cond_31

    add-int/lit8 v16, v16, 0x4

    .line 127
    iget-byte v5, v5, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->alpha:B

    aput-byte v5, v6, v9

    goto :goto_23

    :cond_31
    move/from16 v16, v9

    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 128
    :cond_32
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :goto_24
    if-ne v13, v0, :cond_34

    .line 129
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    goto :goto_25

    :cond_34
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    .line 130
    :goto_25
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V

    .line 131
    array-length v1, v6

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 133
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 135
    new-instance v2, Lcom/jme3/texture/Image;

    invoke-direct {v2}, Lcom/jme3/texture/Image;-><init>()V

    .line 136
    invoke-virtual {v2, v0}, Lcom/jme3/texture/Image;->setFormat(Lcom/jme3/texture/Image$Format;)V

    .line 137
    invoke-virtual {v2, v7}, Lcom/jme3/texture/Image;->setWidth(I)V

    .line 138
    invoke-virtual {v2, v8}, Lcom/jme3/texture/Image;->setHeight(I)V

    .line 139
    invoke-virtual {v2, v1}, Lcom/jme3/texture/Image;->setData(Ljava/nio/ByteBuffer;)V

    return-object v2

    .line 140
    :cond_35
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TGA: unknown colormap indexing size used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Monochrome and RLE colormapped images are not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/asset/TextureKey;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/TextureKey;

    invoke-virtual {v0}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {p1, v0}, Lcom/jme3/texture/plugins/TGALoader;->load(Ljava/io/InputStream;Z)Lcom/jme3/texture/Image;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 5
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

    .line 6
    :cond_1
    throw v0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Texture assets must be loaded using a TextureKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
