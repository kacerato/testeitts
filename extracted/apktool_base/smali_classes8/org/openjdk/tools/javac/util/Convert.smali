.class public Lorg/openjdk/tools/javac/util/Convert;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chars2utf([CI[BII)I
    .locals 4

    add-int/2addr p4, p1

    :goto_0
    if-ge p1, p4, :cond_2

    .line 1
    aget-char v0, p0, p1

    const/4 v1, 0x1

    if-gt v1, v0, :cond_0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, p3, 0x1

    int-to-byte v0, v0

    .line 2
    aput-byte v0, p2, p3

    move p3, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0x7ff

    if-gt v0, v1, :cond_1

    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    .line 3
    aput-byte v2, p2, p3

    add-int/lit8 p3, p3, 0x2

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 4
    aput-byte v0, p2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    .line 5
    aput-byte v2, p2, p3

    add-int/lit8 v2, p3, 0x2

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 6
    aput-byte v3, p2, v1

    add-int/lit8 p3, p3, 0x3

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 7
    aput-byte v0, p2, v2

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public static chars2utf([C)[B
    .locals 2

    .line 12
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/openjdk/tools/javac/util/Convert;->chars2utf([CII)[B

    move-result-object p0

    return-object p0
.end method

.method public static chars2utf([CII)[B
    .locals 2

    mul-int/lit8 v0, p2, 0x3

    .line 8
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 9
    invoke-static {p0, p1, v0, v1, p2}, Lorg/openjdk/tools/javac/util/Convert;->chars2utf([CI[BII)I

    move-result p0

    .line 10
    new-array p1, p0, [B

    .line 11
    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static classCandidates(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x2e

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x24

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static enclosingCandidates(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/util/Name;->lastIndexOf(B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/util/Name;->subName(II)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static escapeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v4, :cond_0

    const-string v6, "\\u"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v6, v5, 0xc

    const/16 v7, 0x10

    rem-int/2addr v6, v7

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v6, v5, 0x8

    rem-int/2addr v6, v7

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v6, v5, 0x4

    rem-int/2addr v6, v7

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v5, v5, 0x10

    invoke-static {v5, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private static isPrintableAscii(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static packagePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 3
    const-string p0, ""

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static packagePart(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;
    .locals 2

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Name;->lastIndexOf(B)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/util/Name;->subName(II)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    return-object p0
.end method

.method public static quote(C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_5

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0x22

    if-eq p0, v0, :cond_3

    const/16 v0, 0x27

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 5
    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Convert;->isPrintableAscii(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "\\u%04x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 8
    :pswitch_0
    const-string p0, "\\n"

    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "\\t"

    return-object p0

    .line 10
    :pswitch_2
    const-string p0, "\\b"

    return-object p0

    .line 11
    :cond_1
    const-string p0, "\\\\"

    return-object p0

    .line 12
    :cond_2
    const-string p0, "\\\'"

    return-object p0

    .line 13
    :cond_3
    const-string p0, "\\\""

    return-object p0

    .line 14
    :cond_4
    const-string p0, "\\r"

    return-object p0

    .line 15
    :cond_5
    const-string p0, "\\f"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Convert;->quote(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2e

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;
    .locals 2

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Name;->lastIndexOf(B)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/Name;->subName(II)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    return-object p0
.end method

.method public static string2int(Ljava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    div-int/lit8 v0, p1, 0x2

    const v1, 0x7fffffff

    div-int v0, v1, v0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v5, p0, v3

    invoke-static {v5, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v4, :cond_1

    if-gt v4, v0, :cond_1

    mul-int/2addr v4, p1

    sub-int v6, v1, v5

    if-gt v4, v6, :cond_1

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_2
    return v4
.end method

.method public static string2long(Ljava/lang/String;I)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    div-int/lit8 v0, p1, 0x2

    int-to-long v0, v0

    const-wide v2, 0x7fffffffffffffffL

    div-long v0, v2, v0

    array-length v4, p0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-wide v8, v5

    :goto_0
    if-ge v7, v4, :cond_2

    aget-char v10, p0, v7

    invoke-static {v10, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    cmp-long v11, v8, v5

    if-ltz v11, :cond_1

    cmp-long v11, v8, v0

    if-gtz v11, :cond_1

    int-to-long v11, p1

    mul-long/2addr v8, v11

    int-to-long v10, v10

    sub-long v12, v2, v10

    cmp-long v12, v8, v12

    if-gtz v12, :cond_1

    add-long/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_2
    return-wide v8
.end method

.method public static string2utf(Ljava/lang/String;)[B
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Convert;->chars2utf([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static utf2chars([BI[CII)I
    .locals 4

    add-int/2addr p4, p1

    :goto_0
    if-ge p1, p4, :cond_2

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte v1, p0, p1

    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0xe0

    if-lt v2, v3, :cond_0

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    add-int/lit8 v2, p1, 0x2

    .line 2
    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    .line 3
    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x3f

    or-int v2, v0, v1

    goto :goto_1

    :cond_0
    const/16 v3, 0xc0

    if-lt v2, v3, :cond_1

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 p1, p1, 0x2

    .line 4
    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x3f

    or-int v2, v1, v0

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    add-int/lit8 v0, p3, 0x1

    int-to-char v1, v2

    .line 5
    aput-char v1, p2, p3

    move p3, v0

    goto :goto_0

    :cond_2
    return p3
.end method

.method public static utf2chars([B)[C
    .locals 2

    .line 10
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/openjdk/tools/javac/util/Convert;->utf2chars([BII)[C

    move-result-object p0

    return-object p0
.end method

.method public static utf2chars([BII)[C
    .locals 2

    .line 6
    new-array v0, p2, [C

    const/4 v1, 0x0

    .line 7
    invoke-static {p0, p1, v0, v1, p2}, Lorg/openjdk/tools/javac/util/Convert;->utf2chars([BI[CII)I

    move-result p0

    .line 8
    new-array p1, p0, [C

    .line 9
    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static utf2string([B)Ljava/lang/String;
    .locals 2

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/openjdk/tools/javac/util/Convert;->utf2string([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utf2string([BII)Ljava/lang/String;
    .locals 2

    .line 1
    new-array v0, p2, [C

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Lorg/openjdk/tools/javac/util/Convert;->utf2chars([BI[CII)I

    move-result p0

    .line 3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method
