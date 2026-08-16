.class public abstract Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field constantPoolOffsets:[I

.field reference:[B

.field structOffset:I


# direct methods
.method public constructor <init>([B[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    return-void
.end method


# virtual methods
.method public doubleAt(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i8At(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatAt(I)F
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i4At(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public i4At(I)I
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, v0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v2, p1

    or-int p1, v1, v2

    return p1
.end method

.method public i8At(I)J
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, v0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v5, v1

    const/16 v1, 0x30

    shl-long/2addr v5, v1

    or-long v1, v2, v5

    add-int/lit8 v3, p1, 0x3

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v5, v3

    const/16 v3, 0x20

    shl-long/2addr v5, v3

    or-long/2addr v1, v5

    add-int/lit8 v3, p1, 0x5

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v5, v3

    const/16 v3, 0x10

    shl-long/2addr v5, v3

    or-long/2addr v1, v5

    add-int/lit8 p1, p1, 0x7

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    or-long v0, v1, v3

    return-wide v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    return-void
.end method

.method public u1At(I)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    add-int/2addr p1, v1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public u2At(I)I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method public u4At(I)J
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, v0, p1

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v5, v1

    or-long v1, v2, v5

    add-int/lit8 p1, p1, 0x3

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-long v3, v3

    or-long/2addr v1, v3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    or-long v0, v1, v3

    return-wide v0
.end method

.method public utf8At(II)[C
    .locals 10

    new-array v0, p2, [C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    add-int/2addr v1, p1

    const/4 p1, 0x0

    move v3, p1

    move v2, p2

    :goto_0
    if-nez v2, :cond_1

    if-eq v3, p2, :cond_0

    new-array p2, v3, [C

    invoke-static {v0, p1, p2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p2

    :cond_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v6, v4, v1

    and-int/lit16 v7, v6, 0xff

    add-int/lit8 v8, v2, -0x1

    and-int/lit16 v9, v6, 0x80

    if-eqz v9, :cond_3

    and-int/lit8 v7, v6, 0x20

    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, -0x3

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0xc

    add-int/lit8 v7, v1, 0x2

    aget-byte v5, v4, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x3

    aget-byte v4, v4, v7

    and-int/lit8 v4, v4, 0x3f

    or-int v7, v5, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x2

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x6

    add-int/lit8 v1, v1, 0x2

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0x3f

    or-int v7, v6, v4

    goto :goto_1

    :cond_3
    move v1, v5

    move v2, v8

    :goto_1
    add-int/lit8 v4, v3, 0x1

    int-to-char v5, v7

    aput-char v5, v0, v3

    move v3, v4

    goto :goto_0
.end method
