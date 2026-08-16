.class public abstract Lcom/github/javaparser/AbstractCharStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/CharStream;


# static fields
.field public static final DEFAULT_BUF_SIZE:I = 0x1000


# instance fields
.field protected available:I

.field protected buffer:[C

.field protected bufpos:I

.field protected bufsize:I

.field protected inBuf:I

.field private m_aBufColumn:[I

.field private m_aBufLine:[I

.field private m_bPrevCharIsCR:Z

.field private m_bPrevCharIsLF:Z

.field private m_bTrackLineColumn:Z

.field private m_nColumnNo:I

.field private m_nLineNo:I

.field private m_nTabSize:I

.field protected maxNextCharInd:I

.field protected tokenBegin:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "nStartLine",
            "nStartColumn",
            "nBufferSize"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_nTabSize:I

    iput-boolean v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_bTrackLineColumn:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/javaparser/AbstractCharStream;->reInit(III)V

    return-void
.end method

.method public static final hexval(C)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' (="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") provided!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0xf

    return p0

    :pswitch_1
    const/16 p0, 0xe

    return p0

    :pswitch_2
    const/16 p0, 0xd

    return p0

    :pswitch_3
    const/16 p0, 0xc

    return p0

    :pswitch_4
    const/16 p0, 0xb

    return p0

    :pswitch_5
    const/16 p0, 0xa

    return p0

    :pswitch_6
    const/16 p0, 0x9

    return p0

    :pswitch_7
    const/16 p0, 0x8

    return p0

    :pswitch_8
    const/4 p0, 0x7

    return p0

    :pswitch_9
    const/4 p0, 0x6

    return p0

    :pswitch_a
    const/4 p0, 0x5

    return p0

    :pswitch_b
    const/4 p0, 0x4

    return p0

    :pswitch_c
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_e
    const/4 p0, 0x1

    return p0

    :pswitch_f
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final adjustBeginLineColumn(II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "nNewLine",
            "newCol"
        }
    .end annotation

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    if-lt v1, v0, :cond_0

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/github/javaparser/AbstractCharStream;->inBuf:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->inBuf:I

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    iget v5, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    rem-int v6, v0, v5

    aget v7, v3, v6

    add-int/lit8 v0, v0, 0x1

    rem-int v5, v0, v5

    aget v8, v3, v5

    if-ne v7, v8, :cond_1

    aput p1, v3, v6

    iget-object v3, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    aget v5, v3, v5

    add-int/2addr v5, v4

    aget v7, v3, v6

    sub-int/2addr v5, v7

    add-int/2addr v4, p2

    aput v4, v3, v6

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v6

    :cond_2
    if-ge v2, v1, :cond_4

    iget-object v5, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    add-int/lit8 v6, p1, 0x1

    aput p1, v5, v3

    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    add-int/2addr p2, v4

    aput p2, p1, v3

    :goto_2
    add-int/lit8 p1, v2, 0x1

    if-ge v2, v1, :cond_4

    iget-object p2, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    iget v2, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    rem-int v3, v0, v2

    aget v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    rem-int v2, v0, v2

    aget v2, p2, v2

    if-eq v4, v2, :cond_3

    add-int/lit8 v2, v6, 0x1

    aput v6, p2, v3

    move v6, v2

    :goto_3
    move v2, p1

    goto :goto_2

    :cond_3
    aput v6, p2, v3

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    aget p1, p1, v3

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_nLineNo:I

    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    aget p1, p1, v3

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_nColumnNo:I

    return-void
.end method

.method public backup(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nAmount"
        }
    .end annotation

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    if-gt p1, v0, :cond_1

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->inBuf:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/github/javaparser/AbstractCharStream;->inBuf:I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    if-gez v1, :cond_0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " chars which is larger than the internal buffer size ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginToken()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    invoke-virtual {p0}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v0

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    iput v1, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    return v0
.end method

.method public done()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    iput-object v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    iput-object v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    return-void
.end method

.method public expandBuff(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bWrapAround"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/AbstractCharStream;->getBufSizeAfterExpansion()I

    move-result v0

    new-array v1, v0, [C

    new-array v2, v0, [I

    new-array v3, v0, [I

    iget v4, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    iget v5, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    invoke-static {p1, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    iget v5, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    invoke-static {p1, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    invoke-static {p1, v1, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    invoke-static {p1, v6, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    invoke-static {p1, v1, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    invoke-static {p1, v6, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    iget p1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->maxNextCharInd:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    invoke-static {p1, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    invoke-static {p1, v1, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    invoke-static {p1, v1, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    iget p1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->maxNextCharInd:I

    :goto_0
    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->available:I

    iput v6, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    return-void
.end method

.method public fillBuff()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->maxNextCharInd:I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->available:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/AbstractCharStream;->internalAdjustBuffSize()V

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    iget v2, p0, Lcom/github/javaparser/AbstractCharStream;->maxNextCharInd:I

    iget v3, p0, Lcom/github/javaparser/AbstractCharStream;->available:I

    sub-int/2addr v3, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/github/javaparser/AbstractCharStream;->streamRead([CII)I

    move-result v1

    if-eq v1, v0, :cond_1

    iget v2, p0, Lcom/github/javaparser/AbstractCharStream;->maxNextCharInd:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/github/javaparser/AbstractCharStream;->maxNextCharInd:I

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/github/javaparser/AbstractCharStream;->streamClose()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "PGCC end of stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v2, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/github/javaparser/AbstractCharStream;->backup(I)V

    iget v2, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    if-ne v2, v0, :cond_2

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    :cond_2
    throw v1
.end method

.method public getBeginColumn()I
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBufSizeAfterExpansion()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getColumn()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_nColumnNo:I

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    iget v3, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    iget v4, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    sub-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    iget v3, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLine()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_nLineNo:I

    return v0
.end method

.method public getSuffix(I)[C
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "len"
        }
    .end annotation

    new-array v0, p1, [C

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_0

    iget-object v2, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    iget v2, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    sub-int/2addr v2, p1

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    iget v2, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0
.end method

.method public final getTabSize()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_nTabSize:I

    return v0
.end method

.method public final internalAdjustBuffSize()V
    .locals 4

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/github/javaparser/AbstractCharStream;->available:I

    if-ne v2, v0, :cond_2

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    const/4 v2, 0x0

    if-gez v0, :cond_0

    iput v2, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    iput v2, p0, Lcom/github/javaparser/AbstractCharStream;->maxNextCharInd:I

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    iput v2, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    iput v2, p0, Lcom/github/javaparser/AbstractCharStream;->maxNextCharInd:I

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->available:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/github/javaparser/AbstractCharStream;->expandBuff(Z)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    if-le v2, v3, :cond_3

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->available:I

    goto :goto_0

    :cond_3
    sub-int v0, v3, v2

    if-ge v0, v1, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/javaparser/AbstractCharStream;->expandBuff(Z)V

    goto :goto_0

    :cond_4
    iput v3, p0, Lcom/github/javaparser/AbstractCharStream;->available:I

    :goto_0
    return-void
.end method

.method public final internalSetBufLineColumn(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "nLine",
            "nColumn"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    aput p2, p1, v1

    return-void
.end method

.method public final internalUpdateLineColumn(C)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "c"
        }
    .end annotation

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_nColumnNo:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_nColumnNo:I

    iget-boolean v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_bPrevCharIsLF:Z

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/github/javaparser/AbstractCharStream;->m_bPrevCharIsLF:Z

    iput v1, p0, Lcom/github/javaparser/AbstractCharStream;->m_nColumnNo:I

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_nLineNo:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_nLineNo:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_bPrevCharIsCR:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/github/javaparser/AbstractCharStream;->m_bPrevCharIsCR:Z

    if-ne p1, v2, :cond_1

    iput-boolean v1, p0, Lcom/github/javaparser/AbstractCharStream;->m_bPrevCharIsLF:Z

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/github/javaparser/AbstractCharStream;->m_nColumnNo:I

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_nLineNo:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_nLineNo:I

    :cond_2
    :goto_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lcom/github/javaparser/AbstractCharStream;->m_bPrevCharIsCR:Z

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/github/javaparser/AbstractCharStream;->m_bPrevCharIsLF:Z

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_nColumnNo:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_nColumnNo:I

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_nTabSize:I

    rem-int v1, p1, v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_nColumnNo:I

    :goto_1
    iget p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_nLineNo:I

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_nColumnNo:I

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/AbstractCharStream;->internalSetBufLineColumn(II)V

    return-void
.end method

.method public final isTrackLineColumn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/AbstractCharStream;->m_bTrackLineColumn:Z

    return v0
.end method

.method public final reInit(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "nStartLine",
            "nStartColumn",
            "nBufferSize"
        }
    .end annotation

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_nLineNo:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/github/javaparser/AbstractCharStream;->m_nColumnNo:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_bPrevCharIsCR:Z

    iput-boolean p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_bPrevCharIsLF:Z

    iget-object p2, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    if-eqz p2, :cond_0

    array-length p2, p2

    if-eq p3, p2, :cond_1

    :cond_0
    iput p3, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    iput p3, p0, Lcom/github/javaparser/AbstractCharStream;->available:I

    new-array p2, p3, [C

    iput-object p2, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    new-array p2, p3, [I

    iput-object p2, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufLine:[I

    new-array p2, p3, [I

    iput-object p2, p0, Lcom/github/javaparser/AbstractCharStream;->m_aBufColumn:[I

    :cond_1
    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->maxNextCharInd:I

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->inBuf:I

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->tokenBegin:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    return-void
.end method

.method public readChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->inBuf:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->inBuf:I

    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufsize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    aget-char v0, v0, v1

    return v0

    :cond_1
    iget v0, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->maxNextCharInd:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/github/javaparser/AbstractCharStream;->fillBuff()V

    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/AbstractCharStream;->buffer:[C

    iget v1, p0, Lcom/github/javaparser/AbstractCharStream;->bufpos:I

    aget-char v0, v0, v1

    iget-boolean v1, p0, Lcom/github/javaparser/AbstractCharStream;->m_bTrackLineColumn:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/github/javaparser/AbstractCharStream;->internalUpdateLineColumn(C)V

    :cond_3
    return v0
.end method

.method public final setTabSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nTabSize"
        }
    .end annotation

    iput p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_nTabSize:I

    return-void
.end method

.method public final setTrackLineColumn(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bTrackLineColumn"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/github/javaparser/AbstractCharStream;->m_bTrackLineColumn:Z

    return-void
.end method

.method public abstract streamClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract streamRead([CII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "aBuf",
            "nOfs",
            "nLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
