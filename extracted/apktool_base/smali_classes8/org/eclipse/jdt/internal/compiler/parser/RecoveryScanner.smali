.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;
.super Lorg/eclipse/jdt/internal/compiler/parser/Scanner;
.source "SourceFile"


# static fields
.field public static final FAKE_IDENTIFIER:[C


# instance fields
.field private data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

.field private fakeTokenSource:[C

.field private isInserted:Z

.field private pendingTokens:[I

.field private pendingTokensPtr:I

.field private precededByRemoved:Z

.field public record:Z

.field private skipNextInsertedTokens:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "$missing$"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->FAKE_IDENTIFIER:[C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V
    .locals 11

    .line 1
    iget-boolean v2, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    .line 2
    iget-boolean v3, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->checkNonExternalizedStringLiterals:Z

    .line 3
    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    .line 4
    iget-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    .line 5
    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskTags:[[C

    .line 6
    iget-object v9, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->taskPriorities:[[C

    .line 7
    iget-boolean v10, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->isTaskCaseSensitive:Z

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->pendingTokensPtr:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->isInserted:Z

    .line 11
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->precededByRemoved:Z

    .line 12
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->skipNextInsertedTokens:I

    .line 13
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    .line 14
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->setData(Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    return-void
.end method

.method public constructor <init>(ZZJJ[[C[[CZLorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V
    .locals 12

    move-object v11, p0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 15
    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    const/4 v0, -0x1

    .line 16
    iput v0, v11, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->pendingTokensPtr:I

    const/4 v1, 0x0

    .line 17
    iput-object v1, v11, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v11, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->isInserted:Z

    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v11, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->precededByRemoved:Z

    .line 20
    iput v0, v11, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->skipNextInsertedTokens:I

    .line 21
    iput-boolean v1, v11, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    move-object/from16 v0, p10

    .line 22
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->setData(Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    return-void
.end method

.method private reverse([I)[I
    .locals 6

    array-length v0, p1

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-object p1

    :cond_0
    aget v3, p1, v2

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    aget v5, p1, v4

    aput v5, p1, v2

    aput v3, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCurrentIdentifierSource()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTokenSource()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTokenSourceString()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSourceString()[C

    move-result-object v0

    return-object v0
.end method

.method public getData()Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    return-object v0
.end method

.method public getNextToken0()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->pendingTokensPtr:I

    const/16 v1, 0x16

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->pendingTokens:[I

    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->pendingTokensPtr:I

    aget v0, v2, v0

    if-ne v0, v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->FAKE_IDENTIFIER:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->precededByRemoved:Z

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokens:[[I

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    move v3, v0

    :goto_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPtr:I

    if-le v3, v6, :cond_2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->skipNextInsertedTokens:I

    goto :goto_3

    :cond_2
    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPosition:[I

    aget v6, v6, v3

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v8, v7, -0x1

    if-ne v6, v8, :cond_4

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->skipNextInsertedTokens:I

    if-le v3, v6, :cond_4

    iget-object v0, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokenUsed:[Z

    aput-boolean v4, v0, v3

    iget-object v0, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokens:[[I

    aget-object v0, v0, v3

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->pendingTokens:[I

    array-length v2, v0

    add-int/lit8 v5, v2, -0x1

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->isInserted:Z

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->skipNextInsertedTokens:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->pendingTokensPtr:I

    aget v0, v0, v5

    if-ne v0, v1, :cond_3

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->FAKE_IDENTIFIER:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    goto :goto_2

    :cond_3
    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    :goto_2
    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken0()I

    move-result v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokens:[[I

    if-eqz v5, :cond_9

    move v5, v0

    :goto_4
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensPtr:I

    if-le v5, v7, :cond_6

    goto :goto_6

    :cond_6
    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensStart:[I

    aget v7, v7, v5

    if-lt v7, v2, :cond_8

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-gt v7, v8, :cond_8

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensEnd:[I

    aget v7, v7, v5

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v8, v4

    if-lt v7, v8, :cond_8

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokenUsed:[Z

    aput-boolean v4, v2, v5

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokens:[[I

    aget-object v2, v2, v5

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->pendingTokens:[I

    array-length v3, v2

    add-int/lit8 v5, v3, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->pendingTokensPtr:I

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->FAKE_IDENTIFIER:[C

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->isInserted:Z

    add-int/2addr v7, v4

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v3, v3, -0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->pendingTokensPtr:I

    aget v0, v2, v5

    if-ne v0, v1, :cond_7

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    goto :goto_5

    :cond_7
    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    :goto_5
    return v0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    :goto_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensStart:[I

    if-eqz v1, :cond_c

    move v1, v0

    :goto_7
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensPtr:I

    if-le v1, v6, :cond_a

    goto :goto_8

    :cond_a
    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensStart:[I

    aget v6, v6, v1

    if-lt v6, v2, :cond_b

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    if-gt v6, v7, :cond_b

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensEnd:[I

    aget v6, v6, v1

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v7, v4

    if-lt v6, v7, :cond_b

    iget-object v2, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokenUsed:[Z

    aput-boolean v4, v2, v1

    add-int/2addr v6, v4

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->precededByRemoved:Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->getNextToken0()I

    move-result v0

    return v0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    return v3
.end method

.method public insertToken(III)V
    .locals 0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->insertTokens([III)V

    return-void
.end method

.method public insertTokenAhead(II)V
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokens:[[I

    aget-object v0, v0, p2

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v2, v3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokens:[[I

    aput-object v2, p1, p2

    return-void
.end method

.method public insertTokens([III)V
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->statements_recovery_filter:[C

    aget-char p2, v0, p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPtr:I

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokens:[[I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/16 v0, 0xa

    new-array v1, v0, [[I

    iput-object v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokens:[[I

    new-array v1, v0, [I

    iput-object v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPosition:[I

    new-array v0, v0, [Z

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokenUsed:[Z

    goto :goto_0

    :cond_2
    array-length v3, v1

    if-ne v3, v0, :cond_3

    array-length v0, v1

    mul-int/lit8 v3, v0, 0x2

    new-array v4, v3, [[I

    iput-object v4, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokens:[[I

    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPosition:[I

    new-array v4, v3, [I

    iput-object v4, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPosition:[I

    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokenUsed:[Z

    new-array v3, v3, [Z

    iput-object v3, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokenUsed:[Z

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokens:[[I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPtr:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->reverse([I)[I

    move-result-object p1

    aput-object p1, v0, p2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPosition:[I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokensPtr:I

    aput p3, p2, v0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->insertedTokenUsed:[Z

    aput-boolean v2, p1, v0

    return-void
.end method

.method public isFakeToken()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInsertedToken()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->isInserted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPrecededByRemovedToken()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->precededByRemoved:Z

    return v0
.end method

.method public isReplacedToken()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->fakeTokenSource:[C

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->isInserted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeTokens(II)V
    .locals 6

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensPtr:I

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensStart:[I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/16 v1, 0xa

    new-array v2, v1, [I

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensStart:[I

    new-array v2, v1, [I

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensEnd:[I

    new-array v1, v1, [Z

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokenUsed:[Z

    goto :goto_0

    :cond_1
    array-length v4, v2

    if-ne v4, v1, :cond_2

    array-length v1, v2

    mul-int/lit8 v4, v1, 0x2

    new-array v5, v4, [I

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensStart:[I

    invoke-static {v2, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensEnd:[I

    new-array v5, v4, [I

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensEnd:[I

    invoke-static {v2, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokenUsed:[Z

    new-array v4, v4, [Z

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokenUsed:[Z

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensStart:[I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensPtr:I

    aput p1, v1, v2

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokensEnd:[I

    aput p2, p1, v2

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removedTokenUsed:[Z

    aput-boolean v3, p1, v2

    return-void
.end method

.method public replaceTokens(III)V
    .locals 0

    .line 1
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens([III)V

    return-void
.end method

.method public replaceTokens([III)V
    .locals 6

    .line 2
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensPtr:I

    .line 4
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensStart:[I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/16 v1, 0xa

    .line 5
    new-array v2, v1, [[I

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokens:[[I

    .line 6
    new-array v2, v1, [I

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensStart:[I

    .line 7
    new-array v2, v1, [I

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensEnd:[I

    .line 8
    new-array v1, v1, [Z

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokenUsed:[Z

    goto :goto_0

    .line 9
    :cond_1
    array-length v4, v2

    if-ne v4, v1, :cond_2

    .line 10
    array-length v1, v2

    .line 11
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokens:[[I

    mul-int/lit8 v4, v1, 0x2

    new-array v5, v4, [[I

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokens:[[I

    invoke-static {v2, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensStart:[I

    new-array v5, v4, [I

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensStart:[I

    invoke-static {v2, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensEnd:[I

    new-array v5, v4, [I

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensEnd:[I

    invoke-static {v2, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokenUsed:[Z

    new-array v4, v4, [Z

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokenUsed:[Z

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokens:[[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensPtr:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->reverse([I)[I

    move-result-object p1

    aput-object p1, v1, v0

    .line 16
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensStart:[I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensPtr:I

    aput p2, v0, v1

    .line 17
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokensEnd:[I

    aput p3, p2, v1

    .line 18
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->replacedTokenUsed:[Z

    aput-boolean v3, p1, v1

    return-void
.end method

.method public setData(Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->data:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    :goto_0
    return-void
.end method

.method public setPendingTokens([I)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->pendingTokens:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->pendingTokensPtr:I

    return-void
.end method
