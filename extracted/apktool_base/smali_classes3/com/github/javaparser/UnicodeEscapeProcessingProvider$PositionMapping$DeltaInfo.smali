.class final Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;
.super Lcom/github/javaparser/Position;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeltaInfo"
.end annotation


# instance fields
.field private final _columnDelta:I

.field private final _lineDelta:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "column",
            "lineDelta",
            "columnDelta"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/Position;-><init>(II)V

    iput p3, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->_lineDelta:I

    iput p4, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->_columnDelta:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/javaparser/Position;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/github/javaparser/Position;->column:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->_lineDelta:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->_columnDelta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformColumn(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceColumn"
        }
    .end annotation

    iget v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->_columnDelta:I

    add-int/2addr p1, v0

    return p1
.end method

.method public transformLine(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceLine"
        }
    .end annotation

    iget v0, p0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;->_lineDelta:I

    add-int/2addr p1, v0

    return p1
.end method
