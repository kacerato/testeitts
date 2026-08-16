.class public final Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/UnicodeEscapeProcessingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LineCounter"
.end annotation


# instance fields
.field private _column:I

.field private _crSeen:Z

.field private _line:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_line:I

    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_column:I

    return-void
.end method

.method private incLine()V
    .locals 2

    iget v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_line:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_line:I

    iput v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_column:I

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_column:I

    return v0
.end method

.method public getLine()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_line:I

    return v0
.end method

.method public getPosition()Lcom/github/javaparser/Position;
    .locals 3

    new-instance v0, Lcom/github/javaparser/Position;

    invoke-virtual {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getLine()I

    move-result v1

    invoke-virtual {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getColumn()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/Position;-><init>(II)V

    return-object v0
.end method

.method public process(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ch"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_crSeen:Z

    iget v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_column:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_column:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->incLine()V

    iput-boolean v2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_crSeen:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_crSeen:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->_crSeen:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->incLine()V

    :cond_3
    :goto_0
    return p1
.end method
