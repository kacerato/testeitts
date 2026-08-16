.class public Lorg/openjdk/tools/javac/parser/UnicodeReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final surrogatesSupported:Z


# instance fields
.field protected bp:I

.field protected buf:[C

.field protected final buflen:I

.field protected ch:C

.field protected log:Lorg/openjdk/tools/javac/util/Log;

.field protected names:Lorg/openjdk/tools/javac/util/Names;

.field protected sbuf:[C

.field protected sp:I

.field protected unicodeConversionBp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->surrogatesSupported()Z

    move-result v0

    sput-boolean v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->surrogatesSupported:Z

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->toArray(Ljava/nio/CharBuffer;)[C

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->unicodeConversionBp:I

    const/16 v1, 0x80

    .line 4
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sbuf:[C

    .line 5
    iget-object v1, p1, Lorg/openjdk/tools/javac/parser/ScannerFactory;->log:Lorg/openjdk/tools/javac/util/Log;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->log:Lorg/openjdk/tools/javac/util/Log;

    .line 6
    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/ScannerFactory;->names:Lorg/openjdk/tools/javac/util/Names;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->names:Lorg/openjdk/tools/javac/util/Names;

    .line 7
    array-length p1, p2

    if-ne p3, p1, :cond_1

    .line 8
    array-length p1, p2

    if-lez p1, :cond_0

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-char p1, p2, p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p3, 0x1

    .line 9
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p2

    .line 10
    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buf:[C

    .line 11
    iput p3, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    const/16 p1, 0x1a

    .line 12
    aput-char p1, p2, p3

    .line 13
    iput v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    .line 14
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    return-void
.end method

.method private static surrogatesSupported()Z
    .locals 1

    const/16 v0, 0x61

    :try_start_0
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public chars()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public convertUnicode()V
    .locals 5

    iget-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->unicodeConversionBp:I

    iget v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    if-eq v0, v2, :cond_4

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buf:[C

    aget-char v0, v3, v0

    iput-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0x75

    if-ne v0, v3, :cond_3

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buf:[C

    aget-char v2, v2, v1

    iput-char v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v0, v2, :cond_2

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

    invoke-virtual {p0, v4, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v1

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    int-to-char v0, v3

    iput-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    iput v4, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->unicodeConversionBp:I

    return-void

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->log:Lorg/openjdk/tools/javac/util/Log;

    iget v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "illegal.unicode.esc"

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iput v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iput-char v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    :cond_4
    :goto_1
    return-void
.end method

.method public digit(II)I
    .locals 4

    iget-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x30

    if-gt v1, v0, :cond_0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    invoke-static {v0, p2}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->peekSurrogates()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-static {v1, p2}, Ljava/lang/Character;->digit(II)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Ljava/lang/Character;->digit(CI)I

    move-result p2

    :goto_0
    if-ltz p2, :cond_3

    const/16 v2, 0x7f

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->log:Lorg/openjdk/tools/javac/util/Log;

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "illegal.nonascii.digit"

    invoke-virtual {v0, p1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    :cond_2
    const-string p1, "0123456789abcdef"

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    :cond_3
    return p2
.end method

.method public getRawCharacters()[C
    .locals 4

    .line 1
    iget v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    new-array v1, v0, [C

    .line 2
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buf:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getRawCharacters(II)[C
    .locals 3

    sub-int/2addr p2, p1

    .line 3
    new-array v0, p2, [C

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buf:[C

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public isUnicode()Z
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->unicodeConversionBp:I

    iget v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public name()Lorg/openjdk/tools/javac/util/Name;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/util/Names;->fromChars([CII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public peekChar()C
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buf:[C

    iget v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    return v0
.end method

.method public peekSurrogates()I
    .locals 3

    sget-boolean v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->surrogatesSupported:Z

    if-eqz v0, :cond_0

    iget-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    iget v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-char v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    iput-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    iput v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public putChar(C)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    return-void
.end method

.method public putChar(CZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sbuf:[C

    iget v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([CI)[C

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sbuf:[C

    .line 2
    iget v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    aput-char p1, v0, v1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    :cond_0
    return-void
.end method

.method public putChar(Z)V
    .locals 1

    .line 5
    iget-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    return-void
.end method

.method public scanChar()V
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buf:[C

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    aget-char v0, v1, v0

    iput-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->convertUnicode()V

    :cond_0
    return-void
.end method

.method public scanCommentChar()V
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-char v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->peekChar()C

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->isUnicode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->skipChar()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->convertUnicode()V

    :cond_1
    :goto_0
    return-void
.end method

.method public skipChar()V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    return-void
.end method
