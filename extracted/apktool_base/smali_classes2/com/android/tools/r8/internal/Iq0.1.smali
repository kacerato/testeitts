.class public abstract Lcom/android/tools/r8/internal/Iq0;
.super Lcom/android/tools/r8/internal/Hq0;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/CharSequence;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static synthetic a(Ljava/lang/CharSequence;Ljava/lang/String;II)I
    .locals 1

    and-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move p2, v0

    .line 42
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 43
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 45
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 46
    new-instance v1, Lcom/android/tools/r8/internal/mI;

    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_3

    move v0, v2

    :cond_3
    invoke-direct {v1, p2, v0}, Lcom/android/tools/r8/internal/mI;-><init>(II)V

    .line 47
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 48
    iget v0, v1, Lcom/android/tools/r8/internal/eI;->c:I

    .line 49
    iget v1, v1, Lcom/android/tools/r8/internal/eI;->d:I

    if-lez v1, :cond_4

    if-le p2, v0, :cond_5

    :cond_4
    if-gez v1, :cond_c

    if-gt v0, p2, :cond_c

    .line 50
    :cond_5
    :goto_1
    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v4, 0x0

    if-nez p3, :cond_6

    .line 51
    invoke-virtual {p1, v4, v5, p2, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    goto :goto_2

    :cond_6
    move-object v2, p1

    move v3, p3

    move v6, p2

    .line 52
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_7

    return p2

    :cond_7
    if-eq p2, v0, :cond_c

    add-int/2addr p2, v1

    goto :goto_1

    .line 53
    :cond_8
    iget v0, v1, Lcom/android/tools/r8/internal/eI;->c:I

    .line 54
    iget v1, v1, Lcom/android/tools/r8/internal/eI;->d:I

    if-lez v1, :cond_9

    if-le p2, v0, :cond_a

    :cond_9
    if-gez v1, :cond_c

    if-gt v0, p2, :cond_c

    .line 55
    :cond_a
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, p0, p2, v2, p3}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;Ljava/lang/CharSequence;IIZ)Z

    move-result v2

    if-eqz v2, :cond_b

    return p2

    :cond_b
    if-eq p2, v0, :cond_c

    add-int/2addr p2, v1

    goto :goto_3

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/lang/String;C)I
    .locals 2

    .line 56
    invoke-static {p0}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/CharSequence;)I

    move-result v0

    .line 57
    const-string v1, "<this>"

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;CI)I
    .locals 0

    .line 3
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public static final a(ILjava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/Mj;
    .locals 3

    if-ltz p0, :cond_0

    .line 75
    invoke-static {p2}, Lcom/android/tools/r8/internal/a4;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 76
    new-instance v0, Lcom/android/tools/r8/internal/Mj;

    new-instance v1, Lcom/android/tools/r8/internal/XI0;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/android/tools/r8/internal/XI0;-><init>(Ljava/util/List;Z)V

    invoke-direct {v0, p1, p0, v1}, Lcom/android/tools/r8/internal/Mj;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/By;)V

    return-object v0

    .line 77
    :cond_0
    const-string p1, "Limit must be non-negative, but was "

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final a(Ljava/lang/String;[CI)Lcom/android/tools/r8/internal/Mj;
    .locals 3

    if-ltz p2, :cond_0

    .line 59
    new-instance v0, Lcom/android/tools/r8/internal/Mj;

    new-instance v1, Lcom/android/tools/r8/internal/YI0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/tools/r8/internal/YI0;-><init>([CZ)V

    invoke-direct {v0, p0, p2, v1}, Lcom/android/tools/r8/internal/Mj;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/By;)V

    return-object v0

    .line 60
    :cond_0
    const-string p0, "Limit must be non-negative, but was "

    invoke-static {p2, p0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final a(Ljava/util/List;ZLjava/lang/CharSequence;I)Lcom/android/tools/r8/internal/p50;
    .locals 11

    const-string v0, "$this$DelimitedRangesSequence"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    .line 14
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x4

    .line 16
    invoke-static {p2, p0, p3, p1}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result p1

    if-gez p1, :cond_0

    goto/16 :goto_5

    .line 17
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 18
    new-instance p2, Lcom/android/tools/r8/internal/p50;

    invoke-direct {p2, p1, p0}, Lcom/android/tools/r8/internal/p50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List has more than one element."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "List is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_3
    new-instance v2, Lcom/android/tools/r8/internal/mI;

    if-gez p3, :cond_4

    move p3, v0

    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {v2, p3, v0}, Lcom/android/tools/r8/internal/mI;-><init>(II)V

    .line 22
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 23
    iget v0, v2, Lcom/android/tools/r8/internal/eI;->c:I

    .line 24
    iget v2, v2, Lcom/android/tools/r8/internal/eI;->d:I

    if-lez v2, :cond_5

    if-le p3, v0, :cond_6

    :cond_5
    if-gez v2, :cond_11

    if-gt v0, p3, :cond_11

    .line 25
    :cond_6
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v3, v10

    check-cast v3, Ljava/lang/String;

    .line 26
    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v5, 0x0

    if-nez p1, :cond_8

    .line 27
    invoke-virtual {v3, v5, v6, p3, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    goto :goto_1

    :cond_8
    move v4, p1

    move v7, p3

    .line 28
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_7

    goto :goto_2

    :cond_9
    move-object v10, v1

    .line 29
    :goto_2
    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 30
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 31
    new-instance p2, Lcom/android/tools/r8/internal/p50;

    invoke-direct {p2, p0, v10}, Lcom/android/tools/r8/internal/p50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    if-eq p3, v0, :cond_11

    add-int/2addr p3, v2

    goto :goto_0

    .line 32
    :cond_b
    iget v0, v2, Lcom/android/tools/r8/internal/eI;->c:I

    .line 33
    iget v2, v2, Lcom/android/tools/r8/internal/eI;->d:I

    if-lez v2, :cond_c

    if-le p3, v0, :cond_d

    :cond_c
    if-gez v2, :cond_11

    if-gt v0, p3, :cond_11

    .line 34
    :cond_d
    :goto_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 35
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, p2, p3, v6, p1}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;Ljava/lang/CharSequence;IIZ)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_4

    :cond_f
    move-object v4, v1

    :goto_4
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 37
    new-instance p2, Lcom/android/tools/r8/internal/p50;

    invoke-direct {p2, p0, v4}, Lcom/android/tools/r8/internal/p50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_10
    if-eq p3, v0, :cond_11

    add-int/2addr p3, v2

    goto :goto_3

    :cond_11
    :goto_5
    move-object p2, v1

    :goto_6
    if-eqz p2, :cond_12

    .line 38
    iget-object p0, p2, Lcom/android/tools/r8/internal/p50;->b:Ljava/lang/Object;

    .line 39
    iget-object p1, p2, Lcom/android/tools/r8/internal/p50;->c:Ljava/lang/Object;

    .line 40
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 41
    new-instance p2, Lcom/android/tools/r8/internal/p50;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/p50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_12
    return-object v1
.end method

.method public static final a([CZLjava/lang/CharSequence;I)Lcom/android/tools/r8/internal/p50;
    .locals 7

    const-string v0, "$this$DelimitedRangesSequence"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const-string v0, "<this>"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 63
    array-length v2, p0

    if-ne v2, v1, :cond_2

    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 64
    array-length p1, p0

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 65
    aget-char p0, p0, v0

    .line 66
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, p0, p3}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_2

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array has more than one element."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Array is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-gez p3, :cond_3

    move p3, v0

    .line 69
    :cond_3
    invoke-static {p2}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/CharSequence;)I

    move-result v2

    if-gt p3, v2, :cond_6

    .line 70
    :goto_0
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 71
    array-length v4, p0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-char v6, p0, v5

    .line 72
    invoke-static {v6, v3, p1}, Lcom/android/tools/r8/internal/dc;->a(CCZ)Z

    move-result v6

    if-eqz v6, :cond_4

    move p0, p3

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eq p3, v2, :cond_6

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, -0x1

    :goto_2
    if-gez p0, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/android/tools/r8/internal/p50;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/p50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_6

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 91
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 92
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move v5, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v5, v1

    :goto_3
    if-nez v4, :cond_4

    if-nez v5, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    :goto_4
    add-int/2addr v0, v1

    .line 93
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1

    .line 5
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string p1, "replace(...)"

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;C)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p2

    :cond_0
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final a(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8

    if-ltz p0, :cond_8

    const/4 v0, 0x0

    .line 79
    invoke-static {p1, p2, v0, v0}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    goto :goto_2

    :cond_0
    if-lez p0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    .line 80
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    if-eqz v4, :cond_3

    if-le p0, v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, p0

    :cond_3
    :goto_1
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v0

    .line 81
    :cond_4
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    if-eqz v4, :cond_5

    .line 83
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v7, p0, -0x1

    if-eq v1, v7, :cond_6

    .line 84
    :cond_5
    invoke-static {p1, p2, v6, v0}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 85
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v6, p0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v5

    .line 86
    :cond_7
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "singletonList(...)"

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 88
    :cond_8
    const-string p1, "Limit must be non-negative, but was "

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/CharSequence;IIZ)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p2, :cond_3

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-ltz v1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-le p2, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p2, v1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p4}, Lcom/android/tools/r8/internal/dc;->a(CCZ)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static b(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;C)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static b(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3

    and-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 20
    :goto_0
    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 21
    aget-object v0, p2, v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/internal/Iq0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 24
    :cond_2
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/Iq0;->a(ILjava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/Mj;

    move-result-object p0

    .line 25
    new-instance p2, Lcom/android/tools/r8/internal/tl0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/tl0;-><init>(Lcom/android/tools/r8/internal/Mj;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    new-instance p2, Lcom/android/tools/r8/internal/Lj;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/Lj;-><init>(Lcom/android/tools/r8/internal/Mj;)V

    .line 28
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Lj;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Lj;->next()Ljava/lang/Object;

    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/tools/r8/internal/mI;

    .line 30
    const-string v1, "range"

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget v1, p0, Lcom/android/tools/r8/internal/eI;->b:I

    .line 32
    iget p0, p0, Lcom/android/tools/r8/internal/eI;->c:I

    add-int/2addr p0, v2

    .line 33
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public static b(Ljava/lang/String;[CI)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    aget-char p1, p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/android/tools/r8/internal/Iq0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;[CI)Lcom/android/tools/r8/internal/Mj;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/tl0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/tl0;-><init>(Lcom/android/tools/r8/internal/Mj;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    new-instance p2, Lcom/android/tools/r8/internal/Lj;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Lj;-><init>(Lcom/android/tools/r8/internal/Mj;)V

    .line 8
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Lj;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Lj;->next()Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/tools/r8/internal/mI;

    .line 10
    const-string v2, "range"

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget v2, p1, Lcom/android/tools/r8/internal/eI;->b:I

    .line 12
    iget p1, p1, Lcom/android/tools/r8/internal/eI;->c:I

    add-int/2addr p1, v1

    .line 13
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 15
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CI)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
