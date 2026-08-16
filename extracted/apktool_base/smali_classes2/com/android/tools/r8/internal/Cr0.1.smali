.class public abstract Lcom/android/tools/r8/internal/Cr0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/tools/r8/internal/Cr0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Cr0;->a:Ljava/util/logging/Logger;

    sget v0, Lcom/android/tools/r8/internal/xu0;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/wu0;->a:Lcom/android/tools/r8/internal/xu0;

    return-void
.end method

.method public static a(B)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x37

    return p0
.end method

.method public static a(Ljava/lang/String;ZZ)J
    .locals 7

    .line 89
    const-string v0, "-"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Number must be positive: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :goto_0
    const-string v2, "0x"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    const/16 v3, 0x10

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x2

    move v2, v3

    goto :goto_1

    .line 92
    :cond_2
    const-string v2, "0"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    goto :goto_1

    :cond_3
    const/16 v2, 0xa

    .line 93
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "Number out of range for 32-bit unsigned integer: "

    const-string v6, "Number out of range for 32-bit signed integer: "

    if-ge v4, v3, :cond_9

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    if-eqz v0, :cond_4

    neg-long v1, v1

    :cond_4
    if-nez p2, :cond_8

    if-eqz p1, :cond_6

    const-wide/32 p1, 0x7fffffff

    cmp-long p1, v1, p1

    if-gtz p1, :cond_5

    const-wide/32 p1, -0x80000000

    cmp-long p1, v1, p1

    if-ltz p1, :cond_5

    goto :goto_2

    .line 96
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-wide p1, 0x100000000L

    cmp-long p1, v1, p1

    if-gez p1, :cond_7

    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    if-ltz p1, :cond_7

    goto :goto_2

    .line 97
    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    return-wide v1

    .line 98
    :cond_9
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v0, :cond_a

    .line 99
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_a
    if-nez p2, :cond_e

    if-eqz p1, :cond_c

    .line 100
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_b

    goto :goto_3

    .line 101
    :cond_b
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_c
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_d

    goto :goto_3

    .line 103
    :cond_d
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    if-eqz p1, :cond_10

    .line 104
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x3f

    if-gt p1, p2, :cond_f

    goto :goto_3

    .line 105
    :cond_f
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Number out of range for 64-bit signed integer: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_10
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_11

    .line 107
    :goto_3
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 108
    :cond_11
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/i8;
    .locals 13

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/tools/r8/internal/m8;->c:Lcom/android/tools/r8/internal/i8;

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/i8;

    sget-object v1, Lcom/android/tools/r8/internal/YI;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/i8;-><init>([B)V

    .line 4
    array-length p0, p0

    .line 5
    new-array v1, p0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 6
    :goto_0
    iget-object v5, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    array-length v6, v5

    if-ge v3, v6, :cond_19

    .line 7
    aget-byte v6, v5, v3

    const/16 v7, 0x5c

    const/4 v8, 0x1

    if-ne v6, v7, :cond_18

    add-int/lit8 v6, v3, 0x1

    .line 8
    array-length v9, v5

    if-ge v6, v9, :cond_17

    .line 9
    aget-byte v9, v5, v6

    const/16 v10, 0x30

    if-gt v10, v9, :cond_2

    const/16 v11, 0x37

    if-gt v9, v11, :cond_2

    .line 10
    invoke-static {v9}, Lcom/android/tools/r8/internal/Cr0;->a(B)I

    move-result v5

    add-int/lit8 v3, v3, 0x2

    .line 11
    iget-object v7, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    array-length v9, v7

    if-ge v3, v9, :cond_0

    .line 12
    aget-byte v7, v7, v3

    if-gt v10, v7, :cond_0

    if-gt v7, v11, :cond_0

    mul-int/lit8 v5, v5, 0x8

    .line 13
    invoke-static {v7}, Lcom/android/tools/r8/internal/Cr0;->a(B)I

    move-result v6

    add-int/2addr v5, v6

    move v6, v3

    :cond_0
    add-int/lit8 v3, v6, 0x1

    .line 14
    iget-object v7, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    array-length v9, v7

    if-ge v3, v9, :cond_1

    .line 15
    aget-byte v7, v7, v3

    if-gt v10, v7, :cond_1

    if-gt v7, v11, :cond_1

    mul-int/lit8 v5, v5, 0x8

    .line 16
    invoke-static {v7}, Lcom/android/tools/r8/internal/Cr0;->a(B)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 17
    aput-byte v5, v1, v4

    :goto_2
    move v4, v6

    goto/16 :goto_7

    :cond_2
    const/16 v10, 0x22

    if-eq v9, v10, :cond_16

    const/16 v10, 0x27

    if-eq v9, v10, :cond_15

    const/16 v11, 0x3f

    if-eq v9, v11, :cond_14

    const/16 v11, 0x55

    if-eq v9, v11, :cond_e

    if-eq v9, v7, :cond_d

    const/16 v7, 0x66

    const/16 v11, 0xc

    if-eq v9, v7, :cond_c

    const/16 v7, 0x6e

    if-eq v9, v7, :cond_b

    const/16 v7, 0x72

    if-eq v9, v7, :cond_a

    const/16 v7, 0x78

    if-eq v9, v7, :cond_7

    const/16 v7, 0x61

    if-eq v9, v7, :cond_6

    const/16 v7, 0x62

    const/16 v12, 0x8

    if-eq v9, v7, :cond_5

    packed-switch v9, :pswitch_data_0

    .line 18
    new-instance p0, Lcom/android/tools/r8/internal/yr0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/yr0;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0xb

    .line 19
    aput-byte v5, v1, v4

    :goto_3
    move v4, v3

    move v3, v6

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 v6, v3, 0x2

    add-int/lit8 v7, v3, 0x5

    .line 20
    array-length v9, v5

    if-ge v7, v9, :cond_4

    .line 21
    aget-byte v5, v5, v6

    .line 22
    invoke-static {v5}, Lcom/android/tools/r8/internal/Cr0;->b(B)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v5, v3, 0x3

    .line 23
    iget-object v9, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    aget-byte v9, v9, v5

    .line 24
    invoke-static {v9}, Lcom/android/tools/r8/internal/Cr0;->b(B)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v3, v3, 0x4

    .line 25
    iget-object v9, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    aget-byte v9, v9, v3

    .line 26
    invoke-static {v9}, Lcom/android/tools/r8/internal/Cr0;->b(B)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 27
    iget-object v9, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    aget-byte v9, v9, v7

    .line 28
    invoke-static {v9}, Lcom/android/tools/r8/internal/Cr0;->b(B)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 29
    iget-object v9, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    aget-byte v6, v9, v6

    .line 30
    invoke-static {v6}, Lcom/android/tools/r8/internal/Cr0;->a(B)I

    move-result v6

    shl-int/2addr v6, v11

    .line 31
    iget-object v9, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    aget-byte v5, v9, v5

    .line 32
    invoke-static {v5}, Lcom/android/tools/r8/internal/Cr0;->a(B)I

    move-result v5

    shl-int/2addr v5, v12

    or-int/2addr v5, v6

    .line 33
    iget-object v6, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    aget-byte v3, v6, v3

    .line 34
    invoke-static {v3}, Lcom/android/tools/r8/internal/Cr0;->a(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v5

    .line 35
    iget-object v5, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    aget-byte v5, v5, v7

    .line 36
    invoke-static {v5}, Lcom/android/tools/r8/internal/Cr0;->a(B)I

    move-result v5

    or-int/2addr v3, v5

    int-to-char v3, v3

    .line 37
    invoke-static {v3}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 38
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 39
    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    array-length v3, v3

    :goto_4
    add-int/2addr v4, v3

    move v3, v7

    goto/16 :goto_7

    .line 41
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/yr0;

    const-string v0, "Invalid escape sequence: \'\\u\' refers to a surrogate"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/yr0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_4
    new-instance p0, Lcom/android/tools/r8/internal/yr0;

    const-string v0, "Invalid escape sequence: \'\\u\' with too few hex chars"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/yr0;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x9

    .line 43
    aput-byte v5, v1, v4

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v3, v4, 0x1

    .line 44
    aput-byte v12, v1, v4

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x7

    .line 45
    aput-byte v5, v1, v4

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v6, v3, 0x2

    .line 46
    array-length v7, v5

    if-ge v6, v7, :cond_9

    .line 47
    aget-byte v5, v5, v6

    .line 48
    invoke-static {v5}, Lcom/android/tools/r8/internal/Cr0;->b(B)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 49
    iget-object v5, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    aget-byte v5, v5, v6

    .line 50
    invoke-static {v5}, Lcom/android/tools/r8/internal/Cr0;->a(B)I

    move-result v5

    add-int/lit8 v3, v3, 0x3

    .line 51
    iget-object v7, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    array-length v9, v7

    if-ge v3, v9, :cond_8

    .line 52
    aget-byte v7, v7, v3

    .line 53
    invoke-static {v7}, Lcom/android/tools/r8/internal/Cr0;->b(B)Z

    move-result v7

    if-eqz v7, :cond_8

    mul-int/lit8 v5, v5, 0x10

    .line 54
    iget-object v6, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    aget-byte v6, v6, v3

    .line 55
    invoke-static {v6}, Lcom/android/tools/r8/internal/Cr0;->a(B)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_5

    :cond_8
    move v3, v6

    :goto_5
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 56
    aput-byte v5, v1, v4

    goto/16 :goto_2

    .line 57
    :cond_9
    new-instance p0, Lcom/android/tools/r8/internal/yr0;

    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/yr0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0xd

    .line 58
    aput-byte v5, v1, v4

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0xa

    .line 59
    aput-byte v5, v1, v4

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v3, v4, 0x1

    .line 60
    aput-byte v11, v1, v4

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v3, v4, 0x1

    .line 61
    aput-byte v7, v1, v4

    goto/16 :goto_3

    :cond_e
    add-int/lit8 v6, v3, 0x2

    add-int/lit8 v7, v3, 0x9

    .line 62
    array-length v5, v5

    const-string v9, "Invalid escape sequence: \'\\U\' with too few hex chars"

    if-ge v7, v5, :cond_13

    move v10, v2

    move v5, v6

    :goto_6
    add-int/lit8 v11, v3, 0xa

    if-ge v5, v11, :cond_10

    .line 63
    iget-object v11, v0, Lcom/android/tools/r8/internal/i8;->e:[B

    aget-byte v11, v11, v5

    .line 64
    invoke-static {v11}, Lcom/android/tools/r8/internal/Cr0;->b(B)Z

    move-result v12

    if-eqz v12, :cond_f

    shl-int/lit8 v10, v10, 0x4

    .line 65
    invoke-static {v11}, Lcom/android/tools/r8/internal/Cr0;->a(B)I

    move-result v11

    or-int/2addr v10, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 66
    :cond_f
    new-instance p0, Lcom/android/tools/r8/internal/yr0;

    invoke-direct {p0, v9}, Lcom/android/tools/r8/internal/yr0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_10
    invoke-static {v10}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v3

    const-string v5, "Invalid escape sequence: \'\\U"

    if-eqz v3, :cond_12

    .line 68
    invoke-static {v10}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    .line 69
    sget-object v9, Ljava/lang/Character$UnicodeBlock;->LOW_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    sget-object v9, Ljava/lang/Character$UnicodeBlock;->HIGH_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    .line 70
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    sget-object v9, Ljava/lang/Character$UnicodeBlock;->HIGH_PRIVATE_USE_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    .line 71
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 72
    filled-new-array {v10}, [I

    move-result-object v3

    .line 73
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v2, v8}, Ljava/lang/String;-><init>([III)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 74
    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    array-length v3, v3

    goto/16 :goto_4

    .line 76
    :cond_11
    new-instance p0, Lcom/android/tools/r8/internal/yr0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v6, v11}, Lcom/android/tools/r8/internal/i8;->f(II)Lcom/android/tools/r8/internal/m8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' refers to a surrogate code unit"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/yr0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_12
    new-instance p0, Lcom/android/tools/r8/internal/yr0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v6, v11}, Lcom/android/tools/r8/internal/i8;->f(II)Lcom/android/tools/r8/internal/m8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not a valid code point value"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/yr0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_13
    new-instance p0, Lcom/android/tools/r8/internal/yr0;

    invoke-direct {p0, v9}, Lcom/android/tools/r8/internal/yr0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    add-int/lit8 v3, v4, 0x1

    .line 81
    aput-byte v11, v1, v4

    goto/16 :goto_3

    :cond_15
    add-int/lit8 v3, v4, 0x1

    .line 82
    aput-byte v10, v1, v4

    goto/16 :goto_3

    :cond_16
    add-int/lit8 v3, v4, 0x1

    .line 83
    aput-byte v10, v1, v4

    goto/16 :goto_3

    .line 84
    :cond_17
    new-instance p0, Lcom/android/tools/r8/internal/yr0;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/yr0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    add-int/lit8 v5, v4, 0x1

    .line 85
    aput-byte v6, v1, v4

    move v4, v5

    :goto_7
    add-int/2addr v3, v8

    goto/16 :goto_0

    :cond_19
    if-ne p0, v4, :cond_1a

    .line 86
    new-instance p0, Lcom/android/tools/r8/internal/i8;

    invoke-direct {p0, v1}, Lcom/android/tools/r8/internal/i8;-><init>([B)V

    return-object p0

    .line 87
    :cond_1a
    invoke-static {v2, v4, p0}, Lcom/android/tools/r8/internal/m8;->a(III)I

    .line 88
    new-instance p0, Lcom/android/tools/r8/internal/i8;

    sget-object v0, Lcom/android/tools/r8/internal/m8;->d:Lcom/android/tools/r8/internal/g8;

    invoke-interface {v0, v1, v2, v4}, Lcom/android/tools/r8/internal/g8;->a([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/i8;-><init>([B)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
