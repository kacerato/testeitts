.class final Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/UnicodeEscapeProcessingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionMappingBuilder"
.end annotation


# instance fields
.field private _columnDelta:I

.field private _left:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

.field private _lineDelta:I

.field private final _mapping:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

.field private _right:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

    invoke-direct {v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_mapping:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_lineDelta:I

    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_columnDelta:I

    iput-object p1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_left:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    iput-object p2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_right:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {p0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->update()V

    return-void
.end method


# virtual methods
.method public getMapping()Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_mapping:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

    return-object v0
.end method

.method public update()V
    .locals 5

    iget-object v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_right:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getLine()I

    move-result v0

    iget-object v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_left:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getLine()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_right:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getColumn()I

    move-result v1

    iget-object v2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_left:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getColumn()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_lineDelta:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_columnDelta:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_mapping:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

    iget-object v3, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_left:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v3}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getLine()I

    move-result v3

    iget-object v4, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_left:Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;

    invoke-virtual {v4}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$LineCounter;->getColumn()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->add(IIII)V

    iput v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_lineDelta:I

    iput v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMappingBuilder;->_columnDelta:I

    :cond_1
    return-void
.end method
