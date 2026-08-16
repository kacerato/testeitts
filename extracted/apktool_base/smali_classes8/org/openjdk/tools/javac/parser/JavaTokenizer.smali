.class public Lorg/openjdk/tools/javac/parser/JavaTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;
    }
.end annotation


# static fields
.field private static final hexFloatsWork:Z

.field private static final scannerDebug:Z = false


# instance fields
.field private allowBinaryLiterals:Z

.field private allowUnderscoresInLiterals:Z

.field protected errPos:I

.field protected fac:Lorg/openjdk/tools/javac/parser/ScannerFactory;

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field protected name:Lorg/openjdk/tools/javac/util/Name;

.field protected radix:I

.field protected reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

.field private source:Lorg/openjdk/tools/javac/code/Source;

.field protected tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

.field private final tokens:Lorg/openjdk/tools/javac/parser/Tokens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->hexFloatsWork()Z

    move-result v0

    sput-boolean v0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->hexFloatsWork:Z

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Ljava/nio/CharBuffer;)V

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Lorg/openjdk/tools/javac/parser/UnicodeReader;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Lorg/openjdk/tools/javac/parser/UnicodeReader;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->errPos:I

    .line 5
    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->fac:Lorg/openjdk/tools/javac/parser/ScannerFactory;

    .line 6
    iget-object v0, p1, Lorg/openjdk/tools/javac/parser/ScannerFactory;->log:Lorg/openjdk/tools/javac/util/Log;

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->log:Lorg/openjdk/tools/javac/util/Log;

    .line 7
    iget-object v0, p1, Lorg/openjdk/tools/javac/parser/ScannerFactory;->tokens:Lorg/openjdk/tools/javac/parser/Tokens;

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tokens:Lorg/openjdk/tools/javac/parser/Tokens;

    .line 8
    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/ScannerFactory;->source:Lorg/openjdk/tools/javac/code/Source;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->source:Lorg/openjdk/tools/javac/code/Source;

    .line 9
    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    .line 10
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowBinaryLiterals()Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->allowBinaryLiterals:Z

    .line 11
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowUnderscoresInLiterals()Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->allowUnderscoresInLiterals:Z

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-direct {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/parser/UnicodeReader;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;Lorg/openjdk/tools/javac/parser/UnicodeReader;)V

    return-void
.end method

.method private static hexFloatsWork()Z
    .locals 1

    :try_start_0
    const-string v0, "0x1.0p1"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSpecial(C)Z
    .locals 1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x25

    if-eq p1, v0, :cond_0

    const/16 v0, 0x26

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private scanDigits(II)V
    .locals 5

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/4 v2, 0x0

    const/16 v3, 0x5f

    if-eq v1, v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->allowUnderscoresInLiterals:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "unsupported.underscore.lit"

    invoke-virtual {p0, p1, v1, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->allowUnderscoresInLiterals:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    iget v4, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v0, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_3

    const-string p1, "illegal.underscore"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v4, p1, p2}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private scanFraction(I)V
    .locals 6

    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanDigits(II)V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v2, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    iget-char v3, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v4, 0x65

    if-eq v3, v4, :cond_1

    const/16 v4, 0x45

    if-ne v3, v4, :cond_5

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v4, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    :cond_3
    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-direct {p0, p1, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanDigits(II)V

    return-void

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "malformed.fp.lit"

    invoke-virtual {p0, p1, v1, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iput v2, p1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    :cond_5
    return-void
.end method

.method private scanFractionAndSuffix(I)V
    .locals 3

    const/16 v0, 0xa

    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->radix:I

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanFraction(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v0, p1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x66

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    :cond_2
    sget-object p1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOUBLELITERAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    sget-object p1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->FLOATLITERAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    :goto_1
    return-void
.end method

.method private scanHexExponentAndSuffix(I)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x70

    const-string v3, "malformed.fp.lit"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v3, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    :cond_3
    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-direct {p0, p1, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanDigits(II)V

    sget-boolean v0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->hexFloatsWork:Z

    if-nez v0, :cond_5

    const-string v0, "unsupported.cross.fp.lit"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v3, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v0, p1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x66

    const/16 v2, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x46

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x64

    if-eq v0, v1, :cond_7

    const/16 v1, 0x44

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-virtual {p1, v5}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    :cond_8
    sget-object p1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOUBLELITERAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->radix:I

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {p1, v5}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    sget-object p1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->FLOATLITERAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->radix:I

    :goto_3
    return-void
.end method

.method private scanHexFractionAndSuffix(IZ)V
    .locals 5

    const/16 v0, 0x10

    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->radix:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanDigits(II)V

    move p2, v4

    :cond_1
    if-nez p2, :cond_2

    const-string p2, "invalid.hex.number"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanHexExponentAndSuffix(I)V

    :goto_1
    return-void
.end method

.method private scanIdent()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v2, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v3, 0x24

    if-eq v2, v3, :cond_6

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_6

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    const/16 v0, 0x80

    if-ge v2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->peekSurrogates()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v0, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    :cond_3
    :goto_1
    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tokens:Lorg/openjdk/tools/javac/parser/Tokens;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/parser/Tokens;->lookupKind(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    return-void

    :pswitch_0
    iget v2, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v3, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-lt v2, v3, :cond_4

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tokens:Lorg/openjdk/tools/javac/parser/Tokens;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/parser/Tokens;->lookupKind(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    return-void

    :cond_4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    goto :goto_0

    :cond_5
    :pswitch_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    goto :goto_0

    :cond_6
    :pswitch_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x61
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private scanLitChar(I)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/4 v2, 0x1

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_a

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->peekChar()C

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->isUnicode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->skipChar()V

    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {p1, v3, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v4, 0x22

    if-eq v1, v4, :cond_9

    const/16 v4, 0x27

    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_7

    const/16 v3, 0x62

    const/16 v4, 0x8

    if-eq v1, v3, :cond_6

    const/16 v3, 0x66

    if-eq v1, v3, :cond_5

    const/16 v3, 0x6e

    if-eq v1, v3, :cond_4

    const/16 v3, 0x72

    if-eq v1, v3, :cond_3

    const/16 v3, 0x74

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    iget p1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "illegal.esc.char"

    invoke-virtual {p0, p1, v1, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v0, p1, v4}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v3, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v5, 0x30

    if-gt v5, v3, :cond_1

    const/16 v6, 0x37

    if-gt v3, v6, :cond_1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v2, p1, v4}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    const/16 v2, 0x33

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v2, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-gt v5, v2, :cond_1

    if-gt v2, v6, :cond_1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, p1, v4}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result p1

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(C)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    invoke-virtual {v0, p1, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    goto :goto_0

    :cond_3
    const/16 p1, 0xd

    invoke-virtual {v0, p1, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    goto :goto_0

    :cond_4
    const/16 p1, 0xa

    invoke-virtual {v0, p1, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    goto :goto_0

    :cond_5
    const/16 p1, 0xc

    invoke-virtual {v0, p1, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v4, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v3, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    goto :goto_0

    :cond_8
    invoke-virtual {v0, v4, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    goto :goto_0

    :cond_9
    invoke-virtual {v0, v4, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    goto :goto_0

    :cond_a
    iget p1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-eq p1, v1, :cond_b

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    :cond_b
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private scanNumber(II)V
    .locals 9

    iput p2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->radix:I

    const/16 v0, 0x8

    const/16 v1, 0xa

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-ltz v2, :cond_2

    if-ge v2, v0, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    if-eqz v5, :cond_3

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanDigits(II)V

    :cond_3
    const/16 v6, 0x2e

    const/16 v7, 0x10

    if-ne p2, v7, :cond_4

    iget-object v8, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v8, v8, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v8, v6, :cond_4

    invoke-direct {p0, p1, v5}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanHexFractionAndSuffix(IZ)V

    goto/16 :goto_5

    :cond_4
    if-eqz v5, :cond_6

    if-ne p2, v7, :cond_6

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v5, v5, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v8, 0x70

    if-eq v5, v8, :cond_5

    const/16 v8, 0x50

    if-ne v5, v8, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanHexExponentAndSuffix(I)V

    goto :goto_5

    :cond_6
    if-ne v0, v1, :cond_7

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v8, v5, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v8, v6, :cond_7

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanFractionAndSuffix(I)V

    goto :goto_5

    :cond_7
    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v0, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_8

    const/16 v1, 0x45

    if-eq v0, v1, :cond_8

    const/16 v1, 0x66

    if-eq v0, v1, :cond_8

    const/16 v1, 0x46

    if-eq v0, v1, :cond_8

    const/16 v1, 0x64

    if-eq v0, v1, :cond_8

    const/16 v1, 0x44

    if-ne v0, v1, :cond_9

    :cond_8
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanFractionAndSuffix(I)V

    goto :goto_5

    :cond_9
    if-nez v2, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    if-eq p2, v7, :cond_a

    goto :goto_3

    :cond_a
    const-string p2, "invalid.hex.number"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    const-string p2, "invalid.binary.number"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char p2, p1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v0, 0x6c

    if-eq p2, v0, :cond_e

    const/16 v0, 0x4c

    if-ne p2, v0, :cond_d

    goto :goto_4

    :cond_d
    sget-object p1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->INTLITERAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto :goto_5

    :cond_e
    :goto_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    sget-object p1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LONGLITERAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    :goto_5
    return-void
.end method

.method private scanOperator()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tokens:Lorg/openjdk/tools/javac/parser/Tokens;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/parser/Tokens;->lookupKind(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v0, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->isSpecial(C)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method private skipIllegalUnderscores()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_0

    iget v0, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "illegal.underscore"

    invoke-virtual {p0, v0, v3, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addComment(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment;",
            ">;",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public errPos()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->errPos:I

    return v0
.end method

.method public errPos(I)V
    .locals 0

    .line 2
    iput p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->errPos:I

    return-void
.end method

.method public getLineMap()Lorg/openjdk/tools/javac/util/Position$LineMap;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->getRawCharacters()[C

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Position;->makeLineMap([CIZ)Lorg/openjdk/tools/javac/util/Position$LineMap;

    move-result-object v0

    return-object v0
.end method

.method public varargs lexError(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ERROR:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput p1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->errPos:I

    return-void
.end method

.method public processComment(IILorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->getRawCharacters(II)[C

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;

    new-instance v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->fac:Lorg/openjdk/tools/javac/parser/ScannerFactory;

    array-length v2, p1

    invoke-direct {v0, v1, p1, v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;-><init>(Lorg/openjdk/tools/javac/parser/ScannerFactory;[CI)V

    invoke-direct {p2, v0, p3}, Lorg/openjdk/tools/javac/parser/JavaTokenizer$BasicComment;-><init>(Lorg/openjdk/tools/javac/parser/UnicodeReader;Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)V

    return-object p2
.end method

.method public processLineTerminator(II)V
    .locals 0

    return-void
.end method

.method public processWhiteSpace(II)V
    .locals 0

    return-void
.end method

.method public readToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;
    .locals 12

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    const/4 v1, 0x0

    iput v1, v0, Lorg/openjdk/tools/javac/parser/UnicodeReader;->sp:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->name:Lorg/openjdk/tools/javac/util/Name;

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->radix:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v3, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget-char v4, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v5, 0xc

    const/16 v6, 0x9

    const/16 v7, 0x20

    if-eq v4, v6, :cond_33

    const/16 v8, 0xa

    if-eq v4, v8, :cond_32

    if-eq v4, v5, :cond_33

    const/16 v9, 0xd

    if-eq v4, v9, :cond_30

    if-eq v4, v7, :cond_33

    const/4 v5, 0x2

    const/16 v6, 0x22

    const/4 v10, 0x1

    if-eq v4, v6, :cond_29

    const/16 v6, 0x24

    if-eq v4, v6, :cond_28

    const/16 v6, 0x2c

    if-eq v4, v6, :cond_27

    const/16 v6, 0x3b

    if-eq v4, v6, :cond_26

    const/16 v6, 0x5d

    if-eq v4, v6, :cond_25

    const/16 v6, 0x5f

    if-eq v4, v6, :cond_28

    const/16 v11, 0x7d

    if-eq v4, v11, :cond_24

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    invoke-direct {p0, v4}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->isSpecial(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanOperator()V

    goto/16 :goto_4

    :cond_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v4, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v6, 0x80

    if-ge v4, v6, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->peekSurrogates()I

    move-result v2

    if-ltz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v4, v10}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v1, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanIdent()V

    goto/16 :goto_4

    :cond_5
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v1, v3, v8}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v1

    if-ltz v1, :cond_6

    invoke-direct {p0, v3, v8}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanNumber(II)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v4, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v6, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-eq v4, v6, :cond_a

    iget-char v8, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v9, 0x1a

    if-ne v8, v9, :cond_7

    add-int/2addr v4, v10

    if-ne v4, v6, :cond_7

    goto :goto_3

    :cond_7
    if-ltz v2, :cond_8

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    const-string v1, "\\u%04x\\u%04x"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v4, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    if-ge v7, v8, :cond_9

    const/16 v1, 0x7f

    if-ge v8, v1, :cond_9

    const-string v1, "%s"

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    const-string v1, "\\u%04x"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "illegal.char"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    goto :goto_4

    :cond_a
    :goto_3
    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move v3, v6

    :goto_4
    move v4, v3

    goto/16 :goto_b

    :pswitch_0
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto :goto_4

    :pswitch_1
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto :goto_4

    :pswitch_2
    invoke-direct {p0, v3, v8}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanNumber(II)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v4, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v7, 0x78

    if-eq v4, v7, :cond_11

    const/16 v7, 0x58

    if-ne v4, v7, :cond_b

    goto :goto_6

    :cond_b
    const/16 v7, 0x62

    if-eq v4, v7, :cond_f

    const/16 v7, 0x42

    if-ne v4, v7, :cond_c

    goto :goto_5

    :cond_c
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(C)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v4, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v4, v6, :cond_e

    iget v2, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    :cond_d
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v7, v4, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v7, v6, :cond_d

    invoke-virtual {v4, v3, v8}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v4

    if-gez v4, :cond_e

    const-string v4, "illegal.underscore"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const/16 v1, 0x8

    invoke-direct {p0, v3, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanNumber(II)V

    goto :goto_4

    :cond_f
    :goto_5
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->allowBinaryLiterals:Z

    if-nez v1, :cond_10

    const-string v1, "unsupported.binary.lit"

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v1, v2}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v10, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->allowBinaryLiterals:Z

    :cond_10
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    invoke-direct {p0, v3, v5}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanNumber(II)V

    goto :goto_4

    :cond_11
    :goto_6
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->skipIllegalUnderscores()V

    const/16 v1, 0x10

    invoke-direct {p0, v3, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanNumber(II)V

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v4, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v6, 0x2f

    if-ne v4, v6, :cond_14

    :cond_12
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanCommentChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v4, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v4, v9, :cond_13

    if-eq v4, v8, :cond_13

    iget v4, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v5, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-lt v4, v5, :cond_12

    :cond_13
    iget v4, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v2, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v4, v2, :cond_0

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->LINE:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {p0, v3, v4, v2}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->processComment(IILorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->addComment(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    const/16 v7, 0x2a

    if-ne v4, v7, :cond_1b

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v4, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v4, v7, :cond_16

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanCommentChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v2, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v2, v6, :cond_15

    move v2, v10

    goto :goto_8

    :cond_15
    :goto_7
    move v2, v1

    goto :goto_8

    :cond_16
    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->BLOCK:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    goto :goto_7

    :cond_17
    :goto_8
    if-nez v2, :cond_19

    iget-object v8, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v9, v8, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v11, v8, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v9, v11, :cond_19

    iget-char v9, v8, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v9, v7, :cond_18

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v8, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v8, v8, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v8, v6, :cond_17

    goto :goto_9

    :cond_18
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanCommentChar()V

    goto :goto_8

    :cond_19
    :goto_9
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v7, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v7, v6, :cond_1a

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {p0, v3, v2, v4}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->processComment(IILorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->addComment(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_1a
    const-string v2, "unclosed.comment"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v2, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1b
    const/16 v1, 0x3d

    if-ne v4, v1, :cond_1c

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SLASHEQ:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    goto/16 :goto_4

    :cond_1c
    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SLASH:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto/16 :goto_4

    :pswitch_5
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v2, v3, v8}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->digit(II)I

    move-result v2

    const/16 v4, 0x2e

    if-ltz v2, :cond_1d

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(C)V

    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanFractionAndSuffix(I)V

    goto/16 :goto_4

    :cond_1d
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v6, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v6, v4, :cond_1f

    iget v6, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(C)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v2, v4, v10}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(CZ)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v7, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v7, v4, :cond_1e

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->putChar(C)V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ELLIPSIS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto/16 :goto_4

    :cond_1e
    const-string v2, "illegal.dot"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v2, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1f
    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v2, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    const/16 v4, 0x27

    if-ne v2, v4, :cond_20

    const-string v2, "empty.char.lit"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v2, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    goto/16 :goto_4

    :cond_20
    if-eq v2, v9, :cond_21

    if-ne v2, v8, :cond_22

    :cond_21
    const-string v2, "illegal.line.end.in.char.lit"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v2, v6}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanLitChar(I)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v6, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v6, v4, :cond_23

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->CHARLITERAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto/16 :goto_4

    :cond_23
    const-string v2, "unclosed.char.lit"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v2, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_24
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto/16 :goto_4

    :cond_25
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto/16 :goto_4

    :cond_26
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto/16 :goto_4

    :cond_27
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto/16 :goto_4

    :cond_28
    :pswitch_9
    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanIdent()V

    goto/16 :goto_4

    :cond_29
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    :goto_a
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v4, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v4, v6, :cond_2a

    if-eq v4, v9, :cond_2a

    if-eq v4, v8, :cond_2a

    iget v7, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    iget v11, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->buflen:I

    if-ge v7, v11, :cond_2a

    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->scanLitChar(I)V

    goto :goto_a

    :cond_2a
    if-ne v4, v6, :cond_2b

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->STRINGLITERAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    goto/16 :goto_4

    :cond_2b
    const-string v2, "unclosed.str.lit"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v2, v1}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->lexError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :goto_b
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    sget-object v2, Lorg/openjdk/tools/javac/parser/JavaTokenizer$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$Token$Tag:[I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->tag:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v10, :cond_2f

    if-eq v2, v5, :cond_2e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2d

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2c

    new-instance v9, Lorg/openjdk/tools/javac/parser/Tokens$NumericToken;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->chars()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->radix:I

    move-object v2, v9

    move v5, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lorg/openjdk/tools/javac/parser/Tokens$NumericToken;-><init>(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;IILjava/lang/String;ILorg/openjdk/tools/javac/util/List;)V

    return-object v9

    :cond_2c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2d
    new-instance v8, Lorg/openjdk/tools/javac/parser/Tokens$StringToken;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->chars()Ljava/lang/String;

    move-result-object v6

    move-object v2, v8

    move v5, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/parser/Tokens$StringToken;-><init>(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;IILjava/lang/String;Lorg/openjdk/tools/javac/util/List;)V

    return-object v8

    :cond_2e
    new-instance v8, Lorg/openjdk/tools/javac/parser/Tokens$NamedToken;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v6, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->name:Lorg/openjdk/tools/javac/util/Name;

    move-object v2, v8

    move v5, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/parser/Tokens$NamedToken;-><init>(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;IILorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)V

    return-object v8

    :cond_2f
    new-instance v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->tk:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-direct {v2, v3, v4, v1, v0}, Lorg/openjdk/tools/javac/parser/Tokens$Token;-><init>(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;IILorg/openjdk/tools/javac/util/List;)V

    return-object v2

    :cond_30
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v4, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-ne v4, v8, :cond_31

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    :cond_31
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->processLineTerminator(II)V

    goto/16 :goto_0

    :cond_32
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->processLineTerminator(II)V

    goto/16 :goto_0

    :cond_33
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/UnicodeReader;->scanChar()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->reader:Lorg/openjdk/tools/javac/parser/UnicodeReader;

    iget-char v4, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->ch:C

    if-eq v4, v7, :cond_33

    if-eq v4, v6, :cond_33

    if-eq v4, v5, :cond_33

    iget v2, v2, Lorg/openjdk/tools/javac/parser/UnicodeReader;->bp:I

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/javac/parser/JavaTokenizer;->processWhiteSpace(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x61
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method
