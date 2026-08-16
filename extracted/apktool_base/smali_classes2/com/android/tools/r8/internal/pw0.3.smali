.class public final Lcom/android/tools/r8/internal/pw0;
.super Lcom/android/tools/r8/internal/ow0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ow0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BII)I
    .locals 7

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p4, p3

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v0, :cond_0

    add-int v3, v1, p3

    if-ge v3, p4, :cond_0

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_0

    int-to-byte v2, v4

    .line 26
    aput-byte v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    add-int/2addr p3, v0

    return p3

    :cond_1
    add-int/2addr p3, v1

    :goto_1
    if-ge v1, v0, :cond_b

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_2

    if-ge p3, p4, :cond_2

    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    .line 28
    aput-byte v3, p2, p3

    move p3, v4

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x800

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_3

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 29
    aput-byte v5, p2, p3

    add-int/lit8 p3, p3, 0x2

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 30
    aput-byte v3, p2, v4

    goto :goto_2

    :cond_3
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_4

    if-ge v4, v3, :cond_5

    :cond_4
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_5

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 31
    aput-byte v5, p2, p3

    add-int/lit8 v5, p3, 0x2

    ushr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 32
    aput-byte v6, p2, v4

    add-int/lit8 p3, p3, 0x3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 33
    aput-byte v3, p2, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_8

    add-int/lit8 v4, v1, 0x1

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 35
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 36
    aput-byte v5, p2, p3

    add-int/lit8 v5, p3, 0x2

    ushr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 37
    aput-byte v6, p2, v3

    add-int/lit8 v3, p3, 0x3

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 38
    aput-byte v6, p2, v5

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 39
    aput-byte v1, p2, v3

    move v1, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    move v1, v4

    .line 40
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/qw0;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p1, v1, v0}, Lcom/android/tools/r8/internal/qw0;-><init>(II)V

    throw p1

    :cond_8
    if-gt v5, v3, :cond_a

    if-gt v3, v4, :cond_a

    add-int/lit8 p2, v1, 0x1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-eq p2, p4, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_a

    .line 42
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/qw0;

    invoke-direct {p1, v1, v0}, Lcom/android/tools/r8/internal/qw0;-><init>(II)V

    throw p1

    .line 43
    :cond_a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Failed writing "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p4, " at index "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return p3
.end method

.method public final a([BII)Ljava/lang/String;
    .locals 9

    or-int v0, p2, p3

    .line 1
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_b

    add-int v0, p2, p3

    .line 2
    new-array p3, p3, [C

    const/4 v7, 0x0

    move v1, v7

    :goto_0
    if-ge p2, v0, :cond_1

    .line 3
    aget-byte v2, p1, p2

    .line 4
    invoke-static {v2}, Lcom/android/tools/r8/internal/nw0;->a(B)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v1, 0x1

    int-to-char v2, v2

    .line 5
    aput-char v2, p3, v1

    move v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    move v8, v1

    :cond_2
    :goto_2
    if-ge p2, v0, :cond_a

    add-int/lit8 v1, p2, 0x1

    .line 6
    aget-byte v2, p1, p2

    .line 7
    invoke-static {v2}, Lcom/android/tools/r8/internal/nw0;->a(B)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 p2, v8, 0x1

    int-to-char v2, v2

    .line 8
    aput-char v2, p3, v8

    move v8, p2

    move p2, v1

    :goto_3
    if-ge p2, v0, :cond_2

    .line 9
    aget-byte v1, p1, p2

    .line 10
    invoke-static {v1}, Lcom/android/tools/r8/internal/nw0;->a(B)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v8, 0x1

    int-to-char v1, v1

    .line 11
    aput-char v1, p3, v8

    move v8, v2

    goto :goto_3

    :cond_4
    const/16 v3, -0x20

    const-string v4, "Protocol message had invalid UTF-8."

    if-ge v2, v3, :cond_6

    if-ge v1, v0, :cond_5

    add-int/lit8 p2, p2, 0x2

    .line 12
    aget-byte v1, p1, v1

    add-int/lit8 v3, v8, 0x1

    invoke-static {v2, v1, p3, v8}, Lcom/android/tools/r8/internal/nw0;->a(BB[CI)V

    move v8, v3

    goto :goto_2

    .line 13
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p1, v4}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1

    :cond_6
    const/16 v3, -0x10

    if-ge v2, v3, :cond_8

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_7

    add-int/lit8 v3, p2, 0x2

    .line 15
    aget-byte v1, p1, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte v3, p1, v3

    add-int/lit8 v4, v8, 0x1

    invoke-static {v2, v1, v3, p3, v8}, Lcom/android/tools/r8/internal/nw0;->a(BBB[CI)V

    move v8, v4

    goto :goto_2

    .line 16
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p1, v4}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1

    :cond_8
    add-int/lit8 v3, v0, -0x2

    if-ge v1, v3, :cond_9

    add-int/lit8 v3, p2, 0x2

    .line 18
    aget-byte v4, p1, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v3, p1, v3

    add-int/lit8 p2, p2, 0x4

    aget-byte v5, p1, v1

    move v1, v2

    move v2, v4

    move v4, v5

    move-object v5, p3

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/internal/nw0;->a(BBBB[CI)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 19
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p1, v4}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1

    .line 21
    :cond_a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v7, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 22
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b([BII)I
    .locals 10

    :goto_0
    if-ge p2, p3, :cond_0

    .line 2
    aget-byte v0, p1, p2

    if-ltz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-lt p2, p3, :cond_1

    return v0

    :cond_1
    :goto_1
    if-lt p2, p3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, p2, 0x1

    .line 3
    aget-byte v2, p1, p2

    if-gez v2, :cond_15

    const/16 v3, -0x20

    const/4 v4, -0x1

    const/16 v5, -0x41

    if-ge v2, v3, :cond_5

    if-lt v1, p3, :cond_3

    return v2

    :cond_3
    const/16 v3, -0x3e

    if-lt v2, v3, :cond_4

    add-int/lit8 p2, p2, 0x2

    .line 4
    aget-byte v1, p1, v1

    if-le v1, v5, :cond_1

    :cond_4
    return v4

    :cond_5
    const/16 v6, -0x10

    const/16 v7, -0xc

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-ge v2, v6, :cond_e

    add-int/lit8 v6, p3, -0x1

    if-lt v1, v6, :cond_a

    sub-int/2addr p3, v1

    if-eqz p3, :cond_8

    if-eq p3, v8, :cond_7

    if-ne p3, v9, :cond_6

    .line 5
    aget-byte p3, p1, v1

    add-int/2addr p2, v9

    aget-byte p1, p1, p2

    invoke-static {v2, p3, p1}, Lcom/android/tools/r8/internal/tw0;->a(III)I

    move-result p1

    return p1

    .line 6
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_7
    aget-byte p1, p1, v1

    invoke-static {v2, p1}, Lcom/android/tools/r8/internal/tw0;->a(II)I

    move-result p1

    return p1

    :cond_8
    if-le v2, v7, :cond_9

    return v4

    :cond_9
    return v2

    :cond_a
    add-int/lit8 v6, p2, 0x2

    .line 8
    aget-byte v1, p1, v1

    if-gt v1, v5, :cond_d

    const/16 v7, -0x60

    if-ne v2, v3, :cond_b

    if-lt v1, v7, :cond_d

    :cond_b
    const/16 v3, -0x13

    if-ne v2, v3, :cond_c

    if-ge v1, v7, :cond_d

    :cond_c
    add-int/lit8 p2, p2, 0x3

    aget-byte v1, p1, v6

    if-le v1, v5, :cond_1

    :cond_d
    return v4

    :cond_e
    add-int/lit8 v3, p3, -0x2

    if-lt v1, v3, :cond_13

    sub-int/2addr p3, v1

    if-eqz p3, :cond_11

    if-eq p3, v8, :cond_10

    if-ne p3, v9, :cond_f

    .line 9
    aget-byte p3, p1, v1

    add-int/2addr p2, v9

    aget-byte p1, p1, p2

    invoke-static {v2, p3, p1}, Lcom/android/tools/r8/internal/tw0;->a(III)I

    move-result p1

    return p1

    .line 10
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_10
    aget-byte p1, p1, v1

    invoke-static {v2, p1}, Lcom/android/tools/r8/internal/tw0;->a(II)I

    move-result p1

    return p1

    :cond_11
    if-le v2, v7, :cond_12

    return v4

    :cond_12
    return v2

    :cond_13
    add-int/lit8 v3, p2, 0x2

    .line 12
    aget-byte v1, p1, v1

    if-gt v1, v5, :cond_14

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_14

    add-int/lit8 v1, p2, 0x3

    aget-byte v2, p1, v3

    if-gt v2, v5, :cond_14

    add-int/lit8 p2, p2, 0x4

    aget-byte v1, p1, v1

    if-le v1, v5, :cond_1

    :cond_14
    return v4

    :cond_15
    move p2, v1

    goto/16 :goto_1
.end method

.method public final b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/ow0;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
