.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;
.super Lorg/eclipse/jdt/internal/compiler/parser/Scanner;
.source "SourceFile"


# static fields
.field public static final EmptyCompletionIdentifier:[C


# instance fields
.field public completedIdentifierEnd:I

.field public completedIdentifierStart:I

.field public completionIdentifier:[C

.field public cursorLocation:I

.field public endOfEmptyToken:I

.field public unicodeCharSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->EmptyCompletionIdentifier:[C

    return-void
.end method

.method public constructor <init>(J)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->endOfEmptyToken:I

    const/4 p2, 0x0

    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierEnd:I

    return-void
.end method


# virtual methods
.method public getCurrentIdentifierSource()[C
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    if-nez v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ne v3, v1, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierStart:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierEnd:I

    sget-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->EmptyCompletionIdentifier:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    return-object v0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    if-lt v3, v1, :cond_2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v0, v3, :cond_2

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierStart:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierEnd:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->unicodeCharSize:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    new-array v3, v0, [C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    new-array v3, v0, [C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    return-object v0

    :cond_2
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTokenSourceString()[C
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v0, v1, :cond_1

    iput v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierStart:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completedIdentifierEnd:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sub-int/2addr v0, v2

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->unicodeCharSize:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodeBuffer:[C

    new-array v2, v0, [C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    const/4 v4, 0x2

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v2, v2, 0x1

    new-array v4, v0, [C

    iput-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    invoke-static {v1, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    return-object v0

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSourceString()[C

    move-result-object v0

    return-object v0
.end method

.method public getNextNotFakedToken()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->nextToken:I

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v0

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-ne v3, v4, :cond_2

    if-nez v2, :cond_1

    add-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_1
    const/4 v0, -0x1

    :cond_2
    return v0
.end method

.method public getNextToken0()I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->wasAcr:Z

    iput v2, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->unicodeCharSize:I

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->diet:Z

    const/16 v3, 0x21

    const/16 v4, 0x3d

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->jumpOverMethodBody()V

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->diet:Z

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-le v0, v2, :cond_0

    move v3, v4

    :cond_0
    return v3

    :cond_1
    move v0, v2

    :goto_0
    const/16 v5, 0x3e8

    const/16 v6, 0x16

    const/4 v7, 0x1

    :try_start_0
    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    iget v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7

    move v0, v2

    :cond_2
    :try_start_1
    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    const/16 v10, 0xd

    const/16 v11, 0x75

    const/16 v12, 0xa

    const/16 v13, 0x5c

    :try_start_2
    iget-object v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v15, v9, 0x1

    iput v15, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v9, v14, v9

    iput-char v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v9, v13, :cond_5

    aget-char v9, v14, v15
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v9, v11, :cond_5

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->jumpOverUnicodeWhiteSpace()Z

    move-result v9

    const/4 v14, 0x6

    goto :goto_2

    :catch_0
    iget-boolean v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    if-eqz v9, :cond_3

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v14, v9, -0x1

    if-eq v8, v14, :cond_3

    sub-int/2addr v9, v7

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    return v5

    :cond_3
    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-le v9, v14, :cond_5

    iget-object v0, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    if-nez v0, :cond_4

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v2, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    add-int/2addr v2, v7

    if-ne v0, v2, :cond_4

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v6

    :cond_4
    return v4

    :cond_5
    iget-char v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v9, v10, :cond_6

    if-ne v9, v12, :cond_7

    :cond_6
    iget-boolean v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushLineSeparator()V

    :cond_7
    iget-char v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v14, 0x20

    if-eq v9, v14, :cond_8

    invoke-static {v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_8

    move v9, v2

    goto :goto_1

    :cond_8
    move v9, v7

    :goto_1
    move v14, v7

    :goto_2
    if-eqz v9, :cond_9

    move v0, v7

    :cond_9
    iget v15, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-eq v8, v15, :cond_a

    iget-object v15, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    if-nez v15, :cond_a

    iget v15, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    add-int/lit8 v12, v15, 0x1

    if-gt v8, v12, :cond_a

    iget v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-ge v15, v12, :cond_a

    iget-wide v11, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    iget-char v15, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v11, v12, v15}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JC)Z

    move-result v11

    if-nez v11, :cond_a

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v6

    :cond_a
    if-nez v9, :cond_2

    iget-boolean v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    if-eqz v9, :cond_b

    if-eqz v0, :cond_b

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v0, v14

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v8, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    return v5

    :cond_b
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-le v0, v9, :cond_e

    iget-object v0, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    if-nez v0, :cond_d

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v2, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    add-int/2addr v2, v7

    if-ne v0, v2, :cond_d

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    array-length v0, v0

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsJavaIdentifierPart()Z

    move-result v0

    if-nez v0, :cond_c

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v0, v7

    iput v0, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->endOfEmptyToken:I

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v6

    :cond_d
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v4

    :cond_e
    iget-char v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    const/16 v11, 0x1a

    if-eq v9, v11, :cond_92

    const/16 v11, 0x5b

    if-eq v9, v11, :cond_91

    if-eq v9, v3, :cond_8f

    const/16 v11, 0x22

    const/16 v12, 0x2e

    if-eq v9, v11, :cond_78

    const/16 v11, 0x5d

    if-eq v9, v11, :cond_77

    const/16 v11, 0x5e

    if-eq v9, v11, :cond_75

    const/16 v11, 0x40

    const/4 v15, 0x3

    const/16 v6, 0x3e

    const-string v5, "Invalid_Unicode_Escape"

    const/16 v16, 0x10

    const/16 v14, 0xf

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    const/16 v0, 0x80

    if-ge v9, v0, :cond_11

    :try_start_4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->OBVIOUS_IDENT_CHAR_NATURES:[I

    aget v0, v0, v9

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->scanIdentifierOrKeyword()I

    move-result v0

    return v0

    :cond_f
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->scanNumber(Z)I

    move-result v0

    return v0

    :cond_10
    const/16 v0, 0x81

    return v0

    :cond_11
    const v0, 0xd800

    if-lt v9, v0, :cond_14

    const v0, 0xdbff

    if-gt v9, v0, :cond_14

    iget-wide v10, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    const-wide/32 v12, 0x310000

    cmp-long v0, v10, v12

    if-ltz v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    move-result v0

    int-to-char v0, v0

    const v3, 0xdc00

    if-lt v0, v3, :cond_12

    const v3, 0xdfff

    if-gt v0, v3, :cond_12

    iget-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    invoke-static {v5, v6, v9, v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierStart(JCC)Z

    move-result v0

    goto :goto_3

    :cond_12
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_Low_Surrogate"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const v0, 0xdc00

    if-lt v9, v0, :cond_16

    const v0, 0xdfff

    if-gt v9, v0, :cond_16

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    const-wide/32 v9, 0x310000

    cmp-long v0, v2, v9

    if-gez v0, :cond_15

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Invalid_High_Surrogate"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->scanIdentifierOrKeyword()I

    move-result v0

    return v0

    :cond_17
    iget-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->scanNumber(Z)I

    move-result v0

    return v0

    :cond_18
    const/16 v0, 0x81

    return v0

    :pswitch_0
    return v11

    :pswitch_1
    return v3

    :pswitch_2
    const/16 v0, 0x7c

    invoke-virtual {v1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x1f

    return v0

    :cond_19
    if-lez v0, :cond_1a

    return v13

    :cond_1a
    const/16 v0, 0x1c

    return v0

    :pswitch_3
    const/16 v0, 0x31

    return v0

    :pswitch_4
    const/16 v0, 0x25

    return v0

    :pswitch_5
    const/16 v0, 0x1d

    return v0

    :pswitch_6
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->returnOnlyGreater:Z

    if-eqz v0, :cond_1b

    return v14

    :cond_1b
    invoke-virtual {v1, v4, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_1c

    return v10

    :cond_1c
    if-lez v0, :cond_20

    invoke-virtual {v1, v4, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x60

    return v0

    :cond_1d
    if-lez v0, :cond_1f

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x61

    return v0

    :cond_1e
    return v16

    :cond_1f
    const/16 v0, 0xe

    return v0

    :cond_20
    return v14

    :pswitch_7
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x13

    return v0

    :cond_21
    const/16 v0, 0x48

    return v0

    :pswitch_8
    const/16 v0, 0x3c

    invoke-virtual {v1, v4, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_22

    const/16 v0, 0xc

    return v0

    :cond_22
    if-lez v0, :cond_24

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x5f

    return v0

    :cond_23
    const/16 v0, 0x12

    return v0

    :cond_24
    const/16 v0, 0xb

    return v0

    :pswitch_9
    const/16 v0, 0x1a

    return v0

    :pswitch_a
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x7

    return v0

    :cond_25
    return v6

    :pswitch_b
    const/16 v0, 0x2f

    const/16 v6, 0x2a

    invoke-virtual {v1, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_40

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastCommentLinePosition:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    const/16 v6, 0x3e9

    :try_start_5
    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v11, v0, 0x1

    iput v11, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v12, v9, v0

    iput-char v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v12, v13, :cond_28

    aget-char v9, v9, v11

    const/16 v11, 0x75

    if-ne v9, v11, :cond_28

    add-int/lit8 v0, v0, 0x2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :goto_4
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v0, v9

    const/16 v11, 0x75

    if-eq v0, v11, :cond_27

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v0

    if-gt v0, v14, :cond_26

    if-ltz v0, :cond_26

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v11, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v9, v9, v11

    invoke-static {v9}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v9

    if-gt v9, v14, :cond_26

    if-ltz v9, :cond_26

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v3, v12, 0x1

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v3, v11, v12

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v3

    if-gt v3, v14, :cond_26

    if-ltz v3, :cond_26

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v15, v12, 0x1

    iput v15, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v11, v11, v12

    invoke-static {v11}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v11

    if-gt v11, v14, :cond_26

    if-ltz v11, :cond_26

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v11

    int-to-char v0, v0

    iput-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto :goto_5

    :cond_26
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/16 v3, 0x21

    goto :goto_4

    :cond_28
    :goto_5
    iget-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v0, v13, :cond_29

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v0, v3

    if-ne v0, v13, :cond_29

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_29
    move v0, v2

    :cond_2a
    :goto_6
    iget-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v3, v10, :cond_2f

    const/16 v9, 0xa

    if-ne v3, v9, :cond_2b

    goto/16 :goto_9

    :cond_2b
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lastCommentLinePosition:I

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v9, v0, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v11, v3, v0

    iput-char v11, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v11, v13, :cond_2e

    aget-char v3, v3, v9

    const/16 v9, 0x75

    if-ne v3, v9, :cond_2e

    add-int/lit8 v0, v0, 0x2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :goto_7
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v0, v3

    const/16 v9, 0x75

    if-eq v0, v9, :cond_2d

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v0

    if-gt v0, v14, :cond_2c

    if-ltz v0, :cond_2c

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v3, v3, v9

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v3

    if-gt v3, v14, :cond_2c

    if-ltz v3, :cond_2c

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v11, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v9, v9, v11

    invoke-static {v9}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v9

    if-gt v9, v14, :cond_2c

    if-ltz v9, :cond_2c

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v15, v12, 0x1

    iput v15, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v11, v11, v12

    invoke-static {v11}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v11

    if-gt v11, v14, :cond_2c

    if-ltz v11, :cond_2c

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v11

    int-to-char v0, v0

    iput-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    move v0, v7

    goto :goto_8

    :cond_2c
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_7

    :cond_2e
    move v0, v2

    :goto_8
    iget-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v3, v13, :cond_2a

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v3, v3, v9

    if-ne v3, v13, :cond_2a

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto/16 :goto_6

    :cond_2f
    :goto_9
    if-ne v3, v10, :cond_37

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-le v3, v9, :cond_37

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    aget-char v11, v3, v9

    const/16 v12, 0xa

    if-ne v11, v12, :cond_30

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput-char v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    goto/16 :goto_c

    :cond_30
    if-ne v11, v13, :cond_37

    add-int/lit8 v11, v9, 0x1

    aget-char v3, v3, v11

    const/16 v11, 0x75

    if-ne v3, v11, :cond_37

    add-int/lit8 v9, v9, 0x2

    :goto_a
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    aget-char v0, v0, v9

    if-eq v0, v11, :cond_36

    add-int/lit8 v3, v9, 0x1

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v0

    if-gt v0, v14, :cond_35

    if-ltz v0, :cond_35

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v12, v9, 0x2

    aget-char v3, v11, v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v3

    if-gt v3, v14, :cond_34

    if-ltz v3, :cond_34

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v13, v9, 0x3

    aget-char v11, v11, v12

    invoke-static {v11}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v11

    if-gt v11, v14, :cond_33

    if-ltz v11, :cond_33

    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v9, v9, 0x4

    aget-char v12, v12, v13

    invoke-static {v12}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v12

    if-gt v12, v14, :cond_32

    if-ltz v12, :cond_32

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v11

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v12

    int-to-char v0, v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_31

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    :cond_31
    move v0, v7

    goto :goto_c

    :cond_32
    move v3, v9

    goto :goto_b

    :cond_33
    move v3, v13

    goto :goto_b

    :cond_34
    move v3, v12

    :cond_35
    :goto_b
    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    add-int/lit8 v9, v9, 0x1

    const/16 v11, 0x75

    goto :goto_a

    :cond_37
    :goto_c
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordComment(I)V

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v5, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    if-gt v3, v5, :cond_39

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v9, v7

    if-lt v5, v9, :cond_38

    goto :goto_d

    :cond_38
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/InvalidCursorLocation;

    const-string v3, "No Completion Inside Comment"

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/codeassist/complete/InvalidCursorLocation;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    :goto_d
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskTags:[[C

    if-eqz v5, :cond_3a

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {v1, v3, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkTaskTag(II)V

    :cond_3a
    iget-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v3, v10, :cond_3b

    const/16 v5, 0xa

    if-ne v3, v5, :cond_3d

    :cond_3b
    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v3, :cond_3d

    if-eqz v0, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushUnicodeLineSeparator()V

    goto :goto_e

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushLineSeparator()V

    :cond_3d
    :goto_e
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeComments:Z
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v0, :cond_4e

    return v6

    :catch_1
    :try_start_6
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v0, v7

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordComment(I)V

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskTags:[[C

    if-eqz v0, :cond_3e

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkTaskTag(II)V

    :cond_3e
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeComments:Z

    if-eqz v0, :cond_3f

    return v6

    :cond_3f
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/2addr v0, v7

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_16

    :cond_40
    if-lez v0, :cond_56

    :try_start_7
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v3, v13, :cond_41

    aget-char v0, v0, v5

    const/16 v3, 0x75

    if-ne v0, v3, :cond_41

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->getNextUnicodeChar()V

    move v0, v7

    goto :goto_f

    :cond_41
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_42

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_42
    move v0, v2

    :goto_f
    iget-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v5, 0x2a

    if-ne v3, v5, :cond_43

    move v5, v7

    :goto_10
    move v6, v5

    goto :goto_11

    :cond_43
    move v5, v2

    goto :goto_10

    :goto_11
    if-eq v3, v10, :cond_44

    const/16 v9, 0xa

    if-ne v3, v9, :cond_45

    :cond_44
    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v3, :cond_45

    if-nez v0, :cond_45

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushLineSeparator()V

    :cond_45
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v9, v0, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v12, v3, v0

    iput-char v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v12, v13, :cond_46

    aget-char v3, v3, v9

    const/16 v9, 0x75

    if-ne v3, v9, :cond_46

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->getNextUnicodeChar()V

    move v3, v7

    goto :goto_12

    :cond_46
    move v3, v2

    :goto_12
    iget-char v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v9, v13, :cond_47

    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v12, v12, v14

    if-ne v12, v13, :cond_47

    add-int/lit8 v14, v14, 0x1

    iput v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_47
    const/16 v12, 0x2f

    if-ne v9, v12, :cond_48

    move v5, v2

    :cond_48
    move v9, v2

    :cond_49
    :goto_13
    iget-char v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v14, 0x2f

    if-ne v12, v14, :cond_4f

    if-eqz v6, :cond_4f

    if-eqz v5, :cond_4a

    const/16 v0, 0x3eb

    goto :goto_14

    :cond_4a
    const/16 v0, 0x3ea

    :goto_14
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordComment(I)V

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentTagStarts:[I

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    aput v9, v3, v6

    if-nez v5, :cond_4c

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v5, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    if-gt v3, v5, :cond_4c

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v3, v7

    if-lt v5, v3, :cond_4b

    goto :goto_15

    :cond_4b
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/InvalidCursorLocation;

    const-string v2, "No Completion Inside Comment"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/InvalidCursorLocation;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    :goto_15
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskTags:[[C

    if-eqz v3, :cond_4d

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {v1, v3, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkTaskTag(II)V

    :cond_4d
    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeComments:Z

    if-eqz v3, :cond_4e

    return v0

    :cond_4e
    :goto_16
    move v0, v8

    const/16 v3, 0x21

    goto/16 :goto_0

    :cond_4f
    if-eq v12, v10, :cond_50

    const/16 v6, 0xa

    if-ne v12, v6, :cond_51

    :cond_50
    iget-boolean v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v6, :cond_51

    if-nez v3, :cond_51

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->pushLineSeparator()V

    :cond_51
    iget-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    const/16 v6, 0x2a

    if-eq v3, v6, :cond_54

    if-eq v3, v11, :cond_52

    goto :goto_17

    :cond_52
    if-nez v9, :cond_53

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->isFirstTag()Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_18

    :cond_53
    :goto_17
    move v0, v9

    :goto_18
    move v9, v0

    move v6, v2

    goto :goto_19

    :cond_54
    move v6, v7

    :goto_19
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v12, v0, 0x1

    iput v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v14, v3, v0

    iput-char v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v14, v13, :cond_55

    aget-char v3, v3, v12

    const/16 v12, 0x75

    if-ne v3, v12, :cond_55

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->getNextUnicodeChar()V

    move v3, v7

    goto :goto_1a

    :cond_55
    move v3, v2

    :goto_1a
    iget-char v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v12, v13, :cond_49

    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v12, v12, v14

    if-ne v12, v13, :cond_49

    add-int/lit8 v14, v14, 0x1

    iput v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_13

    :catch_2
    :try_start_8
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v0, v7

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Unterminated_Comment"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_57

    const/16 v0, 0x5a

    return v0

    :cond_57
    const/16 v2, 0xa

    return v2

    :pswitch_c
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v3, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    if-gt v2, v3, :cond_58

    if-ge v3, v0, :cond_58

    return v7

    :cond_58
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsDigit()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->scanNumber(Z)I

    move-result v0

    return v0

    :cond_59
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {v1, v12}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v1, v12}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_5a

    const/16 v0, 0x7a

    return v0

    :cond_5a
    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v7

    :cond_5b
    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v7

    :pswitch_d
    const/16 v0, 0x2d

    invoke-virtual {v1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_5c

    return v15

    :cond_5c
    if-lez v0, :cond_5d

    const/16 v0, 0x58

    return v0

    :cond_5d
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_5e

    const/16 v0, 0x62

    return v0

    :cond_5e
    const/4 v0, 0x5

    return v0

    :pswitch_e
    const/16 v0, 0x20

    return v0

    :pswitch_f
    const/16 v0, 0x2b

    invoke-virtual {v1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_5f

    const/4 v2, 0x2

    return v2

    :cond_5f
    if-lez v0, :cond_60

    const/16 v0, 0x57

    return v0

    :cond_60
    const/4 v0, 0x4

    return v0

    :pswitch_10
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_61

    const/16 v0, 0x59

    return v0

    :cond_61
    const/16 v0, 0x8

    return v0

    :pswitch_11
    const/16 v0, 0x19

    return v0

    :pswitch_12
    const/16 v0, 0x17

    return v0

    :pswitch_13
    move v0, v15

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v5
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    const-string v3, "Invalid_Character_Constant"

    if-eqz v5, :cond_71

    const/16 v6, 0x27

    if-lez v5, :cond_64

    :goto_1b
    if-ge v2, v0, :cond_63

    :try_start_9
    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int v9, v5, v2

    iget v10, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-eq v9, v10, :cond_63

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int v10, v5, v2

    aget-char v10, v9, v10

    const/16 v11, 0xa

    if-eq v10, v11, :cond_63

    add-int v10, v5, v2

    aget-char v9, v9, v10

    if-eq v9, v6, :cond_62

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_62
    add-int/2addr v2, v7

    add-int/2addr v5, v2

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_63
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v5

    if-eqz v5, :cond_67

    :goto_1c
    if-ge v2, v0, :cond_66

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int v9, v5, v2

    iget v10, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-eq v9, v10, :cond_66

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int v10, v5, v2

    aget-char v10, v9, v10

    const/16 v11, 0xa

    if-eq v10, v11, :cond_66

    add-int v10, v5, v2

    aget-char v9, v9, v10

    if-eq v9, v6, :cond_65

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_65
    add-int/2addr v2, v7

    add-int/2addr v5, v2

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_66
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    invoke-virtual {v1, v13}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    if-eqz v0, :cond_69

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v9, v5, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v0, v5

    iput-char v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v5, v13, :cond_68

    aget-char v0, v0, v9

    const/16 v5, 0x75

    if-ne v0, v5, :cond_68

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->getNextUnicodeChar()V

    goto :goto_1d

    :cond_68
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_6a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    goto :goto_1d

    :cond_69
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v9, v5, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v0, v5

    iput-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    :cond_6a
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanEscapeCharacter()V

    goto :goto_1e

    :cond_6b
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6

    :try_start_a
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v9, v5, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v5, v0, v5

    iput-char v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v5, v13, :cond_6c

    aget-char v0, v0, v9
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3

    const/16 v5, 0x75

    if-ne v0, v5, :cond_6c

    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->getNextUnicodeChar()V

    goto :goto_1e

    :cond_6c
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_6d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_6d
    :goto_1e
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_6e

    const/16 v0, 0x2d

    return v0

    :cond_6e
    :goto_1f
    const/16 v0, 0x14

    if-ge v2, v0, :cond_70

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int v5, v0, v2

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-eq v5, v9, :cond_70

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int v9, v0, v2

    aget-char v9, v5, v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_70

    add-int v9, v0, v2

    aget-char v5, v5, v9

    if-eq v5, v6, :cond_6f

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_6f
    add-int/2addr v2, v7

    add-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_70
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v0, v7

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    const/16 v0, 0x26

    invoke-virtual {v1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(CC)I

    move-result v0

    if-nez v0, :cond_72

    const/16 v0, 0x1e

    return v0

    :cond_72
    if-lez v0, :cond_73

    const/16 v0, 0x5b

    return v0

    :cond_73
    const/16 v0, 0x15

    return v0

    :pswitch_15
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_74

    const/16 v0, 0x5e

    return v0

    :cond_74
    const/16 v0, 0x9

    return v0

    :cond_75
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_6

    if-eqz v0, :cond_76

    const/16 v0, 0x5d

    return v0

    :cond_76
    const/16 v0, 0x18

    return v0

    :cond_77
    const/16 v0, 0x42

    return v0

    :cond_78
    :try_start_c
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v5, v0, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v3, v0

    iput-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v0, v13, :cond_79

    aget-char v0, v3, v5

    const/16 v3, 0x75

    if-ne v0, v3, :cond_79

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->getNextUnicodeChar()V

    :goto_20
    move v0, v7

    goto :goto_22

    :catch_4
    move-exception v0

    goto/16 :goto_2b

    :cond_79
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_7a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_7a
    :goto_21
    move v0, v2

    :goto_22
    iget-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v3, v11, :cond_7b

    return v12

    :cond_7b
    const/16 v5, 0xa

    if-eq v3, v5, :cond_82

    if-ne v3, v10, :cond_7c

    goto/16 :goto_24

    :cond_7c
    if-ne v3, v13, :cond_80

    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    if-eqz v0, :cond_7d

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    sub-int/2addr v0, v7

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v3, v13, :cond_7f

    aget-char v0, v0, v5

    const/16 v3, 0x75

    if-ne v0, v3, :cond_7f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->getNextUnicodeChar()V

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    sub-int/2addr v0, v7

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    goto :goto_23

    :cond_7d
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-nez v0, :cond_7e

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeInitializeBuffer(I)V

    :cond_7e
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    sub-int/2addr v0, v7

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v0, v0, v3

    iput-char v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    :cond_7f
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanEscapeCharacter()V

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_80

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    :cond_80
    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeAsBackSlash:Z

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v3, v13, :cond_81

    aget-char v0, v0, v5

    const/16 v3, 0x75

    if-ne v0, v3, :cond_81

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->getNextUnicodeChar()V

    goto/16 :goto_20

    :cond_81
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->withoutUnicodePtr:I

    if-eqz v0, :cond_7a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->unicodeStore()V

    goto/16 :goto_21

    :cond_82
    :goto_24
    if-eqz v0, :cond_8a

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v0, v0, -0x5

    :goto_25
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    aget-char v3, v3, v0

    if-ne v3, v13, :cond_89

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v5, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    if-gt v3, v5, :cond_83

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v3, v7

    if-gt v5, v3, :cond_83

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    return v12

    :cond_83
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    move v3, v2

    :goto_26
    const/16 v5, 0x32

    if-ge v3, v5, :cond_8b

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ge v5, v6, :cond_88

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v9, v5, 0x1

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    aget-char v10, v6, v5

    iput-char v10, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-ne v10, v13, :cond_85

    aget-char v6, v6, v9

    const/16 v9, 0x75

    if-ne v6, v9, :cond_84

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->getNextUnicodeChar()V

    goto :goto_29

    :cond_84
    :goto_27
    const/16 v6, 0xa

    goto :goto_28

    :cond_85
    const/16 v9, 0x75

    goto :goto_27

    :goto_28
    if-eq v10, v6, :cond_87

    :goto_29
    iget-char v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    if-eq v5, v11, :cond_86

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_86
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v3, "Invalid_Char_In_String"

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_87
    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_2a

    :cond_88
    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    goto :goto_2a

    :cond_89
    const/16 v9, 0x75

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_8a
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v3, v0, -0x1

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v5, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    if-gt v3, v5, :cond_8b

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    if-gt v5, v0, :cond_8b

    return v12

    :cond_8b
    :goto_2a
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v3, "Invalid_Char_In_String"

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_c .. :try_end_c} :catch_4

    :goto_2b
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Invalid_Escape"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    :goto_2c
    const/16 v3, 0x32

    if-ge v2, v3, :cond_8d

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int v5, v3, v2

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-eq v5, v6, :cond_8d

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int v6, v3, v2

    aget-char v6, v5, v6

    const/16 v9, 0xa

    if-eq v6, v9, :cond_8d

    add-int v6, v3, v2

    aget-char v5, v5, v6

    if-eq v5, v11, :cond_8c

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_8c
    add-int/2addr v2, v7

    add-int/2addr v3, v2

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    :cond_8d
    throw v0

    :catch_5
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v0, v7

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v3, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    if-gt v2, v3, :cond_8e

    if-ge v3, v0, :cond_8e

    return v12

    :cond_8e
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Unterminated_String"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_90

    const/16 v0, 0x14

    return v0

    :cond_90
    const/16 v0, 0x3f

    return v0

    :cond_91
    const/4 v0, 0x6

    return v0

    :cond_92
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_93

    return v4

    :cond_93
    new-instance v0, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    const-string v2, "Ctrl-Z"

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_6

    :catch_6
    move v0, v8

    :catch_7
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    if-eqz v2, :cond_94

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_94

    sub-int/2addr v2, v7

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    const/16 v2, 0x3e8

    return v2

    :cond_94
    iget-object v0, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->completionIdentifier:[C

    if-nez v0, :cond_95

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v2, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    add-int/2addr v2, v7

    if-ne v0, v2, :cond_95

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v2, v7

    iput v2, v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->endOfEmptyToken:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    const/16 v2, 0x16

    return v2

    :cond_95
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getNextUnicodeChar()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextUnicodeChar()V

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    if-le v1, v0, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->unicodeCharSize:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->unicodeCharSize:I

    :cond_0
    if-ge v0, v1, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/InvalidCursorLocation;

    const-string v1, "No Completion Inside Unicode"

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/InvalidCursorLocation;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public isAtAssistIdentifier()Z
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ne v3, v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v0, 0x1

    if-lt v3, v1, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstTag()Z
    .locals 3

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x72

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x63

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x61

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x74

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final jumpOverBlock()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->jumpOverMethodBody()V

    return-void
.end method

.method public scanIdentifierOrKeyword()I
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanIdentifierOrKeyword()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    add-int/lit8 v3, v2, 0x1

    if-gt v1, v3, :cond_2

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-ge v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    if-ne v2, v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    array-length v1, v1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsJavaIdentifierPart()Z

    move-result v1

    if-nez v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    :cond_1
    const/16 v0, 0x16

    :cond_2
    return v0
.end method

.method public scanNumber(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanNumber(Z)I

    move-result p1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionScanner;->cursorLocation:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/InvalidCursorLocation;

    const-string v0, "No Completion Inside Number"

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/InvalidCursorLocation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return p1
.end method
