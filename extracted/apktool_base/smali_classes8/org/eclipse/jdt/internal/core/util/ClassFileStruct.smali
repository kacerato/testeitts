.class public abstract Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doubleAt([BII)D
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i8At([BII)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final equals([C[C)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    array-length v2, p1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_4

    return v0

    :cond_4
    aget-char v3, p1, v2

    aget-char v4, p2, v2

    if-eq v3, v4, :cond_3

    :cond_5
    :goto_0
    return v1
.end method

.method public floatAt([BII)F
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i4At([BII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public i1At([BII)I
    .locals 0

    add-int/2addr p2, p3

    aget-byte p1, p1, p2

    return p1
.end method

.method public i2At([BII)I
    .locals 0

    add-int/2addr p2, p3

    add-int/lit8 p3, p2, 0x1

    aget-byte p2, p1, p2

    shl-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p3

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p2, p1

    return p2
.end method

.method public i4At([BII)I
    .locals 2

    add-int/2addr p2, p3

    add-int/lit8 p3, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x2

    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x10

    add-int/2addr v0, p3

    add-int/lit8 p2, p2, 0x3

    aget-byte p3, p1, v1

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    add-int/2addr v0, p3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    return v0
.end method

.method public i8At([BII)J
    .locals 5

    add-int/2addr p2, p3

    add-int/lit8 p3, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    int-to-long v3, p3

    const/16 p3, 0x30

    shl-long/2addr v3, p3

    add-long/2addr v0, v3

    add-int/lit8 p3, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    int-to-long v3, p3

    const/16 p3, 0x20

    shl-long/2addr v3, p3

    add-long/2addr v0, v3

    add-int/lit8 p3, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    int-to-long v3, p3

    const/16 p3, 0x10

    shl-long/2addr v3, p3

    add-long/2addr v0, v3

    add-int/lit8 p2, p2, 0x7

    aget-byte p3, p1, v2

    and-int/lit16 p3, p3, 0xff

    int-to-long v2, p3

    const/16 p3, 0x8

    shl-long/2addr v2, p3

    add-long/2addr v0, v2

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public u1At([BII)I
    .locals 0

    add-int/2addr p2, p3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public u2At([BII)I
    .locals 0

    add-int/2addr p2, p3

    add-int/lit8 p3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p3

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p2, p1

    return p2
.end method

.method public u4At([BII)J
    .locals 5

    add-int/2addr p2, p3

    add-int/lit8 p3, p2, 0x1

    aget-byte v0, p1, p2

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x10

    int-to-long v3, p3

    add-long/2addr v0, v3

    add-int/lit8 p2, p2, 0x3

    aget-byte p3, p1, v2

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    int-to-long v2, p3

    add-long/2addr v0, v2

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public utf8At([BIII)[C
    .locals 8

    new-array v0, p4, [C

    add-int/2addr p3, p2

    const/4 p2, 0x0

    move v2, p2

    move v1, p4

    :goto_0
    if-nez v1, :cond_1

    if-eq v2, p4, :cond_0

    new-array p1, v2, [C

    invoke-static {v0, p2, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v3, p3, 0x1

    aget-byte v4, p1, p3

    and-int/lit16 v5, v4, 0xff

    add-int/lit8 v6, v1, -0x1

    and-int/lit16 v7, v4, 0x80

    if-eqz v7, :cond_3

    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, -0x3

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    add-int/lit8 v5, p3, 0x2

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v4, v3

    add-int/lit8 p3, p3, 0x3

    aget-byte v3, p1, v5

    :goto_1
    and-int/lit8 v3, v3, 0x3f

    add-int v5, v4, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x2

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 p3, p3, 0x2

    aget-byte v3, p1, v3

    goto :goto_1

    :cond_3
    move p3, v3

    move v1, v6

    :goto_2
    add-int/lit8 v3, v2, 0x1

    int-to-char v4, v5

    aput-char v4, v0, v2

    move v2, v3

    goto :goto_0
.end method
