.class public Lcom/jme3/texture/plugins/DXTFlipper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final bb:Ljava/nio/ByteBuffer;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/texture/plugins/DXTFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/plugins/DXTFlipper;->logger:Ljava/util/logging/Logger;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/plugins/DXTFlipper;->bb:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flipDXT(Ljava/nio/ByteBuffer;IILcom/jme3/texture/Image$Format;)Ljava/nio/ByteBuffer;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Lcom/jme3/texture/Image$Format;->ETC1:Lcom/jme3/texture/Image$Format;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/jme3/texture/Image$Format;->ETC2:Lcom/jme3/texture/Image$Format;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/jme3/texture/Image$Format;->ETC2_ALPHA1:Lcom/jme3/texture/Image$Format;

    if-ne v2, v3, :cond_1

    :cond_0
    move/from16 v4, p1

    goto/16 :goto_f

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->limit()I

    move-result v3

    move/from16 v4, p1

    int-to-float v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    int-to-float v6, v1

    div-float/2addr v6, v5

    invoke-static {v6}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    sget-object v6, Lcom/jme3/texture/plugins/DXTFlipper$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v11, 0x1

    packed-switch v6, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No flip support for texture format "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v2, v10

    goto :goto_0

    :pswitch_1
    move v2, v9

    goto :goto_0

    :pswitch_2
    move v2, v7

    goto :goto_0

    :pswitch_3
    move v2, v8

    goto :goto_0

    :pswitch_4
    move v2, v11

    :goto_0
    const/16 v6, 0x8

    if-eq v2, v11, :cond_3

    if-ne v2, v10, :cond_2

    goto :goto_1

    :cond_2
    const/16 v12, 0x10

    goto :goto_2

    :cond_3
    :goto_1
    move v12, v6

    :goto_2
    mul-int v13, v4, v5

    mul-int/2addr v13, v12

    invoke-static {v13}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    if-ne v1, v11, :cond_4

    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_e

    :cond_4
    if-ne v1, v8, :cond_c

    new-array v5, v6, [B

    if-eq v2, v11, :cond_5

    if-eq v2, v10, :cond_5

    new-array v14, v6, [B

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    const/4 v15, 0x0

    :goto_4
    if-ge v15, v4, :cond_b

    mul-int v6, v15, v12

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v6, v12

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-eqz v14, :cond_8

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eq v2, v8, :cond_7

    if-eq v2, v7, :cond_6

    if-eq v2, v9, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {v14, v1}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT5Block([BI)V

    goto :goto_5

    :cond_7
    invoke-static {v14, v1}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT3Block([BI)V

    :goto_5
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_8
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eq v2, v9, :cond_a

    if-ne v2, v10, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {v5, v1}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT1orDXTA3Block([BI)V

    goto :goto_7

    :cond_a
    :goto_6
    invoke-static {v5, v1}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT5Block([BI)V

    :goto_7
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_e

    :cond_c
    if-lt v1, v9, :cond_15

    new-array v14, v6, [B

    if-eq v2, v11, :cond_d

    if-eq v2, v10, :cond_d

    new-array v6, v6, [B

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    :goto_8
    const/4 v15, 0x0

    :goto_9
    if-ge v15, v5, :cond_14

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v4, :cond_13

    mul-int v16, v15, v4

    add-int v16, v16, v10

    mul-int v9, v16, v12

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v9, v12

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int v9, v5, v15

    sub-int/2addr v9, v11

    mul-int/2addr v9, v4

    add-int/2addr v9, v10

    mul-int/2addr v9, v12

    invoke-virtual {v13, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v9, v12

    invoke-virtual {v13, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-eqz v6, :cond_10

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eq v2, v8, :cond_f

    if-eq v2, v7, :cond_e

    const/4 v9, 0x4

    if-eq v2, v9, :cond_e

    goto :goto_b

    :cond_e
    invoke-static {v6, v1}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT5Block([BI)V

    goto :goto_b

    :cond_f
    invoke-static {v6, v1}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT3Block([BI)V

    :goto_b
    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_10
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v9, 0x4

    const/4 v7, 0x5

    if-eq v2, v9, :cond_12

    if-ne v2, v7, :cond_11

    goto :goto_c

    :cond_11
    invoke-static {v14, v1}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT1orDXTA3Block([BI)V

    goto :goto_d

    :cond_12
    :goto_c
    invoke-static {v14, v1}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT5Block([BI)V

    :goto_d
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x3

    goto :goto_a

    :cond_13
    const/4 v7, 0x5

    add-int/lit8 v15, v15, 0x1

    move v10, v7

    const/4 v7, 0x3

    goto :goto_9

    :cond_14
    invoke-virtual {v13}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_e
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v13

    :cond_15
    const/4 v0, 0x0

    return-object v0

    :goto_f
    sget-object v3, Lcom/jme3/texture/plugins/DXTFlipper;->logger:Ljava/util/logging/Logger;

    const-string v5, "This is not a DXT format, but ETC. Use flipETC instead."

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-static/range {p0 .. p3}, Lcom/jme3/texture/plugins/ETCFlipper;->flipETC(Ljava/nio/ByteBuffer;IILcom/jme3/texture/Image$Format;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static flipDXT1orDXTA3Block([BI)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x7

    aget-byte v0, p0, p1

    aget-byte v3, p0, v2

    aput-byte v3, p0, p1

    aput-byte v0, p0, v2

    const/4 p1, 0x6

    aget-byte v0, p0, p1

    aget-byte v2, p0, v1

    aput-byte v2, p0, p1

    aput-byte v0, p0, v1

    return-void

    :cond_0
    aget-byte p1, p0, v1

    aget-byte v0, p0, v2

    aput-byte v0, p0, v1

    aput-byte p1, p0, v2

    :cond_1
    return-void
.end method

.method private static flipDXT3Block([BI)V
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    aget-byte v2, p0, v1

    aget-byte v3, p0, v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    aget-byte p1, p0, v5

    aput-byte p1, p0, v1

    aget-byte p1, p0, v4

    aput-byte p1, p0, v0

    aput-byte v2, p0, v5

    aput-byte v3, p0, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    aget-byte v6, p0, p1

    aput-byte v6, p0, v1

    const/4 v1, 0x7

    aget-byte v6, p0, v1

    aput-byte v6, p0, v0

    aput-byte v2, p0, p1

    aput-byte v3, p0, v1

    aget-byte p1, p0, v5

    aget-byte v0, p0, v4

    const/4 v1, 0x4

    aget-byte v2, p0, v1

    aput-byte v2, p0, v5

    const/4 v2, 0x5

    aget-byte v3, p0, v2

    aput-byte v3, p0, v4

    aput-byte p1, p0, v1

    aput-byte v0, p0, v2

    :goto_0
    return-void
.end method

.method private static flipDXT5Block([BI)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    aget-byte v4, v0, v2

    sget-object v4, Lcom/jme3/texture/plugins/DXTFlipper;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v5, 0x2

    const/4 v6, 0x6

    invoke-virtual {v4, v0, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    const/4 v7, 0x3

    if-ne v1, v5, :cond_1

    const/4 v11, 0x0

    invoke-static {v14, v15, v3, v2}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v12

    const/4 v10, 0x0

    move-wide v8, v14

    invoke-static/range {v8 .. v13}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v16

    const/16 v19, 0x0

    invoke-static {v14, v15, v2, v2}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v20

    const/16 v18, 0x1

    invoke-static/range {v16 .. v21}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v8

    invoke-static {v14, v15, v5, v2}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v12

    const/4 v10, 0x2

    invoke-static/range {v8 .. v13}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v16

    invoke-static {v14, v15, v7, v2}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v20

    const/16 v18, 0x3

    invoke-static/range {v16 .. v21}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v8

    const/4 v11, 0x1

    invoke-static {v14, v15, v3, v3}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v12

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v16

    const/16 v19, 0x1

    invoke-static {v14, v15, v2, v3}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v20

    const/16 v18, 0x1

    invoke-static/range {v16 .. v21}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v8

    invoke-static {v14, v15, v5, v3}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v12

    const/4 v10, 0x2

    invoke-static/range {v8 .. v13}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v16

    invoke-static {v14, v15, v7, v3}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v20

    const/16 v18, 0x3

    invoke-static/range {v16 .. v21}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v1

    goto/16 :goto_0

    :cond_1
    const/4 v11, 0x0

    invoke-static {v14, v15, v3, v7}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v12

    const/4 v10, 0x0

    move-wide v8, v14

    invoke-static/range {v8 .. v13}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v16

    const/16 v19, 0x0

    invoke-static {v14, v15, v2, v7}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v20

    const/16 v18, 0x1

    invoke-static/range {v16 .. v21}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v8

    invoke-static {v14, v15, v5, v7}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v12

    const/4 v10, 0x2

    invoke-static/range {v8 .. v13}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v16

    invoke-static {v14, v15, v7, v7}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v20

    const/16 v18, 0x3

    invoke-static/range {v16 .. v21}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v8

    const/4 v11, 0x1

    invoke-static {v14, v15, v3, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v12

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v16

    const/16 v19, 0x1

    invoke-static {v14, v15, v2, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v20

    const/16 v18, 0x1

    invoke-static/range {v16 .. v21}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v8

    invoke-static {v14, v15, v5, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v12

    const/4 v10, 0x2

    invoke-static/range {v8 .. v13}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v16

    invoke-static {v14, v15, v7, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v20

    const/16 v18, 0x3

    invoke-static/range {v16 .. v21}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v8

    const/4 v11, 0x2

    invoke-static {v14, v15, v3, v2}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v12

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v16

    const/16 v19, 0x2

    invoke-static {v14, v15, v2, v2}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v20

    const/16 v18, 0x1

    invoke-static/range {v16 .. v21}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v8

    invoke-static {v14, v15, v5, v2}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v12

    const/4 v10, 0x2

    invoke-static/range {v8 .. v13}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v16

    invoke-static {v14, v15, v7, v2}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v20

    const/16 v18, 0x3

    invoke-static/range {v16 .. v21}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v8

    const/4 v11, 0x3

    invoke-static {v14, v15, v3, v3}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v12

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v16

    const/16 v19, 0x3

    invoke-static {v14, v15, v2, v3}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v20

    const/16 v18, 0x1

    invoke-static/range {v16 .. v21}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v8

    invoke-static {v14, v15, v5, v3}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v12

    const/4 v10, 0x2

    invoke-static/range {v8 .. v13}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v16

    invoke-static {v14, v15, v7, v3}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v20

    const/16 v18, 0x3

    invoke-static/range {v16 .. v21}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v1

    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v4, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v4, v0, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method private static readCode5(JII)J
    .locals 2

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x3

    int-to-long p2, p3

    long-to-int p2, p2

    const-wide/16 v0, 0x7

    shl-long/2addr v0, p2

    and-long/2addr p0, v0

    shr-long/2addr p0, p2

    return-wide p0
.end method

.method private static writeCode5(JIIJ)J
    .locals 2

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x3

    int-to-long p2, p3

    const-wide/16 v0, 0x7

    and-long/2addr p4, v0

    long-to-int p2, p2

    shl-long p3, p4, p2

    shl-long/2addr v0, p2

    not-long v0, v0

    and-long/2addr p0, v0

    or-long/2addr p0, p3

    return-wide p0
.end method
