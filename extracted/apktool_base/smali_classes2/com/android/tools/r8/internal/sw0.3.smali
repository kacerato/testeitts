.class public abstract Lcom/android/tools/r8/internal/sw0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BII)I
    .locals 10

    :goto_0
    if-ge p1, p2, :cond_0

    aget-byte v0, p0, p1

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-lt p1, p2, :cond_1

    return v0

    :cond_1
    :goto_1
    if-lt p1, p2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    if-gez v2, :cond_1d

    const/16 v3, -0x20

    const/4 v4, -0x1

    const/16 v5, -0x41

    if-ge v2, v3, :cond_5

    if-lt v1, p2, :cond_3

    return v2

    :cond_3
    const/16 v3, -0x3e

    if-lt v2, v3, :cond_4

    add-int/lit8 p1, p1, 0x2

    aget-byte v1, p0, v1

    if-le v1, v5, :cond_1

    :cond_4
    return v4

    :cond_5
    const/16 v6, -0x10

    const/4 v7, 0x1

    const/16 v8, -0xc

    const/4 v9, 0x2

    if-ge v2, v6, :cond_12

    add-int/lit8 v6, p2, -0x1

    if-lt v1, v6, :cond_e

    sub-int/2addr p2, v1

    if-eqz p2, :cond_c

    if-eq p2, v7, :cond_9

    if-ne p2, v9, :cond_8

    aget-byte p2, p0, v1

    add-int/2addr p1, v9

    aget-byte p0, p0, p1

    if-gt v2, v8, :cond_7

    if-gt p2, v5, :cond_7

    if-le p0, v5, :cond_6

    goto :goto_2

    :cond_6
    shl-int/lit8 p1, p2, 0x8

    xor-int/2addr p1, v2

    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_7
    :goto_2
    return v4

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9
    aget-byte p0, p0, v1

    if-gt v2, v8, :cond_b

    if-le p0, v5, :cond_a

    goto :goto_3

    :cond_a
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, v2

    return p0

    :cond_b
    :goto_3
    return v4

    :cond_c
    if-le v2, v8, :cond_d

    return v4

    :cond_d
    return v2

    :cond_e
    add-int/lit8 v6, p1, 0x2

    aget-byte v1, p0, v1

    if-gt v1, v5, :cond_11

    const/16 v7, -0x60

    if-ne v2, v3, :cond_f

    if-lt v1, v7, :cond_11

    :cond_f
    const/16 v3, -0x13

    if-ne v2, v3, :cond_10

    if-ge v1, v7, :cond_11

    :cond_10
    add-int/lit8 p1, p1, 0x3

    aget-byte v1, p0, v6

    if-le v1, v5, :cond_1

    :cond_11
    return v4

    :cond_12
    add-int/lit8 v3, p2, -0x2

    if-lt v1, v3, :cond_1b

    sub-int/2addr p2, v1

    if-eqz p2, :cond_19

    if-eq p2, v7, :cond_16

    if-ne p2, v9, :cond_15

    aget-byte p2, p0, v1

    add-int/2addr p1, v9

    aget-byte p0, p0, p1

    if-gt v2, v8, :cond_14

    if-gt p2, v5, :cond_14

    if-le p0, v5, :cond_13

    goto :goto_4

    :cond_13
    shl-int/lit8 p1, p2, 0x8

    xor-int/2addr p1, v2

    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_14
    :goto_4
    return v4

    :cond_15
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_16
    aget-byte p0, p0, v1

    if-gt v2, v8, :cond_18

    if-le p0, v5, :cond_17

    goto :goto_5

    :cond_17
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, v2

    return p0

    :cond_18
    :goto_5
    return v4

    :cond_19
    if-le v2, v8, :cond_1a

    return v4

    :cond_1a
    return v2

    :cond_1b
    add-int/lit8 v3, p1, 0x2

    aget-byte v1, p0, v1

    if-gt v1, v5, :cond_1c

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_1c

    add-int/lit8 v1, p1, 0x3

    aget-byte v2, p0, v3

    if-gt v2, v5, :cond_1c

    add-int/lit8 p1, p1, 0x4

    aget-byte v1, p0, v1

    if-le v1, v5, :cond_1

    :cond_1c
    return v4

    :cond_1d
    move p1, v1

    goto/16 :goto_1
.end method
