.class public Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:[C

.field public static final EMPTY_ARRAY_OF_CHAR_ARRAYS:[[C

.field public static final EMPTY_CHAR_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [C

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->EMPTY_CHAR_ARRAY:[C

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->EMPTY:[C

    new-array v0, v0, [[C

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->EMPTY_ARRAY_OF_CHAR_ARRAYS:[[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final compare([C[C)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_1

    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    return p0

    :cond_1
    aget-char v2, p0, v0

    aget-char v3, p1, v0

    sub-int/2addr v2, v3

    if-eqz v2, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final concat([C[C)[C
    .locals 4

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 1
    :cond_1
    array-length v0, p0

    .line 2
    array-length v1, p1

    add-int v2, v0, v1

    .line 3
    new-array v2, v2, [C

    const/4 v3, 0x0

    .line 4
    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static final concat([C[C[C)[C
    .locals 6

    if-nez p0, :cond_0

    .line 6
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C)[C

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 7
    invoke-static {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C)[C

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p2, :cond_2

    .line 8
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C)[C

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    array-length v0, p0

    .line 10
    array-length v1, p1

    .line 11
    array-length v2, p2

    add-int v3, v0, v1

    add-int v4, v3, v2

    .line 12
    new-array v4, v4, [C

    const/4 v5, 0x0

    .line 13
    invoke-static {p0, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    invoke-static {p1, v5, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    invoke-static {p2, v5, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method public static final concat([C[C[C[C)[C
    .locals 8

    if-nez p0, :cond_0

    .line 16
    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C[C)[C

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 17
    invoke-static {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C[C)[C

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p2, :cond_2

    .line 18
    invoke-static {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C[C)[C

    move-result-object p0

    return-object p0

    :cond_2
    if-nez p3, :cond_3

    .line 19
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C[C)[C

    move-result-object p0

    return-object p0

    .line 20
    :cond_3
    array-length v0, p0

    .line 21
    array-length v1, p1

    .line 22
    array-length v2, p2

    .line 23
    array-length v3, p3

    add-int v4, v0, v1

    add-int v5, v4, v2

    add-int v6, v5, v3

    .line 24
    new-array v6, v6, [C

    const/4 v7, 0x0

    .line 25
    invoke-static {p0, v7, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-static {p1, v7, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    invoke-static {p2, v7, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    invoke-static {p3, v7, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v6
.end method

.method public static varargs concat([[C)[C
    .locals 7

    .line 29
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_2

    .line 30
    new-array v4, v3, [C

    .line 31
    array-length v5, p0

    move v0, v1

    move v2, v0

    :goto_1
    if-lt v0, v5, :cond_0

    return-object v4

    :cond_0
    aget-object v3, p0, v0

    if-nez v3, :cond_1

    goto :goto_2

    .line 32
    :cond_1
    array-length v6, v3

    invoke-static {v3, v1, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    array-length v3, v3

    add-int/2addr v2, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_2
    aget-object v4, p0, v2

    .line 35
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static endsWith([CC)Z
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, p0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-char p0, p0, v0

    if-ne p0, p1, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public static final equals([CIILjava/lang/String;)Z
    .locals 4

    .line 8
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    array-length v0, p0

    add-int v2, p2, p1

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    if-lt v0, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, p1, 0x1

    .line 9
    aget-char p1, p0, p1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq p1, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move p1, v2

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public static final equals([CII[C)Z
    .locals 5

    .line 10
    array-length v0, p3

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4

    array-length v0, p0

    add-int v2, p2, p1

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p3, :cond_1

    if-nez p1, :cond_1

    return v0

    :cond_1
    move v2, v1

    :goto_0
    if-lt v2, p2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v3, p1, 0x1

    .line 11
    aget-char p1, p0, p1

    aget-char v4, p3, v2

    if-eq p1, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move p1, v3

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public static final equals([CII[CZ)Z
    .locals 3

    if-nez p4, :cond_0

    .line 12
    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->equals([CII[C)Z

    move-result p0

    return p0

    .line 13
    :cond_0
    array-length p4, p3

    const/4 v0, 0x0

    if-ne p2, p4, :cond_4

    array-length p4, p0

    add-int v1, p1, p2

    if-ge p4, v1, :cond_1

    goto :goto_1

    :cond_1
    move p4, v0

    :goto_0
    if-lt p4, p2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, p1, 0x1

    .line 14
    aget-char p1, p0, p1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    aget-char v2, p3, p4

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq p1, v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 p4, p4, 0x1

    move p1, v1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public static final equals([CLjava/lang/String;)Z
    .locals 5

    .line 5
    array-length v0, p0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 7
    :cond_1
    aget-char v3, p0, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final equals([C[C)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0
.end method

.method public static final equals([[C[[C)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    .line 3
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_3

    return v0

    .line 4
    :cond_3
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method

.method public static final extract([CII)[C
    .locals 2

    if-nez p1, :cond_0

    array-length v0, p0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    new-array v0, p2, [C

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static extractChars(Ljava/lang/StringBuilder;)[C
    .locals 3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    :cond_0
    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-object v1
.end method

.method public static final hasCharAt(CI[C)Z
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    return v1

    :cond_0
    aget-char p1, p2, p1

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static final hash([C)I
    .locals 2

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->hash([CII)I

    move-result p0

    return p0
.end method

.method public static final hash([CII)I
    .locals 2

    add-int/2addr p2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1
    aget-char v1, p0, p1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static final indexOf(C[C)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    aget-char v1, p1, v0

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static indexOf(C[CII)I
    .locals 2

    const/4 v0, -0x1

    if-ltz p2, :cond_3

    .line 3
    array-length v1, p1

    if-gt p2, v1, :cond_3

    array-length v1, p1

    if-le p3, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-lt p2, p3, :cond_1

    return v0

    .line 4
    :cond_1
    aget-char v1, p1, p2

    if-ne p0, v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static final indexOf([C[C)I
    .locals 6

    .line 5
    array-length v0, p0

    array-length v1, p1

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v3, v1

    .line 6
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_1

    return v2

    .line 7
    :cond_1
    aget-char v4, p0, v3

    aget-char v5, p1, v1

    if-ne v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 8
    array-length v4, p0

    if-ne v3, v4, :cond_3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_2
    move v3, v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static indexOf([C[[C)I
    .locals 2

    const/4 v0, 0x0

    .line 9
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 10
    :cond_0
    aget-object v1, p1, v0

    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static lastIndexOf(C[C)I
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->lastIndexOf(C[CI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf(C[CI)I
    .locals 2

    .line 3
    array-length v0, p1

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ge v0, p2, :cond_1

    return v1

    .line 4
    :cond_1
    aget-char v1, p1, v0

    if-ne v1, p0, :cond_0

    return v0
.end method

.method public static final lastIndexOf([C[C)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->lastIndexOf([C[CI)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([C[CI)I
    .locals 4

    .line 5
    array-length v0, p1

    .line 6
    array-length v1, p0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-gez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ge v0, p2, :cond_2

    return v2

    .line 7
    :cond_2
    aget-char v2, p0, v1

    aget-char v3, p1, v0

    if-eq v2, v3, :cond_0

    .line 8
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    .line 9
    array-length v1, p0

    goto :goto_0
.end method

.method public static final lastSegment([C[C)[C
    .locals 1

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->lastIndexOf([C[C)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    array-length p1, p1

    add-int/2addr v0, p1

    array-length p1, p0

    invoke-static {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([CII)[C

    move-result-object p0

    return-object p0
.end method

.method public static notNull([C)[C
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->EMPTY_CHAR_ARRAY:[C

    :cond_0
    return-object p0
.end method

.method public static overWrite([CI[C)V
    .locals 3

    array-length v0, p0

    array-length v1, p2

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    add-int v1, p1, v0

    aget-char v2, p2, v0

    aput-char v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final replace([C[C[C)[C
    .locals 10

    array-length v0, p0

    array-length v1, p1

    array-length v2, p2

    const/4 v3, 0x5

    new-array v3, v3, [I

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->equals([C[C)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5

    move-object v7, v3

    move v4, v5

    move v6, v4

    :goto_0
    if-lt v4, v0, :cond_0

    move-object v3, v7

    goto :goto_3

    :cond_0
    move v3, v5

    :goto_1
    if-lt v3, v1, :cond_2

    array-length v3, v7

    if-ne v6, v3, :cond_1

    mul-int/lit8 v3, v6, 0x2

    new-array v3, v3, [I

    invoke-static {v7, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v3

    :cond_1
    add-int/lit8 v3, v6, 0x1

    aput v4, v7, v6

    move v6, v3

    goto :goto_2

    :cond_2
    add-int v8, v4, v3

    if-ne v8, v0, :cond_3

    goto :goto_2

    :cond_3
    aget-char v8, p0, v8

    add-int/lit8 v9, v3, 0x1

    aget-char v3, p1, v3

    if-eq v8, v3, :cond_4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v3, v9

    goto :goto_1

    :cond_5
    move v6, v5

    :goto_3
    if-nez v6, :cond_6

    return-object p0

    :cond_6
    sub-int p1, v2, v1

    mul-int/2addr p1, v6

    add-int/2addr p1, v0

    new-array p1, p1, [C

    move v4, v5

    move v7, v4

    move v8, v7

    :goto_4
    if-lt v4, v6, :cond_7

    sub-int/2addr v0, v7

    invoke-static {p0, v7, p1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_7
    aget v9, v3, v4

    sub-int/2addr v9, v7

    invoke-static {p0, v7, p1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v9

    add-int/2addr v8, v9

    invoke-static {p2, v5, p1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v1

    add-int/2addr v8, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method public static startsWith([CC)Z
    .locals 2

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-char p0, p0, v1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static final startsWith([CLjava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    aget-char v3, p0, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static subarray([CI)[C
    .locals 3

    .line 9
    array-length v0, p0

    if-gt v0, p1, :cond_0

    .line 10
    sget-object p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    .line 11
    :cond_0
    array-length v0, p0

    sub-int/2addr v0, p1

    new-array v1, v0, [C

    const/4 v2, 0x0

    .line 12
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static final subarray([CII)[C
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 5
    array-length p2, p0

    :cond_0
    const/4 v0, 0x0

    if-le p1, p2, :cond_1

    return-object v0

    :cond_1
    if-gez p1, :cond_2

    return-object v0

    .line 6
    :cond_2
    array-length v1, p0

    if-le p2, v1, :cond_3

    return-object v0

    :cond_3
    sub-int/2addr p2, p1

    .line 7
    new-array v0, p2, [C

    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static final subarray([[CII)[[C
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1
    array-length p2, p0

    :cond_0
    const/4 v0, 0x0

    if-le p1, p2, :cond_1

    return-object v0

    :cond_1
    if-gez p1, :cond_2

    return-object v0

    .line 2
    :cond_2
    array-length v1, p0

    if-le p2, v1, :cond_3

    return-object v0

    :cond_3
    sub-int/2addr p2, p1

    .line 3
    new-array v0, p2, [[C

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static final trim([C)[C
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v0, :cond_2

    aget-char v3, p0, v1

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v1, v0, :cond_3

    sget-object p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    :cond_3
    move v3, v0

    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-le v4, v1, :cond_5

    aget-char v5, p0, v4

    if-eq v5, v2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    if-ne v3, v0, :cond_6

    return-object p0

    :cond_6
    invoke-static {p0, v1, v3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([CII)[C

    move-result-object p0

    return-object p0
.end method
