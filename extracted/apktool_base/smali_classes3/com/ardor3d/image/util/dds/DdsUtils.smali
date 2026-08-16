.class public Lcom/ardor3d/image/util/dds/DdsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ThreeBitMask:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flipDXT([BIILcom/ardor3d/image/ImageDataFormat;)[B
    .locals 11

    array-length v0, p0

    new-array v0, v0, [B

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p1, p1, 0x2

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 p2, p2, 0x2

    invoke-virtual {p3}, Lcom/ardor3d/image/ImageDataFormat;->getComponents()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    sub-int v4, p2, v3

    add-int/lit8 v4, v4, -0x1

    move v5, v2

    :goto_1
    if-ge v5, p1, :cond_0

    mul-int v6, v4, p1

    add-int/2addr v6, v5

    mul-int/2addr v6, v1

    mul-int v7, v3, p1

    add-int/2addr v7, v5

    mul-int/2addr v7, v1

    sget-object v8, Lcom/ardor3d/image/util/dds/DdsUtils$1;->$SwitchMap$com$ardor3d$image$ImageDataFormat:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x4

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {p0, v7, v0, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v6, 0x4

    add-int/lit8 v10, v7, 0x7

    aget-byte v10, p0, v10

    aput-byte v10, v0, v8

    add-int/lit8 v8, v6, 0x5

    add-int/lit8 v10, v7, 0x6

    aget-byte v10, p0, v10

    aput-byte v10, v0, v8

    add-int/lit8 v8, v6, 0x6

    add-int/lit8 v10, v7, 0x5

    aget-byte v10, p0, v10

    aput-byte v10, v0, v8

    add-int/lit8 v8, v6, 0x7

    add-int/lit8 v10, v7, 0x4

    aget-byte v10, p0, v10

    aput-byte v10, v0, v8

    add-int/lit8 v8, v7, 0x8

    add-int/lit8 v10, v6, 0x8

    invoke-static {p0, v8, v0, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v6, 0xc

    add-int/lit8 v9, v7, 0xf

    aget-byte v9, p0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v6, 0xd

    add-int/lit8 v9, v7, 0xe

    aget-byte v9, p0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v6, 0xe

    add-int/lit8 v9, v7, 0xd

    aget-byte v9, p0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v6, v6, 0xf

    add-int/lit8 v7, v7, 0xc

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    goto/16 :goto_2

    :pswitch_1
    aget-byte v8, p0, v7

    aput-byte v8, v0, v6

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, p0, v10

    aput-byte v10, v0, v8

    add-int/lit8 v8, v6, 0x5

    add-int/lit8 v10, v7, 0x2

    invoke-static {p0, v10}, Lcom/ardor3d/image/util/dds/DdsUtils;->getUInt24([BI)I

    move-result v10

    invoke-static {v10}, Lcom/ardor3d/image/util/dds/DdsUtils;->flipUInt24(I)I

    move-result v10

    invoke-static {v0, v8, v10}, Lcom/ardor3d/image/util/dds/DdsUtils;->getBytesFromUInt24([BII)V

    add-int/lit8 v8, v6, 0x2

    add-int/lit8 v10, v7, 0x5

    invoke-static {p0, v10}, Lcom/ardor3d/image/util/dds/DdsUtils;->getUInt24([BI)I

    move-result v10

    invoke-static {v10}, Lcom/ardor3d/image/util/dds/DdsUtils;->flipUInt24(I)I

    move-result v10

    invoke-static {v0, v8, v10}, Lcom/ardor3d/image/util/dds/DdsUtils;->getBytesFromUInt24([BII)V

    add-int/lit8 v8, v7, 0x8

    add-int/lit8 v10, v6, 0x8

    invoke-static {p0, v8, v0, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v6, 0xc

    add-int/lit8 v9, v7, 0xf

    aget-byte v9, p0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v6, 0xd

    add-int/lit8 v9, v7, 0xe

    aget-byte v9, p0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v6, 0xe

    add-int/lit8 v9, v7, 0xd

    aget-byte v9, p0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v6, v6, 0xf

    add-int/lit8 v7, v7, 0xc

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    goto/16 :goto_2

    :pswitch_2
    add-int/lit8 v8, v7, 0x6

    aget-byte v8, p0, v8

    aput-byte v8, v0, v6

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v10, v7, 0x7

    aget-byte v10, p0, v10

    aput-byte v10, v0, v8

    add-int/lit8 v8, v6, 0x2

    add-int/lit8 v10, v7, 0x4

    aget-byte v10, p0, v10

    aput-byte v10, v0, v8

    add-int/lit8 v8, v6, 0x3

    add-int/lit8 v10, v7, 0x5

    aget-byte v10, p0, v10

    aput-byte v10, v0, v8

    add-int/lit8 v8, v6, 0x4

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, p0, v10

    aput-byte v10, v0, v8

    add-int/lit8 v8, v6, 0x5

    add-int/lit8 v10, v7, 0x3

    aget-byte v10, p0, v10

    aput-byte v10, v0, v8

    add-int/lit8 v8, v6, 0x6

    aget-byte v10, p0, v7

    aput-byte v10, v0, v8

    add-int/lit8 v8, v6, 0x7

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, p0, v10

    aput-byte v10, v0, v8

    add-int/lit8 v8, v7, 0x8

    add-int/lit8 v10, v6, 0x8

    invoke-static {p0, v8, v0, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v6, 0xc

    add-int/lit8 v9, v7, 0xf

    aget-byte v9, p0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v6, 0xd

    add-int/lit8 v9, v7, 0xe

    aget-byte v9, p0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v6, 0xe

    add-int/lit8 v9, v7, 0xd

    aget-byte v9, p0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v6, v6, 0xf

    add-int/lit8 v7, v7, 0xc

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    goto :goto_2

    :pswitch_3
    invoke-static {p0, v7, v0, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v6, 0x4

    add-int/lit8 v9, v7, 0x7

    aget-byte v9, p0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v6, 0x5

    add-int/lit8 v9, v7, 0x6

    aget-byte v9, p0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v6, 0x6

    add-int/lit8 v9, v7, 0x5

    aget-byte v9, p0, v9

    aput-byte v9, v0, v8

    add-int/lit8 v6, v6, 0x7

    add-int/lit8 v7, v7, 0x4

    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static flipUInt24(I)I
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [[B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x4

    new-array v4, v4, [B

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aget-object v3, v1, v2

    and-int/lit8 v4, p0, 0x7

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    shr-int/lit8 v4, p0, 0x3

    and-int/lit8 v4, v4, 0x7

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    shr-int/lit8 v4, p0, 0x6

    and-int/lit8 v4, v4, 0x7

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    shr-int/lit8 v4, p0, 0x9

    and-int/lit8 v4, v4, 0x7

    int-to-byte v4, v4

    const/4 v6, 0x3

    aput-byte v4, v3, v6

    shr-int/lit8 v4, p0, 0xc

    aget-object v1, v1, v5

    and-int/lit8 v4, v4, 0x7

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    shr-int/lit8 v7, p0, 0xf

    and-int/lit8 v7, v7, 0x7

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    shr-int/lit8 v8, p0, 0x12

    and-int/lit8 v8, v8, 0x7

    int-to-byte v8, v8

    aput-byte v8, v1, v0

    shr-int/lit8 p0, p0, 0x15

    and-int/lit8 p0, p0, 0x7

    int-to-byte p0, p0

    aput-byte p0, v1, v6

    shl-int/lit8 v1, v7, 0x3

    or-int/2addr v1, v4

    shl-int/lit8 v4, v8, 0x6

    or-int/2addr v1, v4

    shl-int/lit8 p0, p0, 0x9

    or-int/2addr p0, v1

    aget-byte v1, v3, v2

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr p0, v1

    aget-byte v1, v3, v5

    shl-int/lit8 v1, v1, 0xf

    or-int/2addr p0, v1

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x12

    or-int/2addr p0, v0

    aget-byte v0, v3, v6

    shl-int/lit8 v0, v0, 0x15

    or-int/2addr p0, v0

    return p0
.end method

.method private static getBytesFromUInt24([BII)V
    .locals 2

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    const v1, 0xff00

    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x2

    const/high16 v0, 0xff0000

    and-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x10

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method public static final getInt(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/ardor3d/image/util/dds/DdsUtils;->getInt([B)I

    move-result p0

    return p0
.end method

.method public static final getInt([B)I
    .locals 3

    const/4 v0, 0x0

    .line 2
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 3
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 4
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 5
    :cond_0
    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 6
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 7
    :cond_1
    array-length v1, p0

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    .line 8
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method private static getUInt24([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public static final isSet(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final shiftCount(I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :goto_0
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_2

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Error;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return v0
.end method
