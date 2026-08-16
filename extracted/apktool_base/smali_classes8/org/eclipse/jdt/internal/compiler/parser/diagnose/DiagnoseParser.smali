.class public Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/parser/ParserBasicInformation;
.implements Lorg/eclipse/jdt/internal/compiler/parser/TerminalTokens;
.implements Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;,
        Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;,
        Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;,
        Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;
    }
.end annotation


# static fields
.field private static final BEFORE_CODE:I = 0x2

.field private static final BUFF_SIZE:I = 0x20

.field private static final BUFF_UBOUND:I = 0x1f

.field private static final DEBUG:Z = false

.field private static final DELETION_CODE:I = 0x6

.field private static final EOF_CODE:I = 0xb

.field private static final INSERTION_CODE:I = 0x3

.field private static final INVALID_CODE:I = 0x4

.field private static final MAX_DISTANCE:I = 0x1e

.field private static final MERGE_CODE:I = 0x7

.field private static final MIN_DISTANCE:I = 0x3

.field private static final MISPLACED_CODE:I = 0x8

.field private static final NIL:I = -0x1

.field private static final SCOPE_CODE:I = 0x9

.field private static final SECONDARY_CODE:I = 0xa

.field private static final STACK_INCREMENT:I = 0x100

.field private static final SUBSTITUTION_CODE:I = 0x5


# instance fields
.field private DEBUG_PARSECHECK:Z

.field buffer:[I

.field private currentToken:I

.field private errorToken:I

.field private errorTokenStart:I

.field private lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

.field list:[I

.field private locationStack:[I

.field private locationStartStack:[I

.field private nextStack:[I

.field private nextStackTop:I

.field private options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

.field private parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

.field private prevStack:[I

.field private prevStackTop:I

.field private recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

.field private reportProblem:Z

.field private scopeIndex:[I

.field private scopePosition:[I

.field private scopeStackTop:I

.field private stack:[I

.field private stackLength:I

.field statePool:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;

.field statePoolTop:I

.field stateSeen:[I

.field private stateStackTop:I

.field private tempStack:[I

.field private tempStackTop:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;IIILorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V
    .locals 9

    .line 1
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_INT_ARRAY:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v7

    move-object v6, v7

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;III[I[I[ILorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;III[I[I[ILorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->DEBUG_PARSECHECK:Z

    .line 4
    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->currentToken:I

    const/16 v2, 0x20f

    .line 5
    new-array v2, v2, [I

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->list:[I

    const/16 v2, 0x20

    .line 6
    new-array v2, v2, [I

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    .line 7
    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-object/from16 v2, p8

    .line 8
    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    .line 9
    new-instance v11, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/16 v3, 0x20

    move-object v2, v11

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move v8, p2

    move v9, p3

    move/from16 v10, p4

    invoke-direct/range {v2 .. v10}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;-><init>(ILorg/eclipse/jdt/internal/compiler/parser/Scanner;[I[I[IIII)V

    iput-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    .line 10
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    return-void
.end method

.method private checkPrimaryDistance([IILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;
    .locals 10

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->copy()Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeTrial([IILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iget v2, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    if-le v1, v2, :cond_0

    move-object p3, v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v1, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    aget v2, v0, v1

    const/16 v3, 0xa

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v2

    if-eqz v0, :cond_2

    aget v0, p1, p2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->mergeCandidate(II)I

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parseCheck([IIII)I

    move-result v1

    iget v2, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    if-gt v1, v2, :cond_1

    if-ne v1, v2, :cond_2

    iget v2, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    if-ge v2, v3, :cond_2

    :cond_1
    iput v3, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    iput v0, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    iput v1, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    const/4 v0, 0x7

    iput v0, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v2, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v0

    iget v1, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parseCheck([IIII)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v4, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v1

    const/16 v2, 0x3d

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v6, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->afterEol(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    iget v5, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    if-gt v0, v5, :cond_4

    if-ne v0, v5, :cond_5

    iget v5, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    if-le v1, v5, :cond_5

    :cond_4
    iput v1, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    const/4 v1, 0x6

    iput v1, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    iput v0, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    :cond_5
    aget v0, p1, p2

    add-int/lit8 v1, p2, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v6, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    aget v5, v5, v6

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v7, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v5

    move v6, p2

    :goto_1
    const/16 v7, 0x363

    if-le v5, v7, :cond_1a

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->asi(I)I

    move-result v1

    move v5, v4

    :goto_2
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->asr:[C

    aget-char v6, v6, v1

    const/16 v7, 0x81

    if-nez v6, :cond_17

    aget v1, p1, p2

    if-eq v1, v0, :cond_9

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->asi(I)I

    move-result v0

    :goto_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->asr:[C

    aget-char v1, v1, v0

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    if-eq v1, v2, :cond_8

    if-eq v1, v7, :cond_8

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->list:[I

    aget v8, v6, v1

    if-nez v8, :cond_8

    if-nez v5, :cond_7

    aput v1, v6, v1

    goto :goto_4

    :cond_7
    aget v8, v6, v5

    aput v8, v6, v1

    aput v1, v6, v5

    :goto_4
    move v5, v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->list:[I

    aget v8, v0, v5

    aput v4, v0, v5

    move v0, v8

    :goto_6
    const/4 v1, 0x3

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v5, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    aget v0, v0, v5

    if-eqz v0, :cond_e

    :goto_7
    if-nez v8, :cond_a

    goto :goto_a

    :cond_a
    if-ne v8, v2, :cond_b

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v6, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->afterEol(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v5, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    aget v0, v0, v5

    invoke-direct {p0, v8, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->misspell(II)I

    move-result v0

    :goto_8
    iget v5, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, p1, p2, v8, v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parseCheck([IIII)I

    move-result v5

    iget v6, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    const/4 v7, 0x5

    if-le v5, v6, :cond_c

    iput v0, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    iput v5, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iput v8, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    iput v7, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    goto :goto_9

    :cond_c
    if-ne v5, v6, :cond_d

    iget v5, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    if-le v0, v5, :cond_d

    iput v0, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    iput v8, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    iput v7, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    :cond_d
    :goto_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->list:[I

    aget v5, v0, v8

    aput v4, v0, v8

    move v8, v5

    goto :goto_7

    :cond_e
    :goto_a
    aget v0, p1, p2

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nasi(I)I

    move-result v0

    :goto_b
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nasr:[C

    aget-char v2, v2, v0

    if-nez v2, :cond_f

    return-object p3

    :cond_f
    add-int/lit16 v2, v2, 0x81

    iget v3, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parseCheck([IIII)I

    move-result v3

    iget v5, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    const/4 v6, 0x4

    if-le v3, v5, :cond_10

    iput v4, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    iput v3, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iput v2, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    iput v6, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    :cond_10
    iget v3, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parseCheck([IIII)I

    move-result v3

    iget v5, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    if-gt v3, v5, :cond_11

    if-ne v3, v5, :cond_12

    iget v5, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    if-ne v5, v6, :cond_12

    :cond_11
    iput v4, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    iput v3, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iput v2, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    iput v1, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_13
    if-ne v0, v2, :cond_14

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v7, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->afterEol(I)Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v3

    goto :goto_c

    :cond_14
    move v5, v4

    :goto_c
    iget v6, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    invoke-direct {p0, p1, p2, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parseCheck([IIII)I

    move-result v6

    iget v7, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    if-le v6, v7, :cond_15

    iput v5, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    iput v6, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iput v0, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    iput v1, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    goto :goto_d

    :cond_15
    if-ne v6, v7, :cond_16

    iget v7, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    if-le v5, v7, :cond_16

    iput v5, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    iput v6, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iput v0, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    iput v1, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    :cond_16
    :goto_d
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->list:[I

    aget v0, v1, v0

    goto/16 :goto_6

    :cond_17
    if-eq v6, v2, :cond_19

    if-eq v6, v7, :cond_19

    if-nez v5, :cond_18

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->list:[I

    aput v6, v5, v6

    goto :goto_e

    :cond_18
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->list:[I

    aget v8, v7, v5

    aput v8, v7, v6

    aput v6, v7, v5

    :goto_e
    move v5, v6

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_1a
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v8, v8, v5

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v0, v8

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v5, v8, v5

    if-le v0, v6, :cond_1b

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aget v0, v8, v0

    goto :goto_f

    :cond_1b
    aget v0, p1, v0

    :goto_f
    invoke-static {v0, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v5

    if-le v5, v7, :cond_1a

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    if-ge v6, v0, :cond_1c

    goto :goto_10

    :cond_1c
    move v6, v0

    :goto_10
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    add-int/lit8 v0, v0, 0x1

    aput v5, v7, v0

    invoke-static {v5, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v0

    move v9, v5

    move v5, v0

    move v0, v9

    goto/16 :goto_1
.end method

.method private static displayEscapeCharacters([CII)[C
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_2

    :goto_1
    if-lt p1, p2, :cond_1

    :goto_2
    array-length p1, p0

    if-lt p2, p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_0
    aget-char p1, p0, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_1
    aget-char v1, p0, p1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->appendEscapedChar(Ljava/lang/StringBuffer;CZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    aget-char v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private errorRecovery(IZ)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;
    .locals 6

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->errorToken:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->errorTokenStart:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previous(I)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    const/16 v1, 0x31

    aget-char p2, p2, v1

    const/4 v3, 0x3

    invoke-direct {p0, v3, p2, v0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIII)V

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;-><init>()V

    iput v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->location:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    if-le v2, v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    aput p1, v1, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result p1

    aput p1, v1, v0

    return-object p2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    aget v1, v1, v2

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->primaryPhase(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;

    move-result-object p2

    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    if-eqz v3, :cond_2

    return-object p2

    :cond_2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->secondaryPhase(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;

    move-result-object p2

    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    if-eqz v3, :cond_3

    return-object p2

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_4

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    aget-char v1, v1, v4

    const/16 v3, 0xb

    invoke-direct {p0, v3, v1, v0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIII)V

    iput v2, p2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->location:I

    return-object p2

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    const/16 v5, 0x1f

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v0

    if-ne v0, v4, :cond_6

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v0

    if-eq v0, v4, :cond_5

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    aget-char v0, v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v1, v1, v5

    const/4 v3, 0x6

    invoke-direct {p0, v3, v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIII)V

    iput v2, p2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget p1, p1, v5

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->location:I

    return-object p2

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    const/16 v0, 0x1d

    aget p2, p2, v0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->secondaryPhase(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;

    move-result-object p2

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    if-eqz v0, :cond_4

    return-object p2
.end method

.method private getNTermTemplate(I)[I
    .locals 5

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recovery_templates_index:[C

    aget-char p1, v0, p1

    if-lez p1, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recovery_templates:[C

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recovery_templates:[C

    aget-char v3, v3, p1

    if-nez v3, :cond_0

    new-array p1, v2, [I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    add-int/lit8 v4, v2, 0x1

    aput v3, v0, v2

    add-int/lit8 p1, p1, 0x1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getNtermIndex(III)I
    .locals 3

    add-int/lit16 p2, p2, -0x81

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    add-int/lit8 p3, p3, 0x1

    aget p3, v2, p3

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    const/4 p3, 0x0

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aput p1, v1, p3

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result p1

    const/16 p3, 0x363

    if-le p1, p3, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/lit8 v2, v2, 0x1

    aput p1, v1, v2

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result p1

    :cond_0
    :goto_0
    if-le p1, p3, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    aget-char p1, p1, p2

    return p1

    :cond_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v2, v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    if-gez v1, :cond_2

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    aget-char p1, p1, p2

    return p1

    :cond_2
    if-nez v1, :cond_3

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char p2, p2, p1

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aget v1, v2, v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char p1, v2, p1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result p1

    if-le p1, p3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/lit8 v2, v2, 0x1

    aput p1, v1, v2

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result p1

    goto :goto_0
.end method

.method private getTermIndex([IIII)I
    .locals 6

    aget v0, p1, p2

    add-int/lit8 v1, p2, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    invoke-static {v0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v0

    :goto_0
    const/16 v1, 0x363

    if-le v0, v1, :cond_7

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v4, v4, p4

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    add-int/lit8 p4, p4, 0x1

    aget p4, v5, p4

    invoke-virtual {v4, p4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    const/16 p4, 0x4246

    if-le v0, p4, :cond_0

    add-int/lit16 v0, v0, -0x4246

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/lit8 v4, v4, 0x1

    aput v0, p4, v4

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v0

    :goto_1
    const/16 v4, 0x81

    if-le v0, v1, :cond_2

    if-le p3, v4, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    sub-int/2addr p3, v4

    aget-char p1, p1, p3

    goto :goto_2

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    aget-char p1, p1, p3

    :goto_2
    return p1

    :cond_2
    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v5, v5, v0

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr p4, v5

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    if-ge p4, v2, :cond_4

    if-le p3, v4, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    sub-int/2addr p3, v4

    aget-char p1, p1, p3

    goto :goto_3

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    aget-char p1, p1, p3

    :goto_3
    return p1

    :cond_4
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v0, v5, v0

    if-ne p4, v2, :cond_5

    add-int/lit16 p3, v0, 0x81

    :cond_5
    if-le p4, p2, :cond_6

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aget p4, v5, p4

    goto :goto_4

    :cond_6
    aget p4, p1, p4

    :goto_4
    invoke-static {p4, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/lit8 v4, v4, 0x1

    aput v0, p4, v4

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v0

    goto :goto_1

    :cond_7
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v3, v3, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v0, v3, v0

    if-le v2, p2, :cond_8

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aget v2, v3, v2

    goto :goto_5

    :cond_8
    aget v2, p1, v2

    :goto_5
    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v0

    if-le v0, v1, :cond_7

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    if-ge p2, v1, :cond_9

    goto :goto_6

    :cond_9
    move p2, v1

    :goto_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    add-int/lit8 v1, v1, 0x1

    aput v0, v2, v1

    invoke-static {v0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v0

    goto/16 :goto_0
.end method

.method private mergeCandidate(II)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->name(I)[C

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    add-int/lit8 p2, p2, 0x1

    aget p2, v2, p2

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->name(I)[C

    move-result-object p2

    array-length v1, v0

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p2

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->asi(I)I

    move-result p1

    :goto_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->asr:[C

    aget-char v0, v0, p1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->asr:[C

    aget-char v3, v3, p1

    aget-char v0, v0, v3

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->name:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_1

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->name:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p2, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->asr:[C

    aget-char p1, p2, p1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private misplacementRecovery([IIILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;Z)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    add-int/lit8 p2, p2, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gez p2, :cond_0

    return-object p4

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    aget v3, v3, p2

    if-ge v3, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v4, v4, v1

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v0

    const/4 v4, 0x3

    invoke-direct {p0, p1, p2, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parseCheck([IIII)I

    move-result v0

    const/16 v5, 0x1e

    if-ne v0, v5, :cond_2

    move v0, p3

    :cond_2
    if-le v0, v4, :cond_3

    sub-int v4, v0, v2

    iget v5, p4, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    iget v6, p4, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_3

    iput p2, p4, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->stackPosition:I

    iput v0, p4, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    iput v2, p4, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    iput-boolean p5, p4, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->recoveryOnNextStack:Z

    :cond_3
    add-int/lit8 p2, p2, -0x1

    move v0, v3

    goto :goto_0
.end method

.method private misspell(II)I
    .locals 13

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->name:[Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    aget-char p1, v1, p1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_18

    aput-char v2, v1, v0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->name(I)[C

    move-result-object v4

    array-length v5, v4

    const/16 p1, 0x29

    if-ge v5, p1, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, p1

    :goto_1
    add-int/lit8 p1, v6, 0x1

    new-array v7, p1, [C

    move p1, v2

    :goto_2
    if-lt p1, v6, :cond_17

    aput-char v2, v7, v6

    const/4 p1, 0x1

    if-ne v0, p1, :cond_9

    if-ne v6, p1, :cond_9

    aget-char p2, v1, v2

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    if-ne p2, v4, :cond_1

    aget-char v8, v7, v2

    if-eq v8, v3, :cond_8

    :cond_1
    if-ne p2, v3, :cond_2

    aget-char v8, v7, v2

    if-eq v8, v4, :cond_8

    :cond_2
    const/16 v8, 0x3a

    if-ne p2, v4, :cond_3

    aget-char v9, v7, v2

    if-eq v9, v8, :cond_8

    :cond_3
    if-ne p2, v8, :cond_4

    aget-char v8, v7, v2

    if-eq v8, v4, :cond_8

    :cond_4
    const/16 v4, 0x2e

    if-ne p2, v4, :cond_5

    aget-char v8, v7, v2

    if-eq v8, v3, :cond_8

    :cond_5
    if-ne p2, v3, :cond_6

    aget-char v3, v7, v2

    if-eq v3, v4, :cond_8

    :cond_6
    const/16 v3, 0x22

    const/16 v4, 0x27

    if-ne p2, v4, :cond_7

    aget-char v8, v7, v2

    if-eq v8, v3, :cond_8

    :cond_7
    if-ne p2, v3, :cond_9

    aget-char p2, v7, v2

    if-ne p2, v4, :cond_9

    :cond_8
    const/4 p1, 0x3

    return p1

    :cond_9
    move p2, v2

    move v3, p2

    move v4, v3

    move v8, v4

    :cond_a
    :goto_3
    if-ge v2, v0, :cond_11

    if-lt p2, v6, :cond_b

    goto :goto_6

    :cond_b
    aget-char v9, v1, v2

    aget-char v10, v7, p2

    if-ne v9, v10, :cond_c

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    if-nez v3, :cond_a

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v11, v2, 0x1

    aget-char v12, v1, v11

    if-ne v12, v10, :cond_d

    add-int/lit8 v10, p2, 0x1

    aget-char v10, v7, v10

    if-ne v9, v10, :cond_d

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 p2, p2, 0x2

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_d
    add-int/lit8 v9, p2, 0x1

    aget-char v10, v7, v9

    if-ne v12, v10, :cond_e

    add-int/lit8 v3, v3, 0x1

    move p2, v9

    move v2, v11

    goto :goto_3

    :cond_e
    sub-int v10, v0, v2

    sub-int v12, v6, p2

    if-le v10, v12, :cond_f

    :goto_5
    move v2, v11

    goto :goto_4

    :cond_f
    if-le v12, v10, :cond_10

    move p2, v9

    goto :goto_4

    :cond_10
    move p2, v9

    goto :goto_5

    :cond_11
    :goto_6
    if-lt v2, v0, :cond_12

    if-ge p2, v6, :cond_13

    :cond_12
    add-int/lit8 v3, v3, 0x1

    :cond_13
    if-ge v0, v6, :cond_14

    move v6, v0

    :cond_14
    div-int/lit8 v6, v6, 0x6

    add-int/2addr v6, p1

    if-le v3, v6, :cond_15

    move v4, v8

    :cond_15
    mul-int/lit8 v4, v4, 0xa

    if-ge v0, v5, :cond_16

    move v0, v5

    :cond_16
    add-int/2addr v0, v3

    div-int/2addr v4, v0

    return v4

    :cond_17
    aget-char p2, v4, p1

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result p2

    aput-char p2, v7, p1

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    :cond_18
    aget-char v4, p1, v3

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->toLowerCase(C)C

    move-result v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private parseCheck([IIII)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    aget v3, p1, v1

    const/16 v4, 0x81

    const/4 v5, 0x0

    const-string v6, "]\tprocess_non_terminal\t"

    const-string v7, ") [max:"

    const-string v8, " ("

    const-string v9, "\t"

    const/16 v10, 0x363

    if-le v2, v4, :cond_7

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    iget-boolean v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->DEBUG_PARSECHECK:Z

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(I)V

    :cond_0
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v11, v11, p4

    invoke-virtual {v4, v11}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v4

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v12, v12, p4

    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->next(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    add-int/lit16 v2, v2, -0x81

    invoke-static {v3, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v3

    if-gt v3, v10, :cond_6

    :cond_1
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v11, v11, v3

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v2, v11

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    iget-boolean v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->DEBUG_PARSECHECK:Z

    if-eqz v11, :cond_2

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v2}, Ljava/io/PrintStream;->print(I)V

    invoke-virtual {v11, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    invoke-virtual {v11, v2}, Ljava/io/PrintStream;->print(I)V

    invoke-virtual {v11, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/io/PrintStream;->print(I)V

    invoke-virtual {v11, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/io/PrintStream;->print(I)V

    invoke-virtual {v11, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->name:[Ljava/lang/String;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v13, v13, v3

    aget-char v12, v12, v13

    aget-object v2, v2, v12

    invoke-virtual {v11, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/PrintStream;->println()V

    :cond_2
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rules_compliance:[J

    aget-wide v11, v2, v3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v13, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v2, v11, v13

    if-lez v2, :cond_3

    return v5

    :cond_3
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v2, v2, v3

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    if-le v3, v1, :cond_4

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aget v3, v11, v3

    goto :goto_0

    :cond_4
    aget v3, p1, v3

    :goto_0
    invoke-static {v3, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v3

    if-le v3, v10, :cond_1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    if-ge v1, v2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :cond_6
    :goto_1
    move/from16 v2, p4

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    iget-boolean v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->DEBUG_PARSECHECK:Z

    if-eqz v4, :cond_8

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(I)V

    :cond_8
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/lit8 v4, p4, -0x1

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v12, v12, p4

    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    :cond_9
    :goto_2
    iget-boolean v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->DEBUG_PARSECHECK:Z

    if-eqz v11, :cond_a

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(I)V

    const-string v12, " (+1) [max:"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/io/PrintStream;->print(I)V

    const-string v12, "]\tprocess_terminal    \t"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/io/PrintStream;->print(I)V

    invoke-virtual {v11, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->name:[Ljava/lang/String;

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    aget-char v13, v13, v4

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/PrintStream;->println()V

    :cond_a
    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    if-lt v11, v12, :cond_b

    return v2

    :cond_b
    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aput v3, v12, v11

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v3

    if-gt v3, v10, :cond_c

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    iget-boolean v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->DEBUG_PARSECHECK:Z

    if-eqz v12, :cond_11

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->print(I)V

    const-string v11, " (-1) [max:"

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/io/PrintStream;->print(I)V

    const-string v11, "]\treduce"

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    goto :goto_4

    :cond_c
    const/16 v4, 0x1e

    const/16 v11, 0x4246

    const/16 v12, 0x4245

    if-lt v3, v12, :cond_f

    if-le v3, v11, :cond_d

    goto :goto_3

    :cond_d
    if-ne v3, v12, :cond_e

    return v4

    :cond_e
    return v2

    :cond_f
    :goto_3
    if-ne v2, v4, :cond_10

    return v2

    :cond_10
    add-int/lit8 v2, v2, 0x1

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v12, v12, v2

    invoke-virtual {v4, v12}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v4

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v13, v13, v2

    invoke-virtual {v12, v13}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->next(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    if-le v3, v11, :cond_16

    add-int/lit16 v3, v3, -0x4246

    iget-boolean v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->DEBUG_PARSECHECK:Z

    if-eqz v11, :cond_11

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(I)V

    const-string v12, "\tshift reduce"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/PrintStream;->println()V

    :cond_11
    :goto_4
    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v12, v12, v3

    add-int/lit8 v12, v12, -0x1

    sub-int/2addr v11, v12

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    iget-boolean v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->DEBUG_PARSECHECK:Z

    if-eqz v12, :cond_12

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->print(I)V

    invoke-virtual {v12, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v11, v11, v3

    add-int/lit8 v11, v11, -0x1

    neg-int v11, v11

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->print(I)V

    invoke-virtual {v12, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/io/PrintStream;->print(I)V

    invoke-virtual {v12, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/io/PrintStream;->print(I)V

    invoke-virtual {v12, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->name:[Ljava/lang/String;

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v14, v14, v3

    aget-char v13, v13, v14

    aget-object v11, v11, v13

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    :cond_12
    if-gt v3, v10, :cond_13

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rules_compliance:[J

    aget-wide v12, v11, v3

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v14, v11, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v11, v12, v14

    if-lez v11, :cond_13

    return v5

    :cond_13
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v3, v11, v3

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    if-le v11, v1, :cond_14

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aget v11, v12, v11

    goto :goto_5

    :cond_14
    aget v11, p1, v11

    :goto_5
    invoke-static {v11, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v3

    if-le v3, v10, :cond_11

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    if-ge v1, v11, :cond_15

    goto/16 :goto_2

    :cond_15
    move v1, v11

    goto/16 :goto_2

    :cond_16
    iget-boolean v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->DEBUG_PARSECHECK:Z

    if-eqz v11, :cond_9

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "\tshift"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private primaryDiagnosis(Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    add-int/lit8 v2, v1, -0x1

    aget v8, v0, v2

    aget v0, v0, v1

    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    const/16 v9, 0x9

    const/4 v10, 0x7

    const/4 v11, 0x5

    const/16 v12, 0x81

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eq v2, v15, :cond_7

    if-eq v2, v14, :cond_7

    if-eq v2, v13, :cond_6

    if-eq v2, v11, :cond_3

    if-eq v2, v10, :cond_2

    if-eq v2, v9, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    aget-char v1, v1, v12

    invoke-direct {v6, v2, v1, v0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIII)V

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeStackTop:I

    if-lt v5, v0, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_lhs:[C

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeIndex:[I

    aget v2, v2, v0

    aget-char v1, v1, v2

    add-int/2addr v1, v12

    iput v1, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopePosition:[I

    aget v0, v3, v0

    iput v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    neg-int v2, v2

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    aget v4, v4, v0

    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    aget v0, v5, v0

    iget v5, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    invoke-direct {v6, v0, v1, v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNtermIndex(III)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v3

    move v3, v4

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIIII)V

    goto/16 :goto_4

    :cond_1
    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeIndex:[I

    aget v0, v0, v5

    neg-int v2, v0

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopePosition:[I

    aget v4, v4, v5

    aget v3, v3, v4

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    sget-object v16, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_lhs:[C

    aget-char v0, v16, v0

    aget-char v16, v4, v0

    move-object/from16 v0, p0

    move v4, v8

    move/from16 v17, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIIII)V

    add-int/lit8 v5, v17, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    aget-char v1, v1, v3

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->next(I)I

    move-result v3

    invoke-direct {v6, v2, v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIII)V

    goto :goto_4

    :cond_3
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_4

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    aget-char v1, v1, v2

    goto :goto_1

    :cond_4
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    iget v4, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v6, v2, v3, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getTermIndex([IIII)I

    move-result v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    aget-char v2, v2, v3

    if-eq v1, v2, :cond_5

    iput v13, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    :cond_5
    :goto_1
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    invoke-direct {v6, v2, v1, v0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIII)V

    goto :goto_4

    :cond_6
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    aget v2, v2, v3

    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v6, v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNtermIndex(III)I

    move-result v1

    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    invoke-direct {v6, v2, v1, v0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIII)V

    goto :goto_4

    :cond_7
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    if-le v2, v12, :cond_8

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    aget v3, v3, v4

    invoke-direct {v6, v3, v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNtermIndex(III)I

    move-result v1

    goto :goto_2

    :cond_8
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    invoke-direct {v6, v3, v4, v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getTermIndex([IIII)I

    move-result v1

    :goto_2
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    if-ne v2, v14, :cond_9

    goto :goto_3

    :cond_9
    move v8, v0

    :goto_3
    invoke-direct {v6, v2, v1, v8, v8}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIII)V

    :goto_4
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;-><init>()V

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    if-eq v1, v15, :cond_c

    if-eq v1, v14, :cond_c

    if-eq v1, v13, :cond_b

    if-eq v1, v11, :cond_b

    if-eq v1, v10, :cond_a

    if-eq v1, v9, :cond_c

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    add-int/lit8 v3, v2, 0x1

    aget v3, v1, v3

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->location:I

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    add-int/2addr v3, v15

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    goto :goto_5

    :cond_a
    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    aget v3, v1, v2

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->location:I

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    add-int/2addr v2, v15

    aget v1, v1, v2

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    goto :goto_5

    :cond_b
    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    aget v3, v1, v2

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->location:I

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    goto :goto_5

    :cond_c
    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->symbol:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    aget v1, v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->location:I

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    :goto_5
    return-object v0
.end method

.method private primaryPhase(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;
    .locals 9

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;-><init>()V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;-><init>()V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aput p1, v5, v2

    move p1, v2

    :goto_1
    if-gtz p1, :cond_11

    const/4 v5, 0x1

    add-int/2addr v2, v5

    :goto_2
    const/16 p1, 0x20

    if-lt v2, p1, :cond_10

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    if-ltz p1, :cond_1

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    invoke-direct {p0, v2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->checkPrimaryDistance([IILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->copy()Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    move-result-object p1

    iput v3, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    invoke-direct {p0, v2, v6, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->checkPrimaryDistance([IILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    move-result-object p1

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    if-gt v2, v6, :cond_2

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    if-le v2, v6, :cond_3

    :cond_2
    move-object v0, p1

    :cond_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->prevStackTop:I

    if-ltz p1, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->copy()Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    move-result-object p1

    iput v5, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->prevStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->prevStackTop:I

    invoke-direct {p0, v2, v6, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->checkPrimaryDistance([IILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    move-result-object p1

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    if-gt v2, v6, :cond_4

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    if-le v2, v6, :cond_5

    :cond_4
    move-object v0, p1

    :cond_5
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    if-ltz p1, :cond_6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    invoke-direct {p0, v2, p1, v4, v6}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->secondaryCheck([IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object v1

    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    invoke-direct {p0, p1, v2, v3, v6}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->secondaryCheck([IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object v1

    :cond_7
    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    sub-int/2addr p1, v2

    add-int/lit8 v6, p1, 0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_8

    const/4 v7, 0x6

    if-eq v6, v7, :cond_8

    const/4 v7, 0x5

    if-eq v6, v7, :cond_8

    const/4 v7, 0x7

    if-ne v6, v7, :cond_9

    :cond_8
    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    :cond_9
    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    if-ge p1, v4, :cond_a

    return-object v1

    :cond_a
    if-ne v6, v4, :cond_b

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    add-int/lit8 v1, v2, -0x1

    aget p1, p1, v1

    if-nez p1, :cond_b

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    :cond_b
    const/4 p1, 0x0

    if-ne v2, v5, :cond_d

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->prevStackTop:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    :goto_3
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    if-le p1, v1, :cond_c

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->prevStack:[I

    aget v2, v2, p1

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_d
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    if-ltz v1, :cond_f

    if-lt v2, v4, :cond_f

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    :goto_4
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    if-le p1, v1, :cond_e

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v3, v2, v4

    aput v3, p1, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result v2

    aput v2, p1, v1

    goto :goto_5

    :cond_e
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    aget v2, v2, p1

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_f
    :goto_5
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->primaryDiagnosis(Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;

    move-result-object p1

    return-object p1

    :cond_10
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    add-int/lit8 v7, v2, -0x1

    aget v7, p1, v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->next(I)I

    move-result v6

    aput v6, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_11
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    add-int/lit8 v6, p1, -0x1

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    aget v8, v5, p1

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previous(I)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_1
.end method

.method private problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    return-object v0
.end method

.method private reallocateStacks()V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    add-int/lit16 v1, v0, 0x100

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    if-nez v0, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->prevStack:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeIndex:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopePosition:[I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->prevStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->prevStack:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeIndex:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeIndex:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopePosition:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopePosition:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method private reportError(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIIII)V

    return-void
.end method

.method private reportError(IIIII)V
    .locals 6

    if-le p3, p4, :cond_0

    move v3, p4

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    if-ge v3, p4, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportSecondaryError(IIIII)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportPrimaryError(IIII)V

    :goto_1
    return-void
.end method

.method private reportPrimaryError(IIII)V
    .locals 11

    if-ltz p2, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->readableName:[Ljava/lang/String;

    aget-object v0, v0, p2

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result v2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->end(I)I

    move-result v3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->name:[Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v5, p3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v5

    aget-char v1, v1, v5

    aget-object v6, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->name(I)[C

    move-result-object p3

    const/16 v0, 0x2e

    if-ne v4, v0, :cond_1

    array-length v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p3, v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->displayEscapeCharacters([CII)[C

    move-result-object p3

    :cond_1
    move-object v5, p3

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    const/4 v0, -0x1

    if-eqz p3, :cond_2

    if-ltz p2, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reverse_index:[I

    aget v1, v1, p2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->removeTokens(II)V

    :cond_3
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorNoSuggestion(III[CLjava/lang/String;)V

    goto/16 :goto_e

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    if-eqz p1, :cond_6

    if-le v1, v0, :cond_5

    invoke-virtual {p1, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens(III)V

    goto :goto_3

    :cond_5
    neg-int p1, v1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNTermTemplate(I)[I

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    invoke-virtual {p2, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens([III)V

    :cond_6
    :goto_3
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorReplaceToken(III[CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_1
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorUnexpectedEnd(II)V

    goto/16 :goto_e

    :pswitch_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    const/4 v1, 0x0

    if-eqz p3, :cond_7

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    array-length p3, p3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_suffix:[C

    neg-int v5, p2

    aget-char v4, v4, v5

    sub-int/2addr p3, v4

    new-array p3, p3, [I

    goto :goto_4

    :cond_7
    move-object p3, v1

    :goto_4
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_suffix:[C

    neg-int p2, p2

    aget-char p2, v4, p2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_5
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    aget-char v7, v7, p2

    if-nez v7, :cond_c

    if-lez v5, :cond_9

    new-array p2, v5, [I

    invoke-static {p3, v4, p2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p4, :cond_8

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reverse_index:[I

    aget p3, p3, p4

    neg-int v0, p3

    :cond_8
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    invoke-virtual {p3, p2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->insertTokens([III)V

    :cond_9
    if-eqz p4, :cond_b

    const/16 p2, 0x44

    if-ne v6, p2, :cond_a

    goto/16 :goto_e

    :cond_a
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p2, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->readableName:[Ljava/lang/String;

    aget-object p3, p3, p4

    invoke-virtual {p2, v2, v3, p1, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorInsertToComplete(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_b
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p2, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, v3, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorInsertToCompleteScope(IILjava/lang/String;)V

    goto/16 :goto_e

    :cond_c
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->readableName:[Ljava/lang/String;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    aget-char v8, v8, p2

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    add-int/lit8 v8, p2, 0x1

    aget-char v7, v7, v8

    if-eqz v7, :cond_d

    const/16 v7, 0x20

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_d
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reverse_index:[I

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    aget-char v7, v7, p2

    aget v6, v6, v7

    :goto_6
    if-eqz p3, :cond_13

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reverse_index:[I

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    aget-char p2, v9, p2

    aget p2, v7, p2

    if-le p2, v0, :cond_f

    array-length v7, p3

    if-ne v5, v7, :cond_e

    mul-int/lit8 v9, v7, 0x2

    new-array v9, v9, [I

    invoke-static {p3, v4, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v9

    :cond_e
    add-int/lit8 v7, v5, 0x1

    aput p2, p3, v5

    move v5, v7

    goto :goto_8

    :cond_f
    neg-int p2, p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNTermTemplate(I)[I

    move-result-object p2

    if-eqz p2, :cond_12

    move v7, v4

    :goto_7
    array-length v9, p2

    if-lt v7, v9, :cond_10

    goto :goto_8

    :cond_10
    array-length v9, p3

    if-ne v5, v9, :cond_11

    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [I

    invoke-static {p3, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v10

    :cond_11
    add-int/lit8 v9, v5, 0x1

    aget v10, p2, v7

    aput v10, p3, v5

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_7

    :cond_12
    move-object p3, v1

    move v5, v4

    :cond_13
    :goto_8
    move p2, v8

    goto/16 :goto_5

    :pswitch_3
    if-eqz p3, :cond_14

    invoke-virtual {p3, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->removeTokens(II)V

    :cond_14
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorMisplacedConstruct(II)V

    goto/16 :goto_e

    :pswitch_4
    if-eqz p3, :cond_16

    if-le v1, v0, :cond_15

    invoke-virtual {p3, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens(III)V

    goto :goto_9

    :cond_15
    neg-int p1, v1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNTermTemplate(I)[I

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    invoke-virtual {p2, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens([III)V

    :cond_16
    :goto_9
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorMergeTokens(IILjava/lang/String;)V

    goto/16 :goto_e

    :pswitch_5
    if-eqz p3, :cond_17

    invoke-virtual {p3, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->removeTokens(II)V

    :cond_17
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorDeleteToken(III[CLjava/lang/String;)V

    goto/16 :goto_e

    :pswitch_6
    if-eqz p3, :cond_19

    if-le v1, v0, :cond_18

    invoke-virtual {p3, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens(III)V

    goto :goto_a

    :cond_18
    neg-int p1, v1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNTermTemplate(I)[I

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    invoke-virtual {p2, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens([III)V

    :cond_19
    :goto_a
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorReplaceToken(III[CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    if-eqz p1, :cond_1a

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->removeTokens(II)V

    :cond_1a
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorReplaceToken(III[CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_1b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    if-eqz p1, :cond_1d

    if-le v1, v0, :cond_1c

    invoke-virtual {p1, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens(III)V

    goto :goto_b

    :cond_1c
    neg-int p1, v1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNTermTemplate(I)[I

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    invoke-virtual {p2, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens([III)V

    :cond_1d
    :goto_b
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorInvalidToken(III[CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :pswitch_8
    if-eqz p3, :cond_1f

    if-le v1, v0, :cond_1e

    invoke-virtual {p3, v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->insertToken(III)V

    goto :goto_c

    :cond_1e
    neg-int p1, v1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNTermTemplate(I)[I

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    invoke-virtual {p2, p1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->insertTokens([III)V

    :cond_1f
    :goto_c
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorInsertAfterToken(III[CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :pswitch_9
    if-eqz p3, :cond_21

    if-le v1, v0, :cond_20

    invoke-virtual {p3, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->insertToken(III)V

    goto :goto_d

    :cond_20
    neg-int p1, v1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNTermTemplate(I)[I

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    invoke-virtual {p2, p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->insertTokens([III)V

    :cond_21
    :goto_d
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorInsertBeforeToken(III[CLjava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reportSecondaryError(IIIII)V
    .locals 10

    if-ltz p2, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->readableName:[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->isInsideStream(I)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez p3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result p3

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result p3

    goto :goto_3

    :cond_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->errorToken:I

    if-ne p3, v1, :cond_3

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->errorTokenStart:I

    goto :goto_2

    :cond_3
    move v4, v2

    move v1, v3

    :goto_1
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    if-le v1, v5, :cond_1c

    move p3, v4

    :goto_2
    if-ne p3, v2, :cond_4

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result p3

    :cond_4
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v1, p4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->end(I)I

    move-result v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    if-eqz v4, :cond_5

    if-ltz p2, :cond_5

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reverse_index:[I

    aget v5, v5, p2

    goto :goto_4

    :cond_5
    move v5, v2

    :goto_4
    packed-switch p1, :pswitch_data_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->removeTokens(II)V

    :cond_6
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_1b

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorNoSuggestionForTokens(II)V

    goto/16 :goto_c

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    if-eqz p1, :cond_9

    if-le v5, v2, :cond_8

    invoke-virtual {p1, v5, p3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens(III)V

    goto :goto_5

    :cond_8
    neg-int p1, v5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNTermTemplate(I)[I

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    invoke-virtual {p2, p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens([III)V

    :cond_9
    :goto_5
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_1b

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p3, v1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorReplaceTokens(IILjava/lang/String;)V

    goto/16 :goto_c

    :pswitch_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {p1, p4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result p1

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    array-length p3, p3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_suffix:[C

    neg-int v5, p2

    aget-char v4, v4, v5

    sub-int/2addr p3, v4

    new-array p3, p3, [I

    goto :goto_6

    :cond_a
    move-object p3, v0

    :goto_6
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_suffix:[C

    neg-int p2, p2

    aget-char p2, v4, p2

    move v4, v3

    move v5, v4

    :goto_7
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    aget-char v6, v6, p2

    if-nez v6, :cond_f

    if-lez v4, :cond_c

    new-array p2, v4, [I

    invoke-static {p3, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p5, :cond_b

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reverse_index:[I

    aget p3, p3, p5

    neg-int v2, p3

    :cond_b
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    invoke-virtual {p3, p2, v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->insertTokens([III)V

    :cond_c
    if-eqz p5, :cond_e

    const/16 p2, 0x44

    if-ne v5, p2, :cond_d

    goto/16 :goto_c

    :cond_d
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p2, :cond_1b

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->readableName:[Ljava/lang/String;

    aget-object p4, p4, p5

    invoke-virtual {p2, p1, v1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorInsertToComplete(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_e
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p2, :cond_1b

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, v1, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorInsertToCompletePhrase(IILjava/lang/String;)V

    goto/16 :goto_c

    :cond_f
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->readableName:[Ljava/lang/String;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    aget-char v7, v7, p2

    aget-object v6, v6, v7

    invoke-virtual {p4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    add-int/lit8 v7, p2, 0x1

    aget-char v6, v6, v7

    if-eqz v6, :cond_10

    const/16 v6, 0x20

    invoke-virtual {p4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_10
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reverse_index:[I

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    aget-char v6, v6, p2

    aget v5, v5, v6

    :goto_8
    if-eqz p3, :cond_16

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reverse_index:[I

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    aget-char p2, v8, p2

    aget p2, v6, p2

    if-le p2, v2, :cond_12

    array-length v6, p3

    if-ne v4, v6, :cond_11

    mul-int/lit8 v8, v6, 0x2

    new-array v8, v8, [I

    invoke-static {p3, v3, v8, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v8

    :cond_11
    add-int/lit8 v6, v4, 0x1

    aput p2, p3, v4

    move v4, v6

    goto :goto_a

    :cond_12
    neg-int p2, p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNTermTemplate(I)[I

    move-result-object p2

    if-eqz p2, :cond_15

    move v6, v3

    :goto_9
    array-length v8, p2

    if-lt v6, v8, :cond_13

    goto :goto_a

    :cond_13
    array-length v8, p3

    if-ne v4, v8, :cond_14

    mul-int/lit8 v9, v8, 0x2

    new-array v9, v9, [I

    invoke-static {p3, v3, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v9

    :cond_14
    add-int/lit8 v8, v4, 0x1

    aget v9, p2, v6

    aput v9, p3, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v8

    goto :goto_9

    :cond_15
    move-object p3, v0

    move v4, v3

    :cond_16
    :goto_a
    move p2, v7

    goto/16 :goto_7

    :pswitch_1
    if-eqz v4, :cond_17

    invoke-virtual {v4, p3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->removeTokens(II)V

    :cond_17
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_1b

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorMisplacedConstruct(II)V

    goto :goto_c

    :pswitch_2
    if-eqz v4, :cond_19

    if-le v5, v2, :cond_18

    invoke-virtual {v4, v5, p3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens(III)V

    goto :goto_b

    :cond_18
    neg-int p1, v5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNTermTemplate(I)[I

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    invoke-virtual {p2, p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->replaceTokens([III)V

    :cond_19
    :goto_b
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_1b

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p3, v1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorMergeTokens(IILjava/lang/String;)V

    goto :goto_c

    :pswitch_3
    if-eqz v4, :cond_1a

    invoke-virtual {v4, p3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->removeTokens(II)V

    :cond_1a
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    if-eqz p1, :cond_1b

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parseErrorDeleteTokens(II)V

    :cond_1b
    :goto_c
    return-void

    :cond_1c
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    aget v5, v5, v1

    if-ne v5, p3, :cond_1d

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    aget v4, v4, v1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scopeTrial([IILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateSeen:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    if-lt v1, v2, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->statePoolTop:I

    new-array v1, v2, [Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->statePool:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeTrialCheck([IILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateSeen:[I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->statePoolTop:I

    const/16 p1, 0x9

    iput p1, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->code:I

    const/16 p1, 0xa

    iput p1, p3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->misspellIndex:I

    return-object p3

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateSeen:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private scopeTrialCheck([IILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const/16 v5, 0x14

    if-le v4, v5, :cond_0

    return-void

    :cond_0
    aget v5, v1, v2

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateSeen:[I

    aget v6, v6, v2

    :goto_0
    const/4 v7, -0x1

    if-ne v6, v7, :cond_16

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->statePoolTop:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->statePoolTop:I

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->statePool:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;

    array-length v9, v8

    const/4 v10, 0x0

    if-lt v7, v9, :cond_1

    mul-int/lit8 v9, v7, 0x2

    new-array v9, v9, [Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;

    iput-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->statePool:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;

    invoke-static {v8, v10, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->statePool:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateSeen:[I

    aget v9, v9, v2

    invoke-direct {v8, v5, v9}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;-><init>(II)V

    aput-object v8, v7, v6

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateSeen:[I

    aput v6, v5, v2

    :goto_1
    const/16 v5, 0x12a

    if-lt v10, v5, :cond_2

    return-void

    :cond_2
    aget v5, v1, v2

    add-int/lit8 v6, v2, -0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_la:[B

    aget-byte v7, v6, v10

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v9, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    aget v8, v8, v9

    invoke-virtual {v6, v8}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    invoke-static {v5, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v5

    move v8, v2

    :goto_2
    const/16 v9, 0x363

    const/4 v11, 0x1

    if-le v5, v9, :cond_11

    const/16 v6, 0x4246

    if-eq v5, v6, :cond_f

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_prefix:[C

    aget-char v5, v5, v10

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/2addr v6, v11

    :goto_3
    add-int/lit8 v7, v8, 0x1

    if-lt v6, v7, :cond_4

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aget v12, v12, v6

    invoke-static {v12}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->in_symbol(I)I

    move-result v12

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    aget-char v13, v13, v5

    if-eq v12, v13, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ne v6, v8, :cond_6

    move v6, v8

    :goto_5
    if-lt v6, v11, :cond_6

    aget v12, v1, v6

    invoke-static {v12}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->in_symbol(I)I

    move-result v12

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    aget-char v13, v13, v5

    if-eq v12, v13, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_6
    :goto_6
    if-ge v8, v2, :cond_7

    goto :goto_7

    :cond_7
    move v7, v2

    :goto_7
    sget-object v8, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_rhs:[C

    aget-char v5, v8, v5

    if-nez v5, :cond_f

    if-ge v6, v7, :cond_f

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_state_set:[C

    aget-char v5, v5, v10

    :goto_8
    aget v7, v1, v6

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_state:[C

    aget-char v8, v8, v5

    if-eq v7, v8, :cond_9

    if-nez v8, :cond_8

    goto :goto_9

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    if-eqz v8, :cond_f

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_lhs:[C

    aget-char v7, v7, v10

    add-int/lit16 v7, v7, 0x81

    iget v8, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    invoke-direct {v0, v1, v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parseCheck([IIII)I

    move-result v7

    iget v8, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    sub-int v8, v7, v8

    add-int/2addr v8, v11

    const/4 v12, 0x3

    if-ge v8, v12, :cond_c

    aget v7, v1, v6

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_lhs:[C

    aget-char v8, v8, v10

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v7

    move v8, v6

    :goto_a
    if-le v7, v9, :cond_a

    add-int/lit8 v8, v8, 0x1

    aget v9, v1, v8

    aput v7, v1, v8

    add-int/lit8 v7, v4, 0x1

    invoke-direct {v0, v1, v8, v3, v7}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeTrialCheck([IILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;I)V

    aput v9, v1, v8

    move v15, v10

    goto :goto_b

    :cond_a
    sget-object v12, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rules_compliance:[J

    aget-wide v13, v12, v7

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move v15, v10

    iget-wide v9, v12, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v9, v13, v9

    if-lez v9, :cond_b

    goto :goto_c

    :cond_b
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v9, v9, v7

    sub-int/2addr v9, v11

    sub-int/2addr v8, v9

    aget v9, v1, v8

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v7, v10, v7

    invoke-static {v9, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v7

    move v10, v15

    const/16 v9, 0x363

    goto :goto_a

    :cond_c
    move v15, v10

    iget v8, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    if-le v7, v8, :cond_d

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeStackTop:I

    iput v7, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    :cond_d
    :goto_b
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v9, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v7

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_e

    iget v7, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    if-ne v7, v5, :cond_e

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeStackTop:I

    const/16 v7, 0x1e

    iput v7, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    :cond_e
    iget v7, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    if-le v7, v5, :cond_10

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeIndex:[I

    aput v15, v1, v4

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopePosition:[I

    aput v6, v1, v4

    return-void

    :cond_f
    move v15, v10

    :cond_10
    :goto_c
    add-int/lit8 v10, v15, 0x1

    goto/16 :goto_1

    :cond_11
    move v15, v10

    :cond_12
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v9, v9, v5

    sub-int/2addr v9, v11

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v5, v9, v5

    if-le v6, v8, :cond_13

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aget v6, v9, v6

    goto :goto_d

    :cond_13
    aget v6, v1, v6

    :goto_d
    invoke-static {v6, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v5

    const/16 v9, 0x363

    if-le v5, v9, :cond_12

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/lit8 v9, v6, 0x1

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    if-lt v9, v10, :cond_14

    return-void

    :cond_14
    if-ge v8, v6, :cond_15

    goto :goto_e

    :cond_15
    move v8, v6

    :goto_e
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    add-int/lit8 v6, v6, 0x1

    aput v5, v9, v6

    invoke-static {v5, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v5

    move v10, v15

    goto/16 :goto_2

    :cond_16
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->statePool:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;

    aget-object v6, v7, v6

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;->state:I

    if-ne v7, v5, :cond_17

    return-void

    :cond_17
    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$StateInfo;->next:I

    goto/16 :goto_0
.end method

.method private secondaryCheck([IIII)Z
    .locals 5

    add-int/lit8 v0, p2, -0x1

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-gez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;-><init>()V

    add-int/lit8 v3, p3, 0x1

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    iput p4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeTrial([IILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    sub-int p2, p1, p3

    if-le p2, v1, :cond_0

    if-le p1, p4, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v4, v4, p3

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v3

    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, p1, v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parseCheck([IIII)I

    move-result v3

    sub-int v4, v3, p3

    add-int/2addr v4, v2

    if-le v4, v1, :cond_2

    if-le v3, p4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private secondaryDiagnosis(Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;)V
    .locals 11

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    const/16 v1, 0x9

    const/16 v2, 0x81

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->stackPosition:I

    aget v1, v1, v2

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->symbol:I

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->bufferPosition:I

    invoke-direct {p0, v1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNtermIndex(III)I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    aget-char v1, v1, v2

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->stackPosition:I

    aget v2, v2, v4

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->bufferPosition:I

    sub-int/2addr v5, v3

    aget v3, v4, v5

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIII)V

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->stackPosition:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    goto :goto_2

    :cond_1
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->stackPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->terminal_index:[C

    aget-char v1, v1, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    aget v0, v4, v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v4, v4, v3

    const/4 v5, 0x6

    invoke-direct {p0, v5, v1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIII)V

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeStackTop:I

    if-lt v0, v1, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_lhs:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeIndex:[I

    aget v4, v4, v1

    aget-char v0, v0, v4

    add-int/2addr v0, v2

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->symbol:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopePosition:[I

    aget v1, v2, v1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    neg-int v7, v4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    aget v8, v2, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v9, v2, v3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    aget v1, v2, v1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->bufferPosition:I

    invoke-direct {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->getNtermIndex(III)I

    move-result v10

    const/16 v6, 0x9

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIIII)V

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeIndex:[I

    aget v1, v1, v0

    neg-int v6, v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopePosition:[I

    aget v5, v5, v0

    aget v7, v4, v5

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v8, v4, v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->non_terminal_index:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_lhs:[C

    aget-char v1, v5, v1

    aget-char v9, v4, v1

    const/16 v5, 0x9

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportError(IIIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private secondaryPhase(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;
    .locals 20

    move-object/from16 v6, p0

    move/from16 v7, p1

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;

    invoke-direct {v8}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;-><init>()V

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;-><init>()V

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;

    invoke-direct {v9}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;-><init>()V

    const/4 v10, 0x0

    iput v10, v9, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    iput v10, v8, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    iput v10, v8, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    iput-boolean v10, v8, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->recoveryOnNextStack:Z

    iput v10, v4, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    iput-boolean v10, v4, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->recoveryOnNextStack:Z

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    const/16 v12, 0x3d

    const/4 v13, 0x3

    const/16 v14, 0x1f

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-ltz v0, :cond_5

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aput v7, v0, v15

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previous(I)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    aget v2, v0, v5

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previous(I)I

    move-result v1

    aput v1, v0, v10

    move v0, v13

    :goto_0
    if-lt v0, v14, :cond_4

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->badtoken()I

    move-result v1

    aput v1, v0, v14

    const/16 v0, 0x1d

    :goto_1
    if-lt v0, v5, :cond_1

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v1

    if-eq v1, v12, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v16, v0, 0x1

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    aget v17, v0, v1

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    aget v18, v2, v1

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v19, v3, v15

    aput v19, v0, v1

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    aget v3, v3, v15

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result v0

    aput v0, v2, v1

    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    iput v2, v4, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v16

    move v11, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->misplacementRecovery([IIILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;Z)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;

    move-result-object v5

    iget-boolean v0, v5, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->recoveryOnNextStack:Z

    if-eqz v0, :cond_2

    iget v0, v5, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    add-int/2addr v0, v11

    iput v0, v5, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    :cond_2
    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    add-int/lit8 v0, v2, 0x1f

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v16

    move-object v4, v8

    move-object v8, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->secondaryRecovery([IIILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;Z)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;

    move-result-object v0

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->recoveryOnNextStack:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    add-int/2addr v1, v11

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    :cond_3
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    aput v17, v1, v2

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    aput v18, v1, v2

    move-object v4, v8

    move-object v8, v0

    goto :goto_3

    :cond_4
    move v11, v5

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    add-int/lit8 v3, v0, -0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->next(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    move v11, v5

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    iput v0, v4, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    add-int/2addr v0, v14

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    move/from16 v16, v10

    :goto_3
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aput v7, v0, v13

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previous(I)I

    move-result v1

    aput v1, v0, v15

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    aget v2, v0, v15

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previous(I)I

    move-result v1

    aput v1, v0, v11

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    aget v2, v0, v11

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previous(I)I

    move-result v1

    aput v1, v0, v10

    const/4 v0, 0x4

    :goto_4
    const/16 v1, 0x20

    if-lt v0, v1, :cond_18

    const/16 v0, 0x1d

    :goto_5
    if-lt v0, v11, :cond_7

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v1

    if-eq v1, v12, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 v17, v0, 0x1

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v3, v17

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->misplacementRecovery([IIILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;Z)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;

    move-result-object v5

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    const/16 v18, 0x0

    move-object v4, v8

    move-object v8, v5

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->secondaryRecovery([IIILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;Z)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;

    move-result-object v0

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    const/16 v2, 0x8

    if-le v1, v13, :cond_9

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    if-le v3, v4, :cond_8

    sub-int v5, v1, v3

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    sub-int/2addr v12, v4

    if-lt v5, v12, :cond_9

    :cond_8
    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    iget v4, v8, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->stackPosition:I

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->stackPosition:I

    iput v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->bufferPosition:I

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    iget-boolean v1, v8, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->recoveryOnNextStack:Z

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->recoveryOnNextStack:Z

    :cond_9
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->recoveryOnNextStack:Z

    if-eqz v1, :cond_c

    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    iput v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    move v1, v10

    :goto_7
    iget v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    if-le v1, v3, :cond_b

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aput v7, v1, v15

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previous(I)I

    move-result v3

    aput v3, v1, v11

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    aget v4, v1, v11

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previous(I)I

    move-result v3

    aput v3, v1, v10

    move v1, v13

    :goto_8
    if-lt v1, v14, :cond_a

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->badtoken()I

    move-result v3

    aput v3, v1, v14

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v5, v4, v15

    aput v5, v1, v3

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    aget v4, v4, v15

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result v4

    aput v4, v1, v3

    move/from16 v1, v16

    goto :goto_9

    :cond_a
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    add-int/lit8 v5, v1, -0x1

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->next(I)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    aget v4, v4, v1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    move/from16 v1, v17

    :goto_9
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    const/16 v4, 0xa

    const/4 v5, 0x6

    const/16 v7, 0x9

    if-eq v3, v4, :cond_d

    if-ne v3, v5, :cond_11

    :cond_d
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;-><init>()V

    iput v10, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iput v15, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    :goto_a
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->bufferPosition:I

    if-gt v4, v8, :cond_11

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    if-ne v4, v7, :cond_e

    goto :goto_b

    :cond_e
    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    invoke-direct {v6, v4, v8, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeTrial([IILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    move-result-object v3

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    const/16 v8, 0x1e

    if-ne v4, v8, :cond_f

    move v4, v1

    :cond_f
    iget v8, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    add-int/lit8 v11, v8, -0x1

    sub-int/2addr v4, v11

    if-le v4, v13, :cond_10

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    sub-int/2addr v11, v12

    if-le v4, v11, :cond_10

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeIndex:[I

    iget v11, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeStackTop:I

    aget v4, v4, v11

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_lhs:[C

    aget-char v4, v11, v4

    add-int/lit16 v4, v4, 0x81

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->symbol:I

    iget v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->stackPosition:I

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->bufferPosition:I

    :cond_10
    add-int/lit8 v8, v8, 0x1

    iput v8, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    goto :goto_a

    :cond_11
    :goto_b
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    if-nez v3, :cond_14

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v3

    const/16 v12, 0x3d

    if-ne v3, v12, :cond_14

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;-><init>()V

    iput v1, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    iput v10, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    :goto_c
    if-ltz v1, :cond_14

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    if-eqz v4, :cond_12

    goto :goto_d

    :cond_12
    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    invoke-direct {v6, v4, v1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeTrial([IILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;

    move-result-object v3

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->distance:I

    if-lez v4, :cond_13

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeIndex:[I

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->scopeStackTop:I

    aget v4, v4, v8

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scope_lhs:[C

    aget-char v4, v8, v4

    add-int/lit16 v4, v4, 0x81

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->symbol:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->stackPosition:I

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$PrimaryRepairInfo;->bufferPosition:I

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->bufferPosition:I

    :cond_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_14
    :goto_d
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    if-nez v1, :cond_15

    return-object v9

    :cond_15
    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->secondaryDiagnosis(Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    if-eq v1, v5, :cond_17

    if-eq v1, v2, :cond_16

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->symbol:I

    iput v1, v9, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->bufferPosition:I

    aget v0, v1, v0

    iput v0, v9, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->location:I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    goto :goto_e

    :cond_16
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v0, v0, v15

    iput v0, v9, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->location:I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v0

    iput v0, v9, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v1, v1, v15

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->next(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    goto :goto_e

    :cond_17
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->bufferPosition:I

    aget v1, v1, v2

    iput v1, v9, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->location:I

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v1

    iput v1, v9, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->bufferPosition:I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->next(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset(I)V

    :goto_e
    return-object v9

    :cond_18
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    add-int/lit8 v3, v0, -0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->next(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4
.end method

.method private secondaryRecovery([IIILorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;Z)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    const/4 v6, 0x0

    move v7, v6

    move v6, v4

    move/from16 v4, p2

    :goto_0
    if-ltz v4, :cond_d

    iget v8, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    if-ge v8, v7, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    aget v8, v8, v4

    if-ge v8, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    move v6, v5

    :goto_1
    add-int/lit8 v9, p3, -0x2

    if-gt v6, v9, :cond_c

    iget v9, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    add-int v10, v7, v6

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->buffer:[I

    aget v11, v11, v6

    invoke-virtual {v9, v11}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v9

    add-int/lit8 v11, v6, 0x1

    invoke-direct {v0, v1, v4, v9, v11}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parseCheck([IIII)I

    move-result v9

    const/16 v12, 0x1e

    if-ne v9, v12, :cond_3

    move/from16 v9, p3

    :cond_3
    sub-int v13, v9, v6

    add-int/lit8 v13, v13, 0x1

    const/16 v14, 0xa

    const/4 v15, 0x3

    if-le v13, v15, :cond_5

    iget v13, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    if-lt v10, v13, :cond_4

    sub-int v5, v9, v10

    iget v15, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    sub-int v12, v15, v13

    if-gt v5, v12, :cond_4

    iget v12, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    if-ne v12, v14, :cond_5

    sub-int/2addr v15, v13

    if-ne v5, v15, :cond_5

    :cond_4
    const/4 v5, 0x6

    iput v5, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    iput v9, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->stackPosition:I

    iput v6, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->bufferPosition:I

    iput v10, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    iput-boolean v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->recoveryOnNextStack:Z

    :cond_5
    aget v5, v1, v4

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nasi(I)I

    move-result v5

    :goto_2
    if-ltz v5, :cond_b

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nasr:[C

    aget-char v9, v9, v5

    if-nez v9, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit16 v9, v9, 0x81

    invoke-direct {v0, v1, v4, v9, v6}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parseCheck([IIII)I

    move-result v12

    const/16 v13, 0x1e

    if-ne v12, v13, :cond_7

    move/from16 v12, p3

    :cond_7
    sub-int v15, v12, v6

    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x3

    if-le v15, v13, :cond_a

    iget v15, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    if-lt v10, v15, :cond_9

    sub-int v13, v12, v10

    iget v14, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_8

    const/16 v13, 0xa

    goto :goto_3

    :cond_8
    const/16 v13, 0xa

    goto :goto_4

    :cond_9
    move v13, v14

    :goto_3
    iput v13, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->code:I

    iput v9, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->symbol:I

    iput v12, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->distance:I

    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->stackPosition:I

    iput v6, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->bufferPosition:I

    iput v10, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->numDeletions:I

    iput-boolean v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$SecondaryRepairInfo;->recoveryOnNextStack:Z

    goto :goto_4

    :cond_a
    move v13, v14

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v14, v13

    goto :goto_2

    :cond_b
    :goto_5
    move v6, v11

    const/4 v5, 0x2

    goto/16 :goto_1

    :cond_c
    :goto_6
    add-int/lit8 v4, v4, -0x1

    move v6, v8

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_d
    :goto_7
    return-object v2
.end method


# virtual methods
.method public atConflictScenario(I)Z
    .locals 1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_1

    const/16 v0, 0x25

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->awaitingColonColon()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public diagnoseParse(Z)V
    .locals 14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    iput-boolean p1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setActiveParser(Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->reset()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->getToken()I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->currentToken:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reallocateStacks()V

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    const/16 v4, 0x464

    aput v4, v1, v2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->currentToken:I

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->currentToken:I

    aput v7, v5, v6

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result v7

    aput v7, v5, v6

    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->prevStackTop:I

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    move v7, v2

    :goto_1
    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    if-le v7, v8, :cond_1e

    invoke-static {v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v4

    :goto_2
    const/16 v7, 0x363

    if-le v4, v7, :cond_1b

    move v8, v6

    move v6, v5

    :goto_3
    const/16 v9, 0x4246

    if-gt v4, v9, :cond_d

    const/16 v10, 0x4245

    if-lt v4, v10, :cond_d

    if-ne v4, v9, :cond_b

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->currentToken:I

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->errorRecovery(IZ)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;

    move-result-object v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-boolean v5, v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportOnlyOneSyntaxError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    if-eqz v0, :cond_2

    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    :cond_2
    iget-object v0, v4, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    :goto_4
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setActiveParser(Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;)V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-ge v4, v6, :cond_7

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    if-eqz v4, :cond_5

    iget-boolean v6, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    if-nez v6, :cond_4

    goto :goto_5

    :cond_4
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reportProblem:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    iput-boolean v3, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    :cond_6
    iget-object v0, v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    goto :goto_4

    :cond_7
    :goto_6
    :try_start_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    aget v4, v4, v5

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->symbol:I

    if-nez v6, :cond_8

    goto :goto_9

    :cond_8
    const/16 v8, 0x81

    if-le v6, v8, :cond_a

    add-int/lit16 v6, v6, -0x81

    invoke-static {v4, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v1

    :goto_7
    if-le v1, v7, :cond_9

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    add-int/2addr v5, v0

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    aput v1, v4, v5

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->getToken()I

    move-result v4

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->currentToken:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->currentToken:I

    aput v7, v5, v6

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result v7

    aput v7, v5, v6

    move v13, v4

    move v4, v1

    move v1, v13

    goto :goto_8

    :cond_9
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v5, v5, v1

    sub-int/2addr v5, v0

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    aget v4, v5, v4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v1, v5, v1

    invoke-static {v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v1

    goto :goto_7

    :cond_a
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser$RepairCandidate;->location:I

    aput v1, v7, v5

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result v1

    aput v1, v7, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v6

    :cond_b
    :goto_8
    if-ne v4, v10, :cond_1

    :goto_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    if-eqz v0, :cond_c

    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    :cond_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    goto/16 :goto_4

    :cond_d
    :try_start_3
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    add-int/2addr v5, v0

    :goto_a
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    if-le v5, v1, :cond_1a

    add-int/lit8 v1, v8, 0x1

    :goto_b
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    if-le v1, v5, :cond_19

    if-le v4, v9, :cond_10

    add-int/lit16 v4, v4, -0x4246

    :cond_e
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v5, v5, v4

    sub-int/2addr v5, v0

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    aget v1, v5, v1

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v4, v5, v4

    invoke-static {v1, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v4

    if-le v4, v7, :cond_e

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    if-ge v8, v1, :cond_f

    goto :goto_c

    :cond_f
    move v8, v1

    :cond_10
    :goto_c
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    add-int/2addr v1, v0

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    if-lt v1, v5, :cond_11

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reallocateStacks()V

    :cond_11
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    aput v4, v5, v1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->getToken()I

    move-result v5

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->currentToken:I

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v10, v5}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->kind(I)I

    move-result v5

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v4

    :goto_d
    if-le v4, v7, :cond_15

    if-eq v4, v9, :cond_14

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->prevStackTop:I

    :goto_e
    add-int/lit8 v6, v6, 0x1

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->prevStackTop:I

    if-le v6, v9, :cond_13

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStackTop:I

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    add-int/lit8 v6, v8, 0x1

    :goto_f
    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    if-le v6, v9, :cond_12

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->currentToken:I

    aput v10, v6, v9

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v11, v10}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->start(I)I

    move-result v10

    aput v10, v6, v9

    move v6, v8

    move v8, v1

    move v1, v5

    move v5, v8

    goto/16 :goto_3

    :cond_12
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    aget v10, v10, v6

    aput v10, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_13
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->prevStack:[I

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    aget v10, v10, v6

    aput v10, v9, v6

    goto :goto_e

    :cond_14
    move v13, v5

    move v5, v1

    move v1, v13

    goto/16 :goto_3

    :cond_15
    sget-object v10, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v10, v10, v4

    iget v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v4, v12, v4

    sub-int/2addr v4, v0

    sub-int/2addr v11, v4

    iput v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    if-le v11, v1, :cond_16

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aget v4, v4, v11

    goto :goto_10

    :cond_16
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    aget v4, v4, v11

    :goto_10
    invoke-static {v4, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v4

    if-le v4, v7, :cond_15

    iget v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/2addr v10, v0

    iget v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    if-lt v10, v11, :cond_17

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reallocateStacks()V

    :cond_17
    iget v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    if-ge v1, v10, :cond_18

    goto :goto_11

    :cond_18
    move v1, v10

    :goto_11
    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    add-int/lit8 v10, v10, 0x1

    aput v4, v11, v10

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v4

    goto/16 :goto_d

    :cond_19
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStack:[I

    iget v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stateStackTop:I

    aget v11, v5, v10

    aput v11, v5, v1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->locationStartStack:[I

    aget v10, v5, v10

    aput v10, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    :cond_1a
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->nextStack:[I

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aget v10, v10, v5

    aput v10, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    :cond_1b
    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rhs:[B

    aget-byte v9, v9, v4

    sub-int/2addr v9, v0

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    aget v8, v9, v8

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lhs:[C

    aget-char v4, v9, v4

    invoke-static {v8, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ntAction(II)I

    move-result v4

    if-le v4, v7, :cond_1b

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    add-int/2addr v7, v0

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stackLength:I

    if-lt v7, v8, :cond_1c

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->reallocateStacks()V

    :cond_1c
    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStackTop:I

    if-ge v6, v7, :cond_1d

    goto :goto_12

    :cond_1d
    move v6, v7

    :goto_12
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    add-int/lit8 v7, v7, 0x1

    aput v4, v8, v7

    invoke-static {v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->tAction(II)I

    move-result v4

    goto/16 :goto_2

    :cond_1e
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->tempStack:[I

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->stack:[I

    aget v9, v9, v7

    aput v9, v8, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :goto_13
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->recoveryScanner:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    if-eqz v1, :cond_1f

    iput-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->record:Z

    :cond_1f
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setActiveParser(Lorg/eclipse/jdt/internal/compiler/parser/ConflictedParser;)V

    throw v0
.end method

.method public isParsingModuleDeclaration()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->isParsingModuleDeclaration()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/DiagnoseParser;->lexStream:Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
