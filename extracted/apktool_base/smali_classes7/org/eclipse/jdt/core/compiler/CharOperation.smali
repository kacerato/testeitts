.class public final Lorg/eclipse/jdt/core/compiler/CharOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_PREFIX:[C

.field public static final COMMA_SEPARATOR:[C

.field public static final NO_CHAR:[C

.field public static final NO_CHAR_CHAR:[[C

.field public static final NO_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [C

    sput-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    new-array v1, v0, [[C

    sput-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/16 v3, 0x2a

    aput-char v3, v2, v0

    sput-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->ALL_PREFIX:[C

    new-array v1, v1, [C

    const/16 v2, 0x2c

    aput-char v2, v1, v0

    sput-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->COMMA_SEPARATOR:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final append([CC)[C
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 1
    new-array p0, v1, [C

    aput-char p1, p0, v0

    return-object p0

    .line 2
    :cond_0
    array-length v2, p0

    add-int/2addr v1, v2

    .line 3
    new-array v1, v1, [C

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    aput-char p1, v1, v2

    return-object v1
.end method

.method public static final append([CI[CII)[C
    .locals 2

    .line 10
    array-length v0, p0

    sub-int/2addr p4, p3

    add-int v1, p4, p1

    if-le v1, v0, :cond_0

    mul-int/lit8 v1, v1, 0x2

    .line 11
    new-array v0, v1, [C

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 12
    :cond_0
    invoke-static {p2, p3, p0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static final append([C[C)[C
    .locals 4

    if-eqz p1, :cond_2

    .line 5
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    array-length v0, p0

    .line 7
    array-length v1, p1

    add-int v2, v0, v1

    const/4 v3, 0x0

    if-le v2, v0, :cond_1

    .line 8
    new-array v2, v2, [C

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    .line 9
    :cond_1
    invoke-static {p1, v3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final arrayConcat([[C[C)[[C
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 6
    filled-new-array {p1}, [[C

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    .line 8
    new-array v1, v1, [[C

    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    aput-object p1, v1, v0

    return-object v1
.end method

.method public static final arrayConcat([[C[[C)[[C
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
    new-array v2, v2, [[C

    const/4 v3, 0x0

    .line 4
    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static final camelCaseMatch([CII[CII)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([CII[CIIZ)Z

    move-result p0

    return p0
.end method

.method public static final camelCaseMatch([CII[CIIZ)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    if-gez p2, :cond_2

    .line 4
    array-length p2, p0

    :cond_2
    if-gez p5, :cond_3

    .line 5
    array-length p5, p3

    :cond_3
    if-gt p2, p1, :cond_5

    if-gt p5, p4, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    if-gt p5, p4, :cond_6

    return v0

    .line 6
    :cond_6
    aget-char v2, p3, p4

    aget-char v3, p0, p1

    if-eq v2, v3, :cond_7

    return v0

    :cond_7
    :goto_0
    add-int/2addr p1, v1

    add-int/2addr p4, v1

    const/16 v2, 0x80

    if-ne p1, p2, :cond_e

    if-eqz p6, :cond_d

    if-ne p4, p5, :cond_8

    goto :goto_3

    :cond_8
    :goto_1
    if-ne p4, p5, :cond_9

    return v1

    .line 7
    :cond_9
    aget-char p0, p3, p4

    if-ge p0, v2, :cond_a

    .line 8
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget p0, p1, p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_b

    return v0

    .line 9
    :cond_a
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_2

    :cond_b
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_c
    :goto_2
    return v0

    :cond_d
    :goto_3
    return v1

    :cond_e
    if-ne p4, p5, :cond_f

    return v0

    .line 10
    :cond_f
    aget-char v3, p0, p1

    aget-char v4, p3, p4

    if-ne v3, v4, :cond_10

    goto :goto_0

    :cond_10
    if-ge v3, v2, :cond_11

    .line 11
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v4, v4, v3

    and-int/lit8 v4, v4, 0x24

    if-nez v4, :cond_12

    return v0

    .line 12
    :cond_11
    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_12

    return v0

    :cond_12
    :goto_4
    if-ne p4, p5, :cond_13

    return v0

    .line 13
    :cond_13
    aget-char v4, p3, p4

    if-ge v4, v2, :cond_17

    .line 14
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v5, v5, v4

    and-int/lit16 v6, v5, 0x90

    if-eqz v6, :cond_15

    :cond_14
    :goto_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_15
    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_16

    if-ne v3, v4, :cond_14

    goto :goto_0

    :cond_16
    if-eq v3, v4, :cond_7

    return v0

    .line 15
    :cond_17
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-nez v5, :cond_18

    goto :goto_5

    .line 16
    :cond_18
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_19

    if-ne v3, v4, :cond_14

    goto/16 :goto_0

    :cond_19
    if-eq v3, v4, :cond_7

    return v0
.end method

.method public static final camelCaseMatch([C[C)Z
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_1
    array-length v2, p0

    array-length v5, p1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([CII[CIIZ)Z

    move-result p0

    return p0
.end method

.method public static final camelCaseMatch([C[CZ)Z
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    array-length v2, p0

    const/4 v4, 0x0

    array-length v5, p1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([CII[CIIZ)Z

    move-result p0

    return p0
.end method

.method public static charArrayToStringArray([[C)[Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p0

    :cond_1
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_2

    return-object v1

    :cond_2
    new-instance v3, Ljava/lang/String;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static charToString([C)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static final checkSubstringMatch([C[C)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    array-length v3, p0

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    move v2, v0

    :goto_1
    array-length v4, p0

    if-lt v2, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int v4, v1, v2

    aget-char v5, p1, v4

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    aget-char v6, p0, v2

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-eq v5, v6, :cond_4

    aget-char v2, p1, v4

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return v0

    :cond_4
    array-length v4, p0

    sub-int/2addr v4, v3

    if-ne v2, v4, :cond_5

    return v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static final compareTo([C[C)I
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 4
    :cond_0
    aget-char v4, p0, v3

    aget-char v5, p1, v3

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static final compareTo([C[CII)I
    .locals 4

    .line 5
    array-length v0, p0

    .line 6
    array-length v1, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    if-lt p2, p3, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 9
    :cond_0
    aget-char v2, p0, p2

    aget-char v3, p1, p2

    if-eq v2, v3, :cond_1

    sub-int/2addr v2, v3

    return v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static final compareWith([C[C)I
    .locals 6

    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-nez v0, :cond_1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    aget-char v0, p0, v3

    add-int/lit8 v5, v3, 0x1

    aget-char v3, p1, v3

    if-eq v0, v3, :cond_2

    sub-int/2addr v0, v3

    return v0

    :cond_2
    move v0, v4

    move v3, v5

    goto :goto_0
.end method

.method public static final concat(C[CC)[C
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p1, :cond_0

    .line 34
    new-array p1, v2, [C

    aput-char p0, p1, v1

    aput-char p2, p1, v0

    return-object p1

    .line 35
    :cond_0
    array-length v3, p1

    add-int/2addr v2, v3

    .line 36
    new-array v2, v2, [C

    .line 37
    aput-char p0, v2, v1

    .line 38
    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v0

    .line 39
    aput-char p2, v2, v3

    return-object v2
.end method

.method public static final concat([CC[CC[C)[C
    .locals 6

    if-nez p0, :cond_0

    .line 22
    invoke-static {p2, p4, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 23
    invoke-static {p0, p4, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p4, :cond_2

    .line 24
    invoke-static {p0, p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p0

    return-object p0

    .line 25
    :cond_2
    array-length v0, p0

    .line 26
    array-length v1, p2

    .line 27
    array-length v2, p4

    add-int v3, v0, v1

    add-int v4, v3, v2

    add-int/lit8 v4, v4, 0x2

    .line 28
    new-array v4, v4, [C

    const/4 v5, 0x0

    .line 29
    invoke-static {p0, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    aput-char p1, v4, v0

    add-int/lit8 v0, v0, 0x1

    .line 31
    invoke-static {p2, v5, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, v3, 0x1

    .line 32
    aput-char p3, v4, p0

    add-int/lit8 v3, v3, 0x2

    .line 33
    invoke-static {p4, v5, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
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

.method public static final concat([C[CC)[C
    .locals 4

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 16
    :cond_1
    array-length v0, p0

    if-nez v0, :cond_2

    return-object p1

    .line 17
    :cond_2
    array-length v1, p1

    if-nez v1, :cond_3

    return-object p0

    :cond_3
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    .line 18
    new-array v2, v2, [C

    const/4 v3, 0x0

    .line 19
    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    aput-char p2, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 21
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static final concat([C[C[C)[C
    .locals 6

    if-nez p0, :cond_0

    .line 6
    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 7
    invoke-static {p0, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p2, :cond_2

    .line 8
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

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

.method public static final concatAll([C[CC)[C
    .locals 4

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    array-length v0, p0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    array-length v1, p1

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-char p2, v2, v0

    if-lez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v2
.end method

.method public static final concatNonEmpty([CC[CC[C)[C
    .locals 1

    if-eqz p0, :cond_5

    .line 4
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_4

    .line 5
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_3

    .line 6
    array-length v0, p4

    if-nez v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([CC[CC[C)[C

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    :goto_0
    invoke-static {p0, p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatNonEmpty([C[CC)[C

    move-result-object p0

    return-object p0

    .line 9
    :cond_4
    :goto_1
    invoke-static {p0, p4, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatNonEmpty([C[CC)[C

    move-result-object p0

    return-object p0

    .line 10
    :cond_5
    :goto_2
    invoke-static {p2, p4, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatNonEmpty([C[CC)[C

    move-result-object p0

    return-object p0
.end method

.method public static final concatNonEmpty([C[CC)[C
    .locals 1

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static final concatWith([C[[CC)[C
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    array-length v1, p0

    :goto_0
    if-nez v1, :cond_1

    .line 2
    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    move v2, v0

    goto :goto_1

    .line 3
    :cond_2
    array-length v2, p1

    :goto_1
    if-nez v2, :cond_3

    return-object p0

    :cond_3
    move v4, v1

    move v3, v2

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_7

    .line 4
    new-array v5, v4, [C

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-gez v2, :cond_5

    .line 5
    invoke-static {p0, v0, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    .line 6
    :cond_5
    aget-object v3, p1, v2

    array-length v6, v3

    if-lez v6, :cond_6

    sub-int/2addr v4, v6

    .line 7
    invoke-static {v3, v0, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, -0x1

    .line 8
    aput-char p2, v5, v4

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 9
    :cond_7
    aget-object v5, p1, v3

    array-length v6, v5

    if-lez v6, :cond_4

    .line 10
    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    goto :goto_2
.end method

.method public static final concatWith([[CC)[C
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 21
    :cond_0
    array-length v1, p0

    :goto_0
    if-nez v1, :cond_1

    .line 22
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object p0

    :cond_1
    add-int/lit8 v2, v1, -0x1

    move v3, v1

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_5

    if-gtz v2, :cond_2

    .line 23
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object p0

    .line 24
    :cond_2
    new-array v4, v2, [C

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_4

    return-object v4

    .line 25
    :cond_4
    aget-object v3, p0, v1

    array-length v5, v3

    if-lez v5, :cond_3

    sub-int/2addr v2, v5

    .line 26
    invoke-static {v3, v0, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 27
    aput-char p1, v4, v2

    goto :goto_2

    .line 28
    :cond_5
    aget-object v4, p0, v3

    array-length v5, v4

    if-nez v5, :cond_6

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 29
    :cond_6
    array-length v4, v4

    add-int/2addr v2, v4

    goto :goto_1
.end method

.method public static final concatWith([[C[CC)[C
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 11
    :cond_0
    array-length v1, p1

    :goto_0
    if-nez v1, :cond_1

    .line 12
    invoke-static {p0, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    move v2, v0

    goto :goto_1

    .line 13
    :cond_2
    array-length v2, p0

    :goto_1
    if-nez v2, :cond_3

    return-object p1

    :cond_3
    move v4, v1

    move v3, v2

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_7

    .line 14
    new-array v5, v4, [C

    move v3, v0

    move v4, v3

    :goto_3
    if-lt v3, v2, :cond_5

    .line 15
    invoke-static {p1, v0, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    .line 16
    :cond_5
    aget-object v6, p0, v3

    array-length v7, v6

    if-lez v7, :cond_6

    .line 17
    invoke-static {v6, v0, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v7

    add-int/lit8 v6, v4, 0x1

    .line 18
    aput-char p2, v5, v4

    move v4, v6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 19
    :cond_7
    aget-object v5, p0, v3

    array-length v6, v5

    if-lez v6, :cond_4

    .line 20
    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    goto :goto_2
.end method

.method public static final concatWithAll([[CC)[C
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    if-nez v1, :cond_1

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object p0

    :cond_1
    add-int/lit8 v2, v1, -0x1

    move v3, v1

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_5

    new-array v4, v2, [C

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_3

    return-object v4

    :cond_3
    aget-object v3, p0, v1

    array-length v5, v3

    if-lez v5, :cond_4

    sub-int/2addr v2, v5

    invoke-static {v3, v0, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    aput-char p1, v4, v2

    goto :goto_2

    :cond_5
    aget-object v4, p0, v3

    array-length v4, v4

    add-int/2addr v2, v4

    goto :goto_1
.end method

.method public static final contains(C[C)Z
    .locals 2

    .line 5
    array-length v0, p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_1
    aget-char v1, p1, v0

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method public static final contains(C[[C)Z
    .locals 4

    .line 1
    array-length v0, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    aget-object v1, p1, v0

    .line 3
    array-length v2, v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    aget-char v3, v1, v2

    if-ne v3, p0, :cond_1

    const/4 p0, 0x1

    return p0
.end method

.method public static final contains([C[C)Z
    .locals 4

    .line 7
    array-length v0, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_0
    array-length v1, p0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    aget-char v2, p1, v0

    aget-char v3, p0, v1

    if-ne v2, v3, :cond_1

    const/4 p0, 0x1

    return p0
.end method

.method public static containsEqual([[C[C)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final deepCopy([[C)[[C
    .locals 7

    array-length v0, p0

    new-array v1, v0, [[C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return-object v1

    :cond_0
    aget-object v4, p0, v3

    array-length v5, v4

    new-array v6, v5, [C

    invoke-static {v4, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static final endsWith([C[C)Z
    .locals 5

    array-length v0, p1

    array-length v1, p0

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    aget-char v3, p1, v0

    add-int v4, v0, v1

    aget-char v4, p0, v4

    if-eq v3, v4, :cond_0

    return v2
.end method

.method public static final equals([C[C)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    .line 9
    :cond_2
    array-length v2, p0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_4

    return v0

    .line 10
    :cond_4
    aget-char v3, p0, v2

    aget-char v4, p1, v2

    if-eq v3, v4, :cond_3

    :cond_5
    :goto_0
    return v1
.end method

.method public static final equals([C[CII)Z
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-static {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CIIZ)Z

    move-result p0

    return p0
.end method

.method public static final equals([C[CIIZ)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    array-length v2, p0

    sub-int/2addr p3, p2

    if-eq v2, p3, :cond_2

    return v1

    :cond_2
    if-eqz p4, :cond_5

    .line 13
    array-length p3, p0

    :cond_3
    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    aget-char p4, p0, p3

    add-int v2, p3, p2

    aget-char v2, p1, v2

    if-eq p4, v2, :cond_3

    return v1

    .line 15
    :cond_5
    array-length p3, p0

    :cond_6
    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_7

    :goto_0
    return v0

    .line 16
    :cond_7
    aget-char p4, p0, p3

    invoke-static {p4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result p4

    add-int v2, p3, p2

    aget-char v2, p1, v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v2

    if-eq p4, v2, :cond_6

    :cond_8
    :goto_1
    return v1
.end method

.method public static final equals([C[CZ)Z
    .locals 4

    if-eqz p2, :cond_0

    .line 17
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    return p0

    :cond_0
    const/4 p2, 0x1

    if-ne p0, p1, :cond_1

    return p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_3

    return v0

    .line 19
    :cond_3
    array-length v1, p0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_5

    return p2

    .line 20
    :cond_5
    aget-char v2, p0, v1

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v2

    .line 21
    aget-char v3, p1, v1

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_6
    :goto_0
    return v0
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

    goto :goto_0

    .line 1
    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    array-length v2, p0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_4

    return v0

    .line 3
    :cond_4
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    :goto_0
    return v1
.end method

.method public static final equals([[C[[CZ)Z
    .locals 4

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result p0

    return p0

    :cond_0
    const/4 p2, 0x1

    if-ne p0, p1, :cond_1

    return p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_3

    return v0

    .line 6
    :cond_3
    array-length v1, p0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_5

    return p2

    .line 7
    :cond_5
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_6
    :goto_0
    return v0
.end method

.method public static final fragmentEquals([C[CIZ)Z
    .locals 4

    array-length v0, p0

    array-length v1, p1

    add-int v2, v0, p2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x1

    if-eqz p3, :cond_3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    return v1

    :cond_2
    aget-char p3, p0, v0

    add-int v2, v0, p2

    aget-char v2, p1, v2

    if-eq p3, v2, :cond_1

    return v3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    return v1

    :cond_4
    aget-char p3, p0, v0

    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result p3

    add-int v2, v0, p2

    aget-char v2, p1, v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v2

    if-eq p3, v2, :cond_3

    return v3
.end method

.method public static final hashCode([C)I
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result p0

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static final indexOf(C[C)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result p0

    return p0
.end method

.method public static final indexOf(C[CI)I
    .locals 1

    .line 11
    :goto_0
    array-length v0, p1

    if-lt p2, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 12
    :cond_0
    aget-char v0, p1, p2

    if-ne p0, v0, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static final indexOf(C[CII)I
    .locals 1

    :goto_0
    if-lt p2, p3, :cond_0

    const/4 p0, -0x1

    return p0

    .line 13
    :cond_0
    aget-char v0, p1, p2

    if-ne p0, v0, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static final indexOf([C[CZ)I
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result p0

    return p0
.end method

.method public static final indexOf([C[CZI)I
    .locals 1

    .line 3
    array-length v0, p1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZII)I

    move-result p0

    return p0
.end method

.method public static final indexOf([C[CZII)I
    .locals 6

    .line 4
    array-length v0, p0

    const/4 v1, -0x1

    if-gt v0, p4, :cond_11

    if-gez p3, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    if-ne v0, p4, :cond_7

    if-eqz p2, :cond_4

    :goto_0
    if-lt p3, p4, :cond_2

    return v2

    .line 5
    :cond_2
    aget-char p2, p1, p3

    aget-char v0, p0, p3

    if-eq p2, v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-lt p3, p4, :cond_5

    return v2

    .line 6
    :cond_5
    aget-char p2, p1, p3

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result p2

    aget-char v0, p0, p3

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v0

    if-eq p2, v0, :cond_6

    return v1

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x1

    if-eqz p2, :cond_c

    sub-int/2addr p4, v0

    add-int/lit8 p2, p4, 0x1

    :goto_2
    if-lt p3, p2, :cond_8

    goto :goto_6

    .line 7
    :cond_8
    aget-char p4, p1, p3

    aget-char v4, p0, v2

    if-ne p4, v4, :cond_b

    move p4, v3

    :goto_3
    if-lt p4, v0, :cond_9

    return p3

    :cond_9
    add-int v4, p3, p4

    .line 8
    aget-char v4, p1, v4

    aget-char v5, p0, p4

    if-eq v4, v5, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_c
    sub-int/2addr p4, v0

    add-int/2addr p4, v3

    :goto_5
    if-lt p3, p4, :cond_d

    :goto_6
    return v1

    .line 9
    :cond_d
    aget-char p2, p1, p3

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result p2

    aget-char v4, p0, v2

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v4

    if-ne p2, v4, :cond_10

    move p2, v3

    :goto_7
    if-lt p2, v0, :cond_e

    return p3

    :cond_e
    add-int v4, p3, p2

    .line 10
    aget-char v4, p1, v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v4

    aget-char v5, p0, p2

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v5

    if-eq v4, v5, :cond_f

    goto :goto_8

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_10
    :goto_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_11
    :goto_9
    return v1
.end method

.method public static isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget p0, v0, p0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final lastIndexOf(C[C)I
    .locals 2

    .line 1
    array-length v0, p1

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-gez v0, :cond_1

    return v1

    .line 2
    :cond_1
    aget-char v1, p1, v0

    if-ne p0, v1, :cond_0

    return v0
.end method

.method public static final lastIndexOf(C[CI)I
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

    if-ne p0, v1, :cond_0

    return v0
.end method

.method public static final lastIndexOf(C[CII)I
    .locals 1

    :cond_0
    const/4 v0, -0x1

    add-int/2addr p3, v0

    if-ge p3, p2, :cond_1

    return v0

    .line 5
    :cond_1
    aget-char v0, p1, p3

    if-ne p0, v0, :cond_0

    return p3
.end method

.method public static final lastSegment([CC)[C
    .locals 1

    invoke-static {p1, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result p1

    if-gez p1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    array-length v0, p0

    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p0

    return-object p0
.end method

.method public static final match([CII[CIIZ)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    if-gez p2, :cond_2

    .line 4
    array-length p2, p0

    :cond_2
    if-gez p5, :cond_3

    .line 5
    array-length p5, p3

    :cond_3
    :goto_0
    if-ne p1, p2, :cond_5

    if-ne p4, p5, :cond_4

    return v1

    :cond_4
    return v0

    .line 6
    :cond_5
    aget-char v2, p0, p1

    const/16 v3, 0x3f

    const/16 v4, 0x2a

    if-ne v2, v4, :cond_10

    if-ne v2, v4, :cond_6

    add-int/lit8 p1, p1, 0x1

    move v2, p1

    goto :goto_1

    :cond_6
    move v2, v0

    :goto_1
    move v5, p4

    :goto_2
    if-lt p4, p5, :cond_a

    if-eq v2, p2, :cond_9

    if-ne p4, p5, :cond_7

    if-eq p1, p2, :cond_9

    :cond_7
    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_8

    .line 7
    aget-char p0, p0, p1

    if-eq p0, v4, :cond_9

    :cond_8
    return v0

    :cond_9
    return v1

    :cond_a
    if-ne p1, p2, :cond_b

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move p1, v2

    move p4, v5

    goto :goto_2

    .line 8
    :cond_b
    aget-char v6, p0, p1

    if-ne v6, v4, :cond_d

    add-int/lit8 v2, p1, 0x1

    if-ne v2, p2, :cond_c

    return v1

    :cond_c
    move v5, p4

    move p1, v2

    goto :goto_2

    :cond_d
    if-eqz p6, :cond_e

    .line 9
    aget-char v7, p3, p4

    goto :goto_4

    :cond_e
    aget-char v7, p3, p4

    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v7

    :goto_4
    if-eq v7, v6, :cond_f

    if-eq v6, v3, :cond_f

    goto :goto_3

    :cond_f
    add-int/lit8 p4, p4, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_10
    if-ne p4, p5, :cond_11

    return v0

    :cond_11
    if-eqz p6, :cond_12

    .line 10
    aget-char v4, p3, p4

    goto :goto_5

    .line 11
    :cond_12
    aget-char v4, p3, p4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v4

    :goto_5
    if-eq v2, v4, :cond_13

    if-eq v2, v3, :cond_13

    return v0

    :cond_13
    add-int/lit8 p4, p4, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static final match([C[CZ)Z
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_1
    array-length v2, p0

    const/4 v4, 0x0

    .line 2
    array-length v5, p1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v6, p2

    .line 3
    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([CII[CIIZ)Z

    move-result p0

    return p0
.end method

.method public static final occurencesOf(C[C)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    aget-char v2, p1, v0

    if-ne p0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final occurencesOf(C[CI)I
    .locals 2

    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p1

    if-lt p2, v1, :cond_0

    return v0

    .line 4
    :cond_0
    aget-char v1, p1, p2

    if-ne p0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static final parseInt([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    aget-char p0, p0, p1

    add-int/lit8 p0, p0, -0x30

    if-ltz p0, :cond_0

    const/16 p1, 0x9

    if-gt p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "invalid digit"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final pathMatch([C[CZC)Z
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    const/4 v10, 0x0

    if-nez v8, :cond_0

    return v10

    :cond_0
    const/4 v11, 0x1

    if-nez v7, :cond_1

    return v11

    :cond_1
    aget-char v0, v7, v10

    if-ne v0, v9, :cond_2

    move v0, v11

    goto :goto_0

    :cond_2
    move v0, v10

    :goto_0
    array-length v12, v7

    add-int/lit8 v1, v0, 0x1

    invoke-static {v9, v7, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v1

    if-gez v1, :cond_3

    move v1, v12

    :cond_3
    add-int/lit8 v2, v12, -0x1

    aget-char v2, v7, v2

    if-ne v2, v9, :cond_4

    move v13, v11

    goto :goto_1

    :cond_4
    move v13, v10

    :goto_1
    array-length v14, v8

    aget-char v2, v8, v10

    if-eq v2, v9, :cond_5

    move v2, v10

    goto :goto_2

    :cond_5
    move v2, v11

    :goto_2
    if-eq v2, v0, :cond_6

    return v10

    :cond_6
    add-int/lit8 v3, v2, 0x1

    invoke-static {v9, v8, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v3

    move v15, v1

    move v4, v2

    if-gez v3, :cond_7

    move/from16 v16, v14

    :goto_3
    move v1, v0

    goto :goto_4

    :cond_7
    move/from16 v16, v3

    goto :goto_3

    :cond_8
    :goto_4
    const/16 v6, 0x2a

    if-ge v1, v12, :cond_e

    if-ne v15, v12, :cond_9

    if-nez v13, :cond_e

    :cond_9
    add-int/lit8 v0, v1, 0x2

    if-ne v15, v0, :cond_a

    aget-char v0, v7, v1

    if-ne v0, v6, :cond_a

    add-int/lit8 v0, v1, 0x1

    aget-char v0, v7, v0

    if-ne v0, v6, :cond_a

    goto :goto_6

    :cond_a
    if-lt v4, v14, :cond_b

    return v10

    :cond_b
    move-object/from16 v0, p0

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v5, v16

    move/from16 v6, p2

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([CII[CIIZ)Z

    move-result v0

    if-nez v0, :cond_c

    return v10

    :cond_c
    add-int/lit8 v1, v15, 0x1

    invoke-static {v9, v7, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    if-gez v0, :cond_d

    move v15, v12

    goto :goto_5

    :cond_d
    move v15, v0

    :goto_5
    add-int/lit8 v4, v16, 0x1

    invoke-static {v9, v8, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v16

    if-gez v16, :cond_8

    move/from16 v16, v14

    goto :goto_4

    :cond_e
    :goto_6
    if-lt v1, v12, :cond_f

    if-nez v13, :cond_10

    :cond_f
    add-int/lit8 v0, v1, 0x2

    if-ne v15, v0, :cond_12

    aget-char v0, v7, v1

    if-ne v0, v6, :cond_12

    add-int/lit8 v0, v1, 0x1

    aget-char v0, v7, v0

    if-ne v0, v6, :cond_12

    :cond_10
    add-int/lit8 v1, v15, 0x1

    invoke-static {v9, v7, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    if-gez v0, :cond_11

    move v15, v12

    goto :goto_7

    :cond_11
    move v15, v0

    :goto_7
    move v0, v1

    goto :goto_8

    :cond_12
    if-lt v1, v12, :cond_14

    if-lt v4, v14, :cond_13

    return v11

    :cond_13
    return v10

    :cond_14
    move v0, v10

    :goto_8
    move v5, v15

    move/from16 v17, v16

    move v15, v0

    :goto_9
    move/from16 v16, v4

    :goto_a
    if-lt v4, v14, :cond_19

    if-ge v15, v5, :cond_18

    if-lt v4, v14, :cond_15

    if-ge v1, v12, :cond_18

    :cond_15
    add-int/lit8 v0, v12, -0x2

    if-ne v1, v0, :cond_16

    aget-char v0, v7, v1

    if-ne v0, v6, :cond_16

    add-int/lit8 v0, v1, 0x1

    aget-char v0, v7, v0

    if-eq v0, v6, :cond_18

    :cond_16
    if-ne v1, v12, :cond_17

    if-nez v13, :cond_18

    :cond_17
    return v10

    :cond_18
    return v11

    :cond_19
    if-lt v1, v12, :cond_1e

    if-eqz v13, :cond_1a

    return v11

    :cond_1a
    invoke-static {v9, v7, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    if-gez v0, :cond_1b

    move v5, v12

    goto :goto_b

    :cond_1b
    move v5, v0

    :goto_b
    add-int/lit8 v0, v16, 0x1

    invoke-static {v9, v8, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    if-gez v0, :cond_1c

    move v0, v14

    goto :goto_c

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    :goto_c
    invoke-static {v9, v8, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v17

    move v4, v0

    move/from16 v16, v4

    if-gez v17, :cond_1d

    move/from16 v17, v14

    :cond_1d
    move v1, v15

    goto :goto_a

    :cond_1e
    add-int/lit8 v0, v1, 0x2

    if-ne v5, v0, :cond_21

    aget-char v0, v7, v1

    if-ne v0, v6, :cond_21

    add-int/lit8 v0, v1, 0x1

    aget-char v0, v7, v0

    if-ne v0, v6, :cond_21

    add-int/lit8 v1, v5, 0x1

    invoke-static {v9, v7, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    if-gez v0, :cond_1f

    move v5, v12

    goto :goto_d

    :cond_1f
    move v5, v0

    :goto_d
    if-lt v1, v12, :cond_20

    return v11

    :cond_20
    move v15, v1

    goto :goto_9

    :cond_21
    move-object/from16 v0, p0

    move v2, v5

    move-object/from16 v3, p1

    move/from16 v18, v5

    move/from16 v5, v17

    move/from16 v19, v6

    move/from16 v6, p2

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([CII[CIIZ)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {v9, v7, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    if-gez v0, :cond_22

    move v5, v12

    goto :goto_e

    :cond_22
    move v5, v0

    :goto_e
    add-int/lit8 v0, v16, 0x1

    invoke-static {v9, v8, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    if-gez v0, :cond_23

    move v0, v14

    goto :goto_f

    :cond_23
    add-int/lit8 v0, v0, 0x1

    :goto_f
    invoke-static {v9, v8, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v17

    move v4, v0

    move/from16 v16, v4

    if-gez v17, :cond_24

    move/from16 v17, v14

    :cond_24
    move v1, v15

    :cond_25
    :goto_10
    move/from16 v6, v19

    goto/16 :goto_a

    :cond_26
    add-int/lit8 v1, v18, 0x1

    invoke-static {v9, v7, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    if-gez v0, :cond_27

    move v5, v12

    goto :goto_11

    :cond_27
    move v5, v0

    :goto_11
    add-int/lit8 v4, v17, 0x1

    invoke-static {v9, v8, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v17

    if-gez v17, :cond_25

    move/from16 v17, v14

    goto :goto_10
.end method

.method public static final prefixEquals([C[C)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    aget-char v1, p0, v0

    aget-char v3, p1, v0

    if-eq v1, v3, :cond_0

    return v2
.end method

.method public static final prefixEquals([C[CZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZI)Z

    move-result p0

    return p0
.end method

.method public static final prefixEquals([C[CZI)Z
    .locals 4

    .line 5
    array-length v0, p0

    .line 6
    array-length v1, p1

    sub-int/2addr v1, p3

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    return v1

    .line 7
    :cond_2
    aget-char p2, p0, v0

    add-int v3, p3, v0

    aget-char v3, p1, v3

    if-eq p2, v3, :cond_1

    return v2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    return v1

    .line 8
    :cond_4
    aget-char p2, p0, v0

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result p2

    add-int v3, p3, v0

    .line 9
    aget-char v3, p1, v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v3

    if-eq p2, v3, :cond_3

    return v2
.end method

.method public static final prepend(C[C)[C
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-array p1, v1, [C

    aput-char p0, p1, v0

    return-object p1

    :cond_0
    array-length v2, p1

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [C

    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-char p0, v3, v0

    return-object v3
.end method

.method public static final remove([CC)[C
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, v1, :cond_3

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    new-array p0, v4, [C

    invoke-static {v0, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_3
    aget-char v5, p0, v3

    if-ne v5, p1, :cond_4

    if-nez v0, :cond_5

    new-array v0, v1, [C

    invoke-static {p0, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v3

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    add-int/lit8 v6, v4, 0x1

    aput-char v5, v0, v4

    move v4, v6

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static final replace([CCC)V
    .locals 3

    if-eq p1, p2, :cond_2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    aget-char v2, p0, v1

    if-ne v2, p1, :cond_1

    .line 3
    aput-char p2, p0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static final replace([C[CC)V
    .locals 2

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([C[CCII)V

    return-void
.end method

.method public static final replace([C[CCII)V
    .locals 3

    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ge p4, p3, :cond_0

    return-void

    .line 5
    :cond_0
    array-length v0, p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    aget-char v1, p0, p4

    aget-char v2, p1, v0

    if-ne v1, v2, :cond_1

    .line 7
    aput-char p2, p0, p4

    goto :goto_1
.end method

.method public static final replace([C[C[C)[C
    .locals 11

    .line 8
    array-length v0, p0

    .line 9
    array-length v1, p1

    .line 10
    array-length v2, p2

    const/4 v3, 0x5

    .line 11
    new-array v3, v3, [I

    .line 12
    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    move v4, v5

    move v6, v4

    :goto_0
    if-lt v4, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    .line 13
    invoke-static {p1, p0, v7, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZI)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_1
    array-length v4, v3

    if-ne v6, v4, :cond_2

    mul-int/lit8 v4, v6, 0x2

    .line 15
    new-array v4, v4, [I

    .line 16
    invoke-static {v3, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    :cond_2
    add-int/lit8 v4, v6, 0x1

    .line 17
    aput v7, v3, v6

    add-int v6, v7, v1

    move v10, v6

    move v6, v4

    move v4, v10

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_1
    if-nez v6, :cond_4

    return-object p0

    :cond_4
    sub-int p1, v2, v1

    mul-int/2addr p1, v6

    add-int/2addr p1, v0

    .line 18
    new-array p1, p1, [C

    move v4, v5

    move v7, v4

    move v8, v7

    :goto_2
    if-lt v4, v6, :cond_5

    sub-int/2addr v0, v7

    .line 19
    invoke-static {p0, v7, p1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 20
    :cond_5
    aget v9, v3, v4

    sub-int/2addr v9, v7

    .line 21
    invoke-static {p0, v7, p1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v9

    add-int/2addr v8, v9

    .line 22
    invoke-static {p2, v5, p1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v1

    add-int/2addr v8, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static final replaceOnCopy([CCC)[C
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    aget-char v4, p0, v3

    if-ne v4, p1, :cond_3

    if-nez v1, :cond_2

    new-array v1, v0, [C

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    aput-char p2, v1, v3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    aput-char v4, v1, v3

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static final splitAndTrimOn(C[C)[[C
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-nez v1, :cond_1

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    :cond_1
    const/4 v2, 0x1

    move v3, v0

    move v4, v2

    :goto_1
    if-lt v3, v1, :cond_c

    new-array v5, v4, [[C

    move v3, v0

    move v4, v3

    move v6, v4

    :goto_2
    const/16 v7, 0x20

    if-lt v3, v1, :cond_6

    add-int/lit8 p0, v1, -0x1

    :goto_3
    if-ge v4, v1, :cond_3

    aget-char v3, p1, v4

    if-eq v3, v7, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-le p0, v4, :cond_5

    aget-char v1, p1, p0

    if-eq v1, v7, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 p0, p0, -0x1

    goto :goto_4

    :cond_5
    :goto_5
    sub-int/2addr p0, v4

    add-int/2addr p0, v2

    new-array v1, p0, [C

    aput-object v1, v5, v6

    invoke-static {p1, v4, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    :cond_6
    aget-char v8, p1, v3

    if-ne v8, p0, :cond_b

    add-int/lit8 v8, v3, -0x1

    :goto_6
    if-ge v4, v3, :cond_8

    aget-char v9, p1, v4

    if-eq v9, v7, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    if-le v8, v4, :cond_a

    aget-char v9, p1, v8

    if-eq v9, v7, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_a
    :goto_8
    sub-int/2addr v8, v4

    add-int/2addr v8, v2

    new-array v7, v8, [C

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {p1, v4, v7, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v3, 0x1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    aget-char v5, p1, v3

    if-ne v5, p0, :cond_d

    add-int/lit8 v4, v4, 0x1

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static final splitOn(C[C)[[C
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    array-length v1, p1

    :goto_0
    if-nez v1, :cond_1

    .line 2
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    :cond_1
    const/4 v2, 0x1

    move v3, v0

    :goto_1
    if-lt v3, v1, :cond_4

    .line 3
    new-array v4, v2, [[C

    move v2, v0

    move v3, v2

    move v5, v3

    :goto_2
    if-lt v2, v1, :cond_2

    sub-int/2addr v1, v5

    .line 4
    new-array p0, v1, [C

    aput-object p0, v4, v3

    .line 5
    invoke-static {p1, v5, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    .line 6
    :cond_2
    aget-char v6, p1, v2

    if-ne v6, p0, :cond_3

    sub-int v6, v2, v5

    .line 7
    new-array v7, v6, [C

    aput-object v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    .line 8
    invoke-static {p1, v5, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v2, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9
    :cond_4
    aget-char v4, p1, v3

    if-ne v4, p0, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static final splitOn(C[CII)[[C
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 10
    :cond_0
    array-length v1, p1

    :goto_0
    if-eqz v1, :cond_6

    if-le p2, p3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    move v2, p2

    :goto_1
    if-lt v2, p3, :cond_4

    .line 11
    new-array v3, v1, [[C

    move v1, p2

    move v2, v0

    :goto_2
    if-lt p2, p3, :cond_2

    sub-int/2addr p3, v1

    .line 12
    new-array p0, p3, [C

    aput-object p0, v3, v2

    .line 13
    invoke-static {p1, v1, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    .line 14
    :cond_2
    aget-char v4, p1, p2

    if-ne v4, p0, :cond_3

    sub-int v4, p2, v1

    .line 15
    new-array v5, v4, [C

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 16
    invoke-static {p1, v1, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p2, 0x1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 17
    :cond_4
    aget-char v3, p1, v2

    if-ne v3, p0, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_6
    :goto_3
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0
.end method

.method public static final splitOnWithEnclosures(CCC[CII)[[C
    .locals 9

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p3

    :goto_0
    if-eqz v1, :cond_e

    if-le p4, p5, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v1, 0x1

    move v2, p4

    move v3, v0

    move v4, v1

    :goto_1
    if-lt v2, p5, :cond_b

    if-nez v3, :cond_2

    invoke-static {p0, p3, p4, p5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object p0

    return-object p0

    :cond_2
    if-eq p1, p0, :cond_a

    if-ne p2, p0, :cond_3

    goto :goto_5

    :cond_3
    const/4 v2, 0x2

    new-array v3, v2, [I

    aput v2, v3, v1

    aput v4, v3, v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move v3, p4

    move v4, v3

    move v5, v0

    move v6, v5

    :goto_2
    if-lt p4, p5, :cond_6

    add-int/lit8 p0, p5, -0x1

    if-ge v3, p0, :cond_4

    aget-object p0, v2, v6

    aput v4, p0, v0

    add-int/lit8 v6, v6, 0x1

    aput p5, p0, v1

    :cond_4
    move v7, v6

    new-array v8, v7, [[C

    move p0, v0

    :goto_3
    if-lt p0, v7, :cond_5

    return-object v8

    :cond_5
    aget-object p1, v2, p0

    aget p2, p1, v0

    aget p1, p1, v1

    sub-int/2addr p1, p2

    new-array p4, p1, [C

    aput-object p4, v8, p0

    invoke-static {p3, p2, p4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_6
    aget-char v7, p3, p4

    if-ne v7, p1, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    if-ne v7, p2, :cond_8

    if-lez v5, :cond_9

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_8
    if-ne v7, p0, :cond_9

    if-nez v5, :cond_9

    aget-object v3, v2, v6

    aput v4, v3, v0

    add-int/lit8 v6, v6, 0x1

    aput p4, v3, v1

    add-int/lit8 v3, p4, 0x1

    move v4, v3

    move v3, p4

    :cond_9
    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_a
    :goto_5
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    :cond_b
    aget-char v5, p3, v2

    if-ne v5, p1, :cond_c

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    if-ne v5, p0, :cond_d

    add-int/lit8 v4, v4, 0x1

    :cond_d
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_e
    :goto_7
    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0
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

.method public static final substringMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->checkSubstringMatch([C[C)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final substringMatch([C[C)Z
    .locals 1

    if-eqz p0, :cond_2

    .line 3
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->checkSubstringMatch([C[C)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static toCharArrays(Ljava/util/List;)[[C
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[[C"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final toLowerCase([C)[C
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    return-object p0

    :cond_2
    aget-char v4, p0, v3

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v5

    if-ne v4, v5, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    if-nez v0, :cond_4

    new-array v0, v1, [C

    invoke-static {p0, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    aput-char v5, v0, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static final toString([[C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2e

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static final toStrings([[C)[Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p0

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p0

    :cond_1
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_2

    return-object v1

    :cond_2
    new-instance v3, Ljava/lang/String;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final toUpperCase([C)[C
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    return-object p0

    :cond_2
    aget-char v4, p0, v3

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toUpperCase(C)C

    move-result v5

    if-ne v4, v5, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    if-nez v0, :cond_4

    new-array v0, v1, [C

    invoke-static {p0, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    aput-char v5, v0, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static final trim([C)[C
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_2

    aget-char v4, p0, v2

    if-eq v4, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    if-le v0, v2, :cond_4

    aget-char v4, p0, v0

    if-eq v4, v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-nez v2, :cond_6

    if-eq v0, v1, :cond_5

    goto :goto_4

    :cond_5
    return-object p0

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p0

    return-object p0
.end method
