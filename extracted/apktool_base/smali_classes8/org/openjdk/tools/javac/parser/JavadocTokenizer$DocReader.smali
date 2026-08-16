.class Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;
.super Lorg/openjdk/tools/javac/parser/UnicodeReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/JavadocTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocReader"
.end annotation


# instance fields
.field col:I

.field private doubleBackslashBp:I

.field pbuf:[I

.field pp:I

.field startPos:I


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/parser/UnicodeReader;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V

    const/16 p1, 0x80

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    const/4 p1, 0x0

    iput p1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->pp:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->doubleBackslashBp:I

    iput p4, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->startPos:I

    return-void
.end method


# virtual methods
.method public convertUnicode()V
    .locals 5

    iget-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->unicodeConversionBp:I

    iget v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    if-eq v0, v2, :cond_3

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buf:[C

    aget-char v0, v3, v0

    iput-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    const/16 v4, 0x75

    if-ne v0, v4, :cond_2

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buf:[C

    aget-char v2, v2, v1

    iput-char v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    if-eq v2, v4, :cond_0

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v0, v2, :cond_3

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v1

    move v3, v1

    :goto_0
    iget v4, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    if-ge v4, v0, :cond_1

    if-ltz v1, :cond_1

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buf:[C

    aget-char v1, v1, v4

    iput-char v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    iget v1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    invoke-virtual {p0, v4, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v1

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_3

    int-to-char v0, v3

    iput-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    iput v4, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->unicodeConversionBp:I

    return-void

    :cond_2
    iput v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iput-char v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    iput v3, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    :cond_3
    return-void
.end method

.method public isDoubleBackslash()Z
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->doubleBackslashBp:I

    iget v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putChar(CZ)V
    .locals 5

    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->pp:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    add-int/lit8 v3, v0, -0x2

    aget v3, v2, v3

    sub-int/2addr v1, v3

    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->startPos:I

    iget v4, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    add-int/2addr v3, v4

    add-int/lit8 v4, v0, -0x1

    aget v2, v2, v4

    sub-int/2addr v3, v2

    if-eq v1, v3, :cond_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    array-length v2, v1

    if-lt v0, v2, :cond_1

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->pbuf:[I

    iget v1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->pp:I

    iget v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    aput v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->startPos:I

    iget v4, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    add-int/2addr v3, v4

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->pp:I

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    return-void
.end method

.method public scanChar()V
    .locals 7

    iget v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buf:[C

    aget-char v3, v2, v1

    iput-char v3, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xd

    if-eq v3, v4, :cond_2

    if-eq v3, v6, :cond_1

    const/16 v0, 0x5c

    if-eq v3, v0, :cond_0

    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->convertUnicode()V

    goto :goto_0

    :cond_1
    iput v5, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    aget-char v0, v2, v0

    if-eq v0, v6, :cond_5

    :cond_3
    iput v5, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    :cond_5
    :goto_0
    return-void
.end method

.method public scanCommentChar()V
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->scanChar()V

    iget-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->peekChar()C

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->isUnicode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->col:I

    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->doubleBackslashBp:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavadocTokenizer$DocReader;->convertUnicode()V

    :cond_1
    :goto_0
    return-void
.end method
