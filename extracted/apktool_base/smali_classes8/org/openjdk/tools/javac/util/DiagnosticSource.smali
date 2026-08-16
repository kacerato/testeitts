.class public Lorg/openjdk/tools/javac/util/DiagnosticSource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_SOURCE:Lorg/openjdk/tools/javac/util/DiagnosticSource;


# instance fields
.field protected buf:[C

.field protected bufLen:I

.field protected endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

.field protected fileObject:Lorg/openjdk/javax/tools/JavaFileObject;

.field protected line:I

.field protected lineStart:I

.field protected log:Lorg/openjdk/tools/javac/util/AbstractLog;

.field protected refBuf:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/DiagnosticSource$1;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/DiagnosticSource$1;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->NO_SOURCE:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/AbstractLog;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->fileObject:Lorg/openjdk/javax/tools/JavaFileObject;

    .line 4
    iput-object p2, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->log:Lorg/openjdk/tools/javac/util/AbstractLog;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/DiagnosticSource$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/DiagnosticSource;-><init>()V

    return-void
.end method


# virtual methods
.method public findLine(I)Z
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->refBuf:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->fileObject:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->initBuf(Lorg/openjdk/javax/tools/JavaFileObject;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    iput v1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->lineStart:I

    iput v2, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->line:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->lineStart:I

    if-le v0, p1, :cond_3

    iput v1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->lineStart:I

    iput v2, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->line:I

    :cond_3
    :goto_0
    iget v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->lineStart:I

    :goto_1
    iget v3, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->bufLen:I

    if-ge v0, v3, :cond_7

    if-ge v0, p1, :cond_7

    iget-object v4, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    add-int/lit8 v5, v0, 0x1

    aget-char v6, v4, v0

    const/16 v7, 0xa

    if-eq v6, v7, :cond_6

    const/16 v8, 0xd

    if-eq v6, v8, :cond_4

    goto :goto_2

    :cond_4
    if-ge v5, v3, :cond_5

    aget-char v3, v4, v5

    if-ne v3, v7, :cond_5

    add-int/lit8 v5, v0, 0x2

    :cond_5
    iget v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->line:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->line:I

    iput v5, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->lineStart:I

    :goto_2
    move v0, v5

    goto :goto_1

    :cond_6
    iget v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->line:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->line:I

    iput v5, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->lineStart:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_7
    if-gt v0, v3, :cond_8

    move v1, v2

    :cond_8
    return v1

    :catch_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->log:Lorg/openjdk/tools/javac/util/AbstractLog;

    const-string v0, "source.unavailable"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->directError(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v1, [C

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    return v1
.end method

.method public getColumnNumber(IZ)I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->findLine(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->lineStart:I

    move v3, v2

    :goto_0
    if-ge v1, p1, :cond_2

    iget v4, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->bufLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v4, :cond_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    return v2

    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    aget-char v4, v4, v1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    if-eqz p2, :cond_1

    div-int/lit8 v3, v3, 0x8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x8

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    return v3

    :cond_3
    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    return v2

    :goto_2
    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    throw p1
.end method

.method public getEndPosTable()Lorg/openjdk/tools/javac/tree/EndPosTable;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    return-object v0
.end method

.method public getFile()Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->fileObject:Lorg/openjdk/javax/tools/JavaFileObject;

    return-object v0
.end method

.method public getLine(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->findLine(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    return-object v0

    :cond_0
    :try_start_1
    iget p1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->lineStart:I

    :goto_0
    iget v1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->bufLen:I

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    aget-char v1, v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->lineStart:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v2, p1, v1

    if-nez v2, :cond_2

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    return-object v0

    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    sub-int/2addr p1, v1

    invoke-direct {v2, v3, v1, p1}, Ljava/lang/String;-><init>([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    return-object v2

    :goto_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    throw p1
.end method

.method public getLineNumber(I)I
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->findLine(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->line:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    const/4 p1, 0x0

    return p1

    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->buf:[C

    throw p1
.end method

.method public initBuf(Lorg/openjdk/javax/tools/JavaFileObject;)[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/openjdk/javax/tools/FileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object p1

    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/nio/CharBuffer;

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->toArray(Ljava/nio/CharBuffer;)[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    iput p1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->bufLen:I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length p1, v0

    iput p1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->bufLen:I

    :goto_0
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->refBuf:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public setEndPosTable(Lorg/openjdk/tools/javac/tree/EndPosTable;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "endPosTable already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/DiagnosticSource;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    return-void
.end method
