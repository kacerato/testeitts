.class public Lcom/github/javaparser/UnicodeEscapeProcessingProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;,
        Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;,
        Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
    }
.end annotation


# static fields
.field private static final BACKSLASH:C = '\\'

.field private static final CR:C = '\r'

.field private static final EOF:I = -0x1

.field private static final LF:C = '\n'


# instance fields
.field private _backslashSeen:Z

.field private _data:[C

.field private _input:Lcom/github/javaparser/Provider;

.field private final _inputLine:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

.field private _len:I

.field private final _mappingBuilder:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;

.field private final _outputLine:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

.field private _pos:I


# direct methods
.method public constructor <init>(ILcom/github/javaparser/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "input"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    .line 4
    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    .line 5
    new-instance v0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-direct {v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_inputLine:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    .line 6
    new-instance v1, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-direct {v1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;-><init>()V

    iput-object v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_outputLine:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    .line 7
    new-instance v2, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;

    invoke-direct {v2, v1, v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;-><init>(Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;)V

    iput-object v2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_mappingBuilder:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;

    .line 8
    iput-object p2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_input:Lcom/github/javaparser/Provider;

    .line 9
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;-><init>(ILcom/github/javaparser/Provider;)V

    return-void
.end method

.method private backSlashSeen()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_backslashSeen:Z

    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->nextInputChar()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x5c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->unicodeStartSeen()I

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method private clearBackSlashSeen(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_backslashSeen:Z

    return p1
.end method

.method private static digit(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ch"
        }
    .end annotation

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private fillBuffer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    iget-object v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_input:Lcom/github/javaparser/Provider;

    iget-object v2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    array-length v3, v2

    invoke-interface {v1, v2, v0, v3}, Lcom/github/javaparser/Provider;->read([CII)I

    move-result v0

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    :cond_0
    return v0
.end method

.method private isBufferEmpty()Z
    .locals 2

    iget v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    iget v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextBufferedChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->fillBuffer()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    iget v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    aget-char v0, v0, v1

    return v0
.end method

.method private nextInputChar()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->nextBufferedChar()I

    move-result v0

    iget-object v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_inputLine:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->process(I)I

    move-result v0

    return v0
.end method

.method private nextOutputChar()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->nextInputChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->clearBackSlashSeen(I)I

    move-result v0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_backslashSeen:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->clearBackSlashSeen(I)I

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->backSlashSeen()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method private pushBack(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ch"
        }
    .end annotation

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    array-length v1, v0

    iput v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    array-length v0, v0

    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    if-nez v0, :cond_3

    iget v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    iget-object v2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    array-length v3, v2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    array-length v0, v2

    add-int/lit16 v0, v0, 0x400

    new-array v1, v0, [C

    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    array-length v3, v2

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    array-length v3, v2

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    goto :goto_0

    :cond_2
    sub-int v0, v1, v0

    array-length v3, v2

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    array-length v1, v2

    iput v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_len:I

    invoke-static {v2, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_data:[C

    iget v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_pos:I

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void
.end method

.method private pushBackUs(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cnt"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const/16 v1, 0x75

    invoke-direct {p0, v1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readDigits(II)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uCnt",
            "next3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->digit(I)I

    move-result v0

    const/16 v1, 0x5c

    if-gez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    invoke-direct {p0, p1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBackUs(I)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->nextInputChar()I

    move-result v2

    invoke-static {v2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->digit(I)I

    move-result v3

    if-gez v3, :cond_1

    invoke-direct {p0, v2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    invoke-direct {p0, p2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    invoke-direct {p0, p1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBackUs(I)V

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->nextInputChar()I

    move-result v4

    invoke-static {v4}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->digit(I)I

    move-result v5

    if-gez v5, :cond_2

    invoke-direct {p0, v4}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    invoke-direct {p0, v2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    invoke-direct {p0, p2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    invoke-direct {p0, p1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBackUs(I)V

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->nextInputChar()I

    move-result v6

    invoke-static {v6}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->digit(I)I

    move-result v7

    if-gez v7, :cond_3

    invoke-direct {p0, v6}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    invoke-direct {p0, v4}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    invoke-direct {p0, v2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    invoke-direct {p0, p2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBack(I)V

    invoke-direct {p0, p1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBackUs(I)V

    return v1

    :cond_3
    shl-int/lit8 p1, v0, 0xc

    shl-int/lit8 p2, v3, 0x8

    or-int/2addr p1, p2

    shl-int/lit8 p2, v5, 0x4

    or-int/2addr p1, p2

    or-int/2addr p1, v7

    invoke-direct {p0, p1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->clearBackSlashSeen(I)I

    move-result p1

    return p1
.end method

.method private unicodeStartSeen()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->nextInputChar()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x75

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->readDigits(II)I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->pushBackUs(I)V

    const/16 v0, 0x5c

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_input:Lcom/github/javaparser/Provider;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public getInputCounter()Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_inputLine:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    return-object v0
.end method

.method public getOutputCounter()Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_outputLine:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    return-object v0
.end method

.method public getPositionMapping()Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_mappingBuilder:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;

    invoke-virtual {v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->getMapping()Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

    move-result-object v0

    return-object v0
.end method

.method public read([CII)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_outputLine:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->nextOutputChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->process(I)I

    move-result v1

    if-gez v1, :cond_0

    if-ne v0, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->_mappingBuilder:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;

    invoke-virtual {v2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->update()V

    add-int/lit8 v2, v0, 0x1

    int-to-char v1, v1

    aput-char v1, p1, v0

    move v0, v2

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method
