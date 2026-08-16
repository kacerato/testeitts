.class public final Lcom/ardor3d/image/util/TgaLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/image/util/ImageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;
    }
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


# virtual methods
.method public load(Ljava/io/InputStream;Z)Lcom/ardor3d/image/Image;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    invoke-static {v5}, Lcom/ardor3d/image/util/TgaLoader;->flipEndian(S)S

    move-result v5

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    invoke-static {v7}, Lcom/ardor3d/image/util/TgaLoader;->flipEndian(S)S

    move-result v7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    invoke-static {v8}, Lcom/ardor3d/image/util/TgaLoader;->flipEndian(S)S

    move-result v8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v9

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v10

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_0

    xor-int/lit8 v10, p2, 0x1

    goto :goto_0

    :cond_0
    move/from16 v10, p2

    :goto_0
    if-lez v2, :cond_2

    int-to-long v12, v2

    invoke-virtual {v0, v12, v13}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v14

    cmp-long v2, v12, v14

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected number of bytes in file - too few."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    const/16 v2, 0x8

    const/4 v13, -0x1

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-eqz v3, :cond_3

    mul-int v3, v6, v5

    shr-int/2addr v3, v14

    div-int/lit8 v11, v6, 0x3

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v13, v0, :cond_7

    if-eq v4, v15, :cond_4

    const/16 v0, 0x9

    if-ne v4, v0, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v21, v7

    move/from16 v22, v8

    goto/16 :goto_5

    :cond_4
    :goto_2
    new-array v0, v5, [Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;

    mul-int/lit8 v16, v11, 0x3

    sub-int v2, v6, v16

    int-to-double v14, v11

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v19

    double-to-int v14, v14

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v14, v15, v14

    move/from16 v21, v7

    move/from16 v22, v8

    int-to-double v7, v2

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double v7, v7, v19

    double-to-int v7, v7

    int-to-float v7, v7

    div-float/2addr v15, v7

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_6

    new-instance v8, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;-><init>(Lcom/ardor3d/image/util/TgaLoader$1;)V

    mul-int v13, v6, v7

    invoke-static {v3, v13, v11}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v14

    float-to-int v12, v12

    int-to-byte v12, v12

    iput-byte v12, v8, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->red:B

    add-int v12, v13, v11

    invoke-static {v3, v12, v11}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v14

    float-to-int v12, v12

    int-to-byte v12, v12

    iput-byte v12, v8, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->green:B

    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v13

    invoke-static {v3, v12, v11}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v14

    float-to-int v12, v12

    int-to-byte v12, v12

    iput-byte v12, v8, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->blue:B

    if-gtz v2, :cond_5

    const/4 v12, -0x1

    iput-byte v12, v8, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->alpha:B

    goto :goto_4

    :cond_5
    add-int v13, v13, v16

    invoke-static {v3, v13, v2}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v15

    float-to-int v12, v12

    int-to-byte v12, v12

    iput-byte v12, v8, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->alpha:B

    :goto_4
    aput-object v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    move-object v12, v0

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :goto_5
    const/4 v12, 0x0

    :goto_6
    const/4 v0, 0x4

    const/16 v2, 0x20

    if-ne v9, v2, :cond_8

    mul-int v7, v21, v22

    mul-int/2addr v7, v0

    new-array v3, v7, [B

    move v14, v0

    const/4 v5, 0x1

    goto :goto_7

    :cond_8
    mul-int v7, v21, v22

    const/4 v3, 0x3

    mul-int/2addr v7, v3

    new-array v5, v7, [B

    move v14, v3

    move-object v3, v5

    const/4 v5, 0x0

    :goto_7
    const-string v6, "Unsupported TGA true color depth: "

    const/16 v7, 0x18

    const/4 v11, 0x6

    const v13, 0x41039ce7

    const/4 v15, 0x5

    const/4 v0, 0x2

    if-ne v4, v0, :cond_17

    const/16 v2, 0x10

    if-ne v9, v2, :cond_e

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_8
    add-int/lit8 v6, v22, -0x1

    if-gt v2, v6, :cond_d

    if-nez v10, :cond_9

    sub-int/2addr v6, v2

    mul-int v6, v6, v21

    mul-int v4, v6, v14

    :cond_9
    move v6, v4

    move/from16 v12, v21

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v12, :cond_c

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    const/4 v9, 0x1

    aput-byte v7, v0, v9

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    const/16 v17, 0x0

    aput-byte v7, v0, v17

    add-int/lit8 v7, v6, 0x1

    invoke-static {v0, v9, v15}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v13

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    add-int/lit8 v8, v6, 0x2

    invoke-static {v0, v11, v15}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v13

    float-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    add-int/lit8 v7, v6, 0x3

    const/16 v9, 0xb

    invoke-static {v0, v9, v15}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v11

    int-to-float v9, v11

    mul-float/2addr v9, v13

    float-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    if-eqz v5, :cond_b

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v0, v9, v8}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v11

    if-ne v11, v8, :cond_a

    const/4 v11, -0x1

    :cond_a
    add-int/lit8 v6, v6, 0x4

    aput-byte v11, v3, v7

    goto :goto_a

    :cond_b
    move v6, v7

    :goto_a
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x6

    goto :goto_9

    :cond_c
    add-int/lit8 v2, v2, 0x1

    move v4, v6

    move/from16 v21, v12

    const/4 v11, 0x6

    goto :goto_8

    :cond_d
    move/from16 v12, v21

    goto/16 :goto_10

    :cond_e
    move/from16 v12, v21

    if-ne v9, v7, :cond_12

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_b
    add-int/lit8 v8, v22, -0x1

    if-gt v0, v8, :cond_15

    if-nez v10, :cond_f

    sub-int/2addr v8, v0

    mul-int/2addr v8, v12

    mul-int v2, v8, v14

    :cond_f
    move v4, v2

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v12, :cond_11

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    add-int/lit8 v9, v4, 0x1

    aput-byte v8, v3, v4

    add-int/lit8 v8, v4, 0x2

    aput-byte v7, v3, v9

    add-int/lit8 v7, v4, 0x3

    aput-byte v6, v3, v8

    if-eqz v5, :cond_10

    add-int/lit8 v4, v4, 0x4

    const/4 v6, -0x1

    aput-byte v6, v3, v7

    goto :goto_d

    :cond_10
    move v4, v7

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_11
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_b

    :cond_12
    const/16 v0, 0x20

    if-ne v9, v0, :cond_16

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_e
    add-int/lit8 v8, v22, -0x1

    if-gt v0, v8, :cond_15

    if-nez v10, :cond_13

    sub-int/2addr v8, v0

    mul-int/2addr v8, v12

    mul-int v2, v8, v14

    :cond_13
    move v4, v2

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v12, :cond_14

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    add-int/lit8 v9, v4, 0x1

    aput-byte v7, v3, v4

    add-int/lit8 v7, v4, 0x2

    aput-byte v6, v3, v9

    add-int/lit8 v6, v4, 0x3

    aput-byte v5, v3, v7

    add-int/lit8 v4, v4, 0x4

    aput-byte v8, v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_14
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_e

    :cond_15
    :goto_10
    move v2, v12

    goto/16 :goto_28

    :cond_16
    new-instance v0, Lcom/ardor3d/util/Ardor3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move/from16 v2, v21

    const/16 v8, 0xa

    if-ne v4, v8, :cond_2c

    const/16 v8, 0x20

    if-ne v9, v8, :cond_1c

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_11
    add-int/lit8 v8, v22, -0x1

    if-gt v0, v8, :cond_37

    if-nez v10, :cond_18

    sub-int/2addr v8, v0

    mul-int/2addr v8, v2

    mul-int v4, v8, v14

    :cond_18
    move v5, v4

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v2, :cond_1b

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    and-int/lit16 v7, v6, 0x80

    if-eqz v7, :cond_1a

    and-int/lit8 v6, v6, 0x7f

    add-int/2addr v4, v6

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    :goto_13
    add-int/lit8 v12, v6, -0x1

    if-ltz v6, :cond_19

    add-int/lit8 v6, v5, 0x1

    aput-byte v9, v3, v5

    add-int/lit8 v13, v5, 0x2

    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x3

    aput-byte v7, v3, v13

    add-int/lit8 v5, v5, 0x4

    aput-byte v11, v3, v6

    move v6, v12

    goto :goto_13

    :cond_19
    const/4 v6, 0x1

    goto :goto_15

    :cond_1a
    add-int/2addr v4, v6

    :goto_14
    add-int/lit8 v7, v6, -0x1

    if-ltz v6, :cond_19

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    add-int/lit8 v12, v5, 0x1

    aput-byte v9, v3, v5

    add-int/lit8 v9, v5, 0x2

    aput-byte v8, v3, v12

    add-int/lit8 v8, v5, 0x3

    aput-byte v6, v3, v9

    add-int/lit8 v5, v5, 0x4

    aput-byte v11, v3, v8

    move v6, v7

    goto :goto_14

    :goto_15
    add-int/2addr v4, v6

    goto :goto_12

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_11

    :cond_1c
    if-ne v9, v7, :cond_23

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_16
    add-int/lit8 v8, v22, -0x1

    if-gt v0, v8, :cond_37

    if-nez v10, :cond_1d

    sub-int/2addr v8, v0

    mul-int/2addr v8, v2

    mul-int v4, v8, v14

    :cond_1d
    move v6, v4

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_22

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    and-int/lit16 v8, v7, 0x80

    if-eqz v8, :cond_20

    and-int/lit8 v7, v7, 0x7f

    add-int/2addr v4, v7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    :goto_18
    add-int/lit8 v12, v7, -0x1

    if-ltz v7, :cond_1f

    add-int/lit8 v7, v6, 0x1

    aput-byte v11, v3, v6

    add-int/lit8 v13, v6, 0x2

    aput-byte v9, v3, v7

    add-int/lit8 v7, v6, 0x3

    aput-byte v8, v3, v13

    if-eqz v5, :cond_1e

    add-int/lit8 v6, v6, 0x4

    const/4 v13, -0x1

    aput-byte v13, v3, v7

    :goto_19
    move v7, v12

    goto :goto_18

    :cond_1e
    move v6, v7

    goto :goto_19

    :cond_1f
    const/4 v7, 0x1

    goto :goto_1b

    :cond_20
    add-int/2addr v4, v7

    :goto_1a
    add-int/lit8 v8, v7, -0x1

    if-ltz v7, :cond_1f

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    add-int/lit8 v12, v6, 0x1

    aput-byte v11, v3, v6

    add-int/lit8 v11, v6, 0x2

    aput-byte v9, v3, v12

    add-int/lit8 v9, v6, 0x3

    aput-byte v7, v3, v11

    if-eqz v5, :cond_21

    add-int/lit8 v6, v6, 0x4

    const/4 v7, -0x1

    aput-byte v7, v3, v9

    move v7, v8

    goto :goto_1a

    :cond_21
    move v7, v8

    move v6, v9

    goto :goto_1a

    :goto_1b
    add-int/2addr v4, v7

    goto :goto_17

    :cond_22
    add-int/lit8 v0, v0, 0x1

    move v4, v6

    goto :goto_16

    :cond_23
    const/16 v4, 0x10

    if-ne v9, v4, :cond_2b

    new-array v0, v0, [B

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1c
    add-int/lit8 v8, v22, -0x1

    if-gt v6, v8, :cond_37

    if-nez v10, :cond_24

    sub-int/2addr v8, v6

    mul-int/2addr v8, v2

    mul-int v4, v8, v14

    :cond_24
    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v2, :cond_2a

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_27

    and-int/lit8 v8, v8, 0x7f

    add-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    const/4 v11, 0x1

    aput-byte v9, v0, v11

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    const/4 v12, 0x0

    aput-byte v9, v0, v12

    invoke-static {v0, v11, v15}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v13

    float-to-int v9, v9

    int-to-byte v9, v9

    const/4 v11, 0x6

    invoke-static {v0, v11, v15}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v12

    int-to-float v11, v12

    mul-float/2addr v11, v13

    float-to-int v11, v11

    int-to-byte v11, v11

    move/from16 p1, v4

    const/16 v12, 0xb

    invoke-static {v0, v12, v15}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v13

    float-to-int v4, v4

    int-to-byte v4, v4

    move v12, v8

    move/from16 v8, p1

    :goto_1e
    add-int/lit8 v17, v12, -0x1

    if-ltz v12, :cond_26

    add-int/lit8 v12, v8, 0x1

    aput-byte v4, v3, v8

    add-int/lit8 v18, v8, 0x2

    aput-byte v11, v3, v12

    add-int/lit8 v12, v8, 0x3

    aput-byte v9, v3, v18

    if-eqz v5, :cond_25

    add-int/lit8 v8, v8, 0x4

    const/16 v18, -0x1

    aput-byte v18, v3, v12

    :goto_1f
    move/from16 v12, v17

    goto :goto_1e

    :cond_25
    move v8, v12

    goto :goto_1f

    :cond_26
    move v4, v8

    const/4 v9, 0x1

    const/16 v11, 0xb

    const/16 v18, 0x0

    move v8, v7

    const/4 v7, -0x1

    goto :goto_21

    :cond_27
    move/from16 p1, v4

    add-int/2addr v7, v8

    :goto_20
    add-int/lit8 v9, v8, -0x1

    if-ltz v8, :cond_29

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    const/4 v11, 0x1

    aput-byte v8, v0, v11

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    const/16 v18, 0x0

    aput-byte v8, v0, v18

    invoke-static {v0, v11, v15}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v13

    float-to-int v8, v8

    int-to-byte v8, v8

    const/4 v11, 0x6

    invoke-static {v0, v11, v15}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v13

    float-to-int v12, v12

    int-to-byte v12, v12

    move/from16 p2, v7

    const/16 v11, 0xb

    invoke-static {v0, v11, v15}, Lcom/ardor3d/image/util/TgaLoader;->getBitsAsByte([BII)B

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v13

    float-to-int v7, v7

    int-to-byte v7, v7

    add-int/lit8 v17, v4, 0x1

    aput-byte v7, v3, v4

    add-int/lit8 v7, v4, 0x2

    aput-byte v12, v3, v17

    add-int/lit8 v12, v4, 0x3

    aput-byte v8, v3, v7

    if-eqz v5, :cond_28

    add-int/lit8 v4, v4, 0x4

    const/4 v7, -0x1

    aput-byte v7, v3, v12

    move/from16 v7, p2

    move v8, v9

    goto :goto_20

    :cond_28
    move/from16 v7, p2

    move v8, v9

    move v4, v12

    goto :goto_20

    :cond_29
    move/from16 p2, v7

    const/4 v7, -0x1

    const/16 v11, 0xb

    const/16 v18, 0x0

    move/from16 v8, p2

    const/4 v9, 0x1

    :goto_21
    add-int/2addr v8, v9

    move v7, v8

    goto/16 :goto_1d

    :cond_2a
    move/from16 p1, v4

    const/4 v7, -0x1

    const/16 v11, 0xb

    const/16 v18, 0x0

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1c

    :cond_2b
    new-instance v0, Lcom/ardor3d/util/Ardor3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v5, 0x1

    const/16 v18, 0x0

    if-ne v4, v5, :cond_37

    const/16 v4, 0x8

    div-int/2addr v9, v4

    const-string v4, "TGA: Invalid color map entry referenced: "

    if-ne v9, v5, :cond_31

    move/from16 v0, v18

    move/from16 v17, v0

    :goto_22
    add-int/lit8 v8, v22, -0x1

    if-gt v0, v8, :cond_37

    if-nez v10, :cond_2d

    sub-int/2addr v8, v0

    mul-int/2addr v8, v2

    mul-int v17, v8, v14

    :cond_2d
    move/from16 v5, v18

    :goto_23
    if-ge v5, v2, :cond_30

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    array-length v7, v12

    if-ge v6, v7, :cond_2f

    if-ltz v6, :cond_2f

    aget-object v6, v12, v6

    add-int/lit8 v7, v17, 0x1

    iget-byte v8, v6, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->red:B

    aput-byte v8, v3, v17

    add-int/lit8 v8, v17, 0x2

    iget-byte v9, v6, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->green:B

    aput-byte v9, v3, v7

    add-int/lit8 v7, v17, 0x3

    iget-byte v9, v6, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->blue:B

    aput-byte v9, v3, v8

    const/4 v8, 0x4

    if-ne v14, v8, :cond_2e

    add-int/lit8 v17, v17, 0x4

    iget-byte v6, v6, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->alpha:B

    aput-byte v6, v3, v7

    goto :goto_24

    :cond_2e
    move/from16 v17, v7

    :goto_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_2f
    new-instance v0, Lcom/ardor3d/util/Ardor3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_31
    if-ne v9, v0, :cond_36

    move/from16 v0, v18

    move/from16 v17, v0

    :goto_25
    add-int/lit8 v8, v22, -0x1

    if-gt v0, v8, :cond_37

    if-nez v10, :cond_32

    sub-int/2addr v8, v0

    mul-int/2addr v8, v2

    mul-int v17, v8, v14

    :cond_32
    move/from16 v5, v18

    :goto_26
    if-ge v5, v2, :cond_35

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    invoke-static {v6}, Lcom/ardor3d/image/util/TgaLoader;->flipEndian(S)S

    move-result v6

    array-length v7, v12

    if-ge v6, v7, :cond_34

    if-ltz v6, :cond_34

    aget-object v6, v12, v6

    add-int/lit8 v7, v17, 0x1

    iget-byte v8, v6, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->red:B

    aput-byte v8, v3, v17

    add-int/lit8 v8, v17, 0x2

    iget-byte v9, v6, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->green:B

    aput-byte v9, v3, v7

    add-int/lit8 v7, v17, 0x3

    iget-byte v9, v6, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->blue:B

    aput-byte v9, v3, v8

    const/4 v8, 0x4

    if-ne v14, v8, :cond_33

    add-int/lit8 v17, v17, 0x4

    iget-byte v6, v6, Lcom/ardor3d/image/util/TgaLoader$ColorMapEntry;->alpha:B

    aput-byte v6, v3, v7

    goto :goto_27

    :cond_33
    move/from16 v17, v7

    :goto_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_34
    new-instance v0, Lcom/ardor3d/util/Ardor3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_36
    new-instance v0, Lcom/ardor3d/util/Ardor3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TGA: unknown colormap indexing size used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :goto_28
    array-length v0, v3

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v1, Lcom/ardor3d/image/Image;

    invoke-direct {v1}, Lcom/ardor3d/image/Image;-><init>()V

    const/4 v3, 0x4

    if-ne v14, v3, :cond_38

    sget-object v3, Lcom/ardor3d/image/ImageDataFormat;->RGBA:Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v1, v3}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    goto :goto_29

    :cond_38
    sget-object v3, Lcom/ardor3d/image/ImageDataFormat;->RGB:Lcom/ardor3d/image/ImageDataFormat;

    invoke-virtual {v1, v3}, Lcom/ardor3d/image/Image;->setDataFormat(Lcom/ardor3d/image/ImageDataFormat;)V

    :goto_29
    sget-object v3, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    invoke-virtual {v1, v3}, Lcom/ardor3d/image/Image;->setDataType(Lcom/ardor3d/image/ImageDataType;)V

    invoke-virtual {v1, v2}, Lcom/ardor3d/image/Image;->setWidth(I)V

    move/from16 v2, v22

    invoke-virtual {v1, v2}, Lcom/ardor3d/image/Image;->setHeight(I)V

    invoke-virtual {v1, v0}, Lcom/ardor3d/image/Image;->setData(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method
