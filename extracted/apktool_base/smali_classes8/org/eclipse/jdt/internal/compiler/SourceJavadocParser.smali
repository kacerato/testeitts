.class public Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;
.super Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;
.source "SourceFile"


# instance fields
.field categories:[[C

.field categoriesPtr:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categoriesPtr:I

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categories:[[C

    const/16 p1, 0x210

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->kind:I

    return-void
.end method


# virtual methods
.method public checkDeprecation(I)Z
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categoriesPtr:I

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->checkDeprecation(I)Z

    move-result p1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categoriesPtr:I

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categories:[[C

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categories:[[C

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categories:[[C

    :goto_0
    return p1
.end method

.method public parseIdentifierTag(Z)Z
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseIdentifierTag(Z)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    if-gt p1, v0, :cond_7

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    const/16 v3, 0xb

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categories:[[C

    array-length v3, p1

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categoriesPtr:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categoriesPtr:I

    if-lt v4, v3, :cond_0

    add-int/lit8 v4, v3, 0x5

    new-array v5, v4, [[C

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categories:[[C

    invoke-static {p1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v4

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categories:[[C

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categoriesPtr:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    aget-object v5, v5, v6

    aput-object v5, p1, v4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readTokenSafely()I

    move-result p1

    const/16 v4, 0x16

    if-ne p1, v4, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-char p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v4, 0x20

    if-eq p1, v4, :cond_2

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    add-int/2addr v4, v1

    if-le p1, v4, :cond_3

    goto :goto_1

    :cond_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categoriesPtr:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categoriesPtr:I

    if-lt p1, v3, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categories:[[C

    add-int/lit8 v4, v3, 0x5

    new-array v5, v4, [[C

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categories:[[C

    invoke-static {p1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v4

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categories:[[C

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->categoriesPtr:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v5

    aput-object v5, p1, v4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    goto :goto_0

    :cond_5
    :goto_1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->consumeToken()V

    :cond_6
    return v1

    :cond_7
    return v2
.end method

.method public parseSimpleTag()V
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v3, v0, v1

    const/16 v4, 0x5c

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    aget-char v0, v0, v2

    const/16 v4, 0x75

    if-ne v0, v4, :cond_2

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v4, :cond_1

    add-int/2addr v1, v5

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v4, v4, v6

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v4

    if-gt v4, v1, :cond_0

    if-ltz v4, :cond_0

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v6, v6, v7

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v6

    if-gt v6, v1, :cond_0

    if-ltz v6, :cond_0

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v7, v7, v8

    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v7

    if-gt v7, v1, :cond_0

    if-ltz v7, :cond_0

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v7

    int-to-char v3, v0

    goto :goto_1

    :cond_0
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v0, 0x2a

    const/16 v1, 0x74

    const/16 v2, 0x61

    const/16 v4, 0x72

    const/16 v6, 0x63

    const/16 v7, 0x65

    if-eq v3, v6, :cond_5

    const/16 v8, 0x64

    if-eq v3, v8, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    if-ne v3, v7, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    const/16 v9, 0x70

    if-ne v3, v9, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    if-ne v3, v4, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    if-ne v3, v7, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    if-ne v3, v6, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    if-ne v3, v2, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v2

    if-ne v2, v1, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    if-ne v1, v7, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    if-ne v1, v8, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_4

    if-ne v1, v0, :cond_8

    :cond_4
    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->deprecated:Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    if-ne v3, v2, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v2

    if-ne v2, v1, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    if-ne v1, v7, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    if-ne v1, v4, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_6

    if-ne v1, v0, :cond_8

    :cond_6
    const/16 v0, 0xb

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/SourceJavadocParser;->parseIdentifierTag(Z)Z

    :cond_8
    :goto_2
    return-void
.end method
