.class public abstract Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;
.super Lorg/eclipse/jdt/internal/compiler/ast/Literal;
.source "SourceFile"


# instance fields
.field source:[C


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Literal;-><init>(II)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;-><init>(II)V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    return-void
.end method

.method public static removePrefixZerosAndUnderscores([CZ)[C
    .locals 10

    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    if-eqz p1, :cond_0

    add-int/lit8 v1, v0, -0x2

    :cond_0
    const/16 p1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    aget-char v4, p0, v2

    if-ne v4, p1, :cond_3

    const/4 v4, 0x2

    if-le v0, v4, :cond_1

    aget-char v5, p0, v3

    const/16 v6, 0x78

    if-eq v5, v6, :cond_4

    const/16 v6, 0x58

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    if-le v0, v4, :cond_2

    aget-char v5, p0, v3

    const/16 v6, 0x62

    if-eq v5, v6, :cond_4

    const/16 v6, 0x42

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :cond_4
    :goto_0
    move v7, v2

    move v6, v3

    move v5, v4

    :goto_1
    const/16 v8, 0x5f

    if-lt v5, v0, :cond_5

    goto :goto_2

    :cond_5
    aget-char v9, p0, v5

    if-eq v9, p1, :cond_c

    if-eq v9, v8, :cond_6

    move v6, v2

    goto :goto_6

    :cond_6
    move v7, v3

    :goto_2
    if-nez v7, :cond_7

    return-object p0

    :cond_7
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, p0, v2, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_3
    if-lt v4, v0, :cond_8

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_8
    aget-char v5, p0, v4

    if-eq v5, p1, :cond_9

    if-eq v5, v8, :cond_b

    move v3, v2

    goto :goto_4

    :cond_9
    if-eqz v3, :cond_a

    if-ge v4, v1, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_b
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    if-eqz v6, :cond_d

    if-nez v7, :cond_d

    if-ge v5, v1, :cond_d

    move v7, v3

    :cond_d
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public isValidJavaStatement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public source()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NumberLiteral;->source:[C

    return-object v0
.end method
