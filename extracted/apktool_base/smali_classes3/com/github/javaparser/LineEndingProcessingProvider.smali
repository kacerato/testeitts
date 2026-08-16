.class public Lcom/github/javaparser/LineEndingProcessingProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/Provider;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x800

.field private static final EOF:I = -0x1


# instance fields
.field private final _data:[C

.field private final _input:Lcom/github/javaparser/Provider;

.field private _len:I

.field private _pos:I

.field private final eolCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/github/javaparser/utils/LineSeparator;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/github/javaparser/Provider;)V
    .locals 1
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
    iput v0, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_len:I

    .line 4
    iput v0, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_pos:I

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->eolCounts:Ljava/util/Map;

    .line 6
    iput-object p2, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_input:Lcom/github/javaparser/Provider;

    .line 7
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_data:[C

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
    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/LineEndingProcessingProvider;-><init>(ILcom/github/javaparser/Provider;)V

    return-void
.end method

.method private fillBuffer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_pos:I

    iget-object v1, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_input:Lcom/github/javaparser/Provider;

    iget-object v2, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_data:[C

    array-length v3, v2

    invoke-interface {v1, v2, v0, v3}, Lcom/github/javaparser/Provider;->read([CII)I

    move-result v0

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_len:I

    :cond_0
    return v0
.end method

.method private isBufferEmpty()Z
    .locals 2

    iget v0, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_pos:I

    iget v1, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_len:I

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
    invoke-direct {p0}, Lcom/github/javaparser/LineEndingProcessingProvider;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/github/javaparser/LineEndingProcessingProvider;->fillBuffer()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_data:[C

    iget v1, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_pos:I

    aget-char v0, v0, v1

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

    iget-object v0, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->_input:Lcom/github/javaparser/Provider;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public getDetectedLineEnding()Lcom/github/javaparser/utils/LineSeparator;
    .locals 5

    iget-object v0, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->eolCounts:Ljava/util/Map;

    sget-object v1, Lcom/github/javaparser/utils/LineSeparator;->CR:Lcom/github/javaparser/utils/LineSeparator;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->eolCounts:Ljava/util/Map;

    sget-object v3, Lcom/github/javaparser/utils/LineSeparator;->LF:Lcom/github/javaparser/utils/LineSeparator;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->eolCounts:Ljava/util/Map;

    sget-object v4, Lcom/github/javaparser/utils/LineSeparator;->CRLF:Lcom/github/javaparser/utils/LineSeparator;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/github/javaparser/utils/LineSeparator;->getLineEnding(III)Lcom/github/javaparser/utils/LineSeparator;

    move-result-object v0

    return-object v0
.end method

.method public read([CII)I
    .locals 8
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

    const/4 v0, 0x0

    move v1, p2

    move-object v2, v0

    :goto_0
    if-ge v1, p3, :cond_3

    invoke-direct {p0}, Lcom/github/javaparser/LineEndingProcessingProvider;->nextBufferedChar()I

    move-result v3

    if-gez v3, :cond_0

    if-ne v1, p2, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/github/javaparser/utils/LineSeparator;->lookup(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/utils/LineSeparator;

    iget-object v5, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->eolCounts:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->eolCounts:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/github/javaparser/utils/LineSeparator;->LF:Lcom/github/javaparser/utils/LineSeparator;

    if-ne v4, v5, :cond_1

    sget-object v5, Lcom/github/javaparser/utils/LineSeparator;->CR:Lcom/github/javaparser/utils/LineSeparator;

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->eolCounts:Ljava/util/Map;

    sget-object v5, Lcom/github/javaparser/utils/LineSeparator;->CRLF:Lcom/github/javaparser/utils/LineSeparator;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/github/javaparser/LineEndingProcessingProvider;->eolCounts:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v2, v4

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    add-int/lit8 v4, v1, 0x1

    aput-char v3, p1, v1

    move v1, v4

    goto :goto_0

    :cond_3
    sub-int/2addr v1, p2

    return v1
.end method
