.class public Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/parser/TerminalTokens;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;
    }
.end annotation


# static fields
.field public static final IS_AFTER_JUMP:I = 0x1

.field public static final LBRACE_MISSING:I = 0x2


# instance fields
.field private awaitingColonColon:Z

.field private currentIndex:I

.field private currentInterval:I

.field private intervalEndToSkip:[I

.field private intervalFlagsToSkip:[I

.field private intervalStartToSkip:[I

.field private previousInterval:I

.field private scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

.field private tokenCache:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

.field private tokenCacheEOFIndex:I

.field private tokenCacheIndex:I


# direct methods
.method public constructor <init>(ILorg/eclipse/jdt/internal/compiler/parser/Scanner;[I[I[IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->currentIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previousInterval:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->currentInterval:I

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCache:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCacheIndex:I

    const v1, 0x7fffffff

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCacheEOFIndex:I

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;-><init>()V

    aput-object v1, p1, v0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCache:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    aget-object p1, p1, v0

    iput p6, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->kind:I

    sget-object p6, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object p6, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->name:[C

    iput p7, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->start:I

    iput p7, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->end:I

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->line:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->intervalStartToSkip:[I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->intervalEndToSkip:[I

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->intervalFlagsToSkip:[I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->awaitingColonColon:Z

    invoke-virtual {p2, p7, p8}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    return-void
.end method

.method private readTokenFromScanner()V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCache:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    array-length v0, v0

    const/4 v1, 0x1

    move v2, v1

    :catch_0
    :goto_0
    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v3

    const/16 v4, 0x54

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->awaitingColonColon:Z

    goto :goto_1

    :cond_1
    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->awaitingColonColon:Z

    :cond_2
    :goto_1
    const/16 v4, 0x3d

    if-eq v3, v4, :cond_6

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v6

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->currentInterval:I

    add-int/lit8 v8, v7, 0x1

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->intervalStartToSkip:[I

    array-length v10, v9

    if-eqz v10, :cond_4

    array-length v10, v9

    if-ge v8, v10, :cond_4

    aget v8, v9, v8

    if-ge v4, v8, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->intervalEndToSkip:[I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->currentInterval:I

    aget v4, v4, v7

    add-int/2addr v4, v1

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    sub-int/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    goto :goto_0

    :cond_4
    :goto_2
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    invoke-direct {v7}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;-><init>()V

    iput v3, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->kind:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v3

    iput-object v3, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->name:[C

    iput v4, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->start:I

    iput v6, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->end:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v6, v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v3

    iput v3, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->line:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->currentInterval:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previousInterval:I

    if-eq v3, v4, :cond_5

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->intervalFlagsToSkip:[I

    aget v4, v4, v3

    and-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_5

    iput v1, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    or-int/lit8 v4, v1, 0x2

    iput v4, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->flags:I

    :cond_5
    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previousInterval:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCache:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCacheIndex:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCacheIndex:I

    rem-int/2addr v4, v0

    aput-object v7, v3, v4

    :goto_3
    move v2, v5

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v6

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    invoke-direct {v7}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;-><init>()V

    iput v3, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->kind:I

    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v3, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->name:[C

    iput v4, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->start:I

    iput v6, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->end:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v6, v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v3

    iput v3, v7, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->line:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCache:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCacheIndex:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCacheIndex:I

    rem-int v6, v4, v0

    aput-object v7, v3, v6

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCacheEOFIndex:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public afterEol(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->line(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->line(I)I

    move-result p1

    if-ge v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public awaitingColonColon()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->awaitingColonColon:Z

    return v0
.end method

.method public badtoken()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public end(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->token(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->end:I

    return p1
.end method

.method public flags(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->token(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->flags:I

    return p1
.end method

.method public getToken()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->currentIndex:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->next(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->currentIndex:I

    return v0
.end method

.method public isInsideStream(I)Z
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCacheEOFIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    if-le p1, v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCacheIndex:I

    const/4 v2, 0x1

    if-le p1, v0, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCache:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    array-length v3, v3

    sub-int/2addr v0, v3

    if-lt v0, p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public kind(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->token(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->kind:I

    return p1
.end method

.method public line(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->token(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->line:I

    return p1
.end method

.method public name(I)[C
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->token(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->name:[C

    return-object p1
.end method

.method public next(I)I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCacheEOFIndex:I

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    :cond_0
    return v0
.end method

.method public previous(I)I
    .locals 0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->currentIndex:I

    return-void
.end method

.method public reset(I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->previous(I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->currentIndex:I

    return-void
.end method

.method public start(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->token(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->start:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->currentIndex:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/16 v5, 0x3e

    const/16 v6, 0x40

    const/16 v7, 0x3c

    if-gez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->intervalStartToSkip:[I

    array-length v8, v2

    if-lt v3, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_0
    aget v2, v2, v3

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->intervalEndToSkip:[I

    aget v8, v8, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->token(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    move-result-object v2

    iget v8, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->kind:I

    iget v9, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->start:I

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->end:I

    :goto_1
    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->intervalStartToSkip:[I

    array-length v11, v10

    const/16 v12, 0x23

    if-lt v3, v11, :cond_4

    if-lt v9, v4, :cond_3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0x3d

    if-ne v8, v3, :cond_2

    const-string v1, "EOF#>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    aget v10, v10, v3

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->intervalEndToSkip:[I

    aget v11, v11, v3

    if-lt v9, v4, :cond_5

    if-gt v2, v10, :cond_5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v1, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    move v4, v11

    goto/16 :goto_1
.end method

.method public token(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;
    .locals 3

    if-gez p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;-><init>()V

    const/16 v0, 0x3d

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->kind:I

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;->name:[C

    return-object p1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCacheEOFIndex:I

    if-ltz v0, :cond_1

    if-le p1, v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->token(I)Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCache:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    array-length v0, v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCacheIndex:I

    if-le p1, v1, :cond_3

    sub-int v1, p1, v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->readTokenFromScanner()V

    move v1, v2

    goto :goto_0

    :cond_3
    sub-int/2addr v1, v0

    if-lt v1, p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream;->tokenCache:[Lorg/eclipse/jdt/internal/compiler/parser/diagnose/LexStream$Token;

    rem-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1
.end method
