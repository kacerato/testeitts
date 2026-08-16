.class public Lcom/github/javaparser/Range;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final begin:Lcom/github/javaparser/Position;

.field public final end:Lcom/github/javaparser/Position;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/github/javaparser/Position;->isBefore(Lcom/github/javaparser/Position;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iput-object p2, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iput-object p1, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "begin can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static range(IIII)Lcom/github/javaparser/Range;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "beginLine",
            "beginColumn",
            "endLine",
            "endColumn"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/Range;

    new-instance v1, Lcom/github/javaparser/Position;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/Position;-><init>(II)V

    new-instance p0, Lcom/github/javaparser/Position;

    invoke-direct {p0, p2, p3}, Lcom/github/javaparser/Position;-><init>(II)V

    invoke-direct {v0, v1, p0}, Lcom/github/javaparser/Range;-><init>(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)V

    return-object v0
.end method

.method public static range(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)Lcom/github/javaparser/Range;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/Range;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/Range;-><init>(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)V

    return-object v0
.end method


# virtual methods
.method public contains(Lcom/github/javaparser/Position;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/github/javaparser/Range;->strictlyContains(Lcom/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public contains(Lcom/github/javaparser/Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget-object v1, p1, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/Position;->isBeforeOrEqual(Lcom/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    iget-object p1, p1, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/Position;->isAfterOrEqual(Lcom/github/javaparser/Position;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/github/javaparser/Range;

    iget-object v2, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget-object v3, p1, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {v2, v3}, Lcom/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    iget-object p1, p1, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {v2, p1}, Lcom/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getLineCount()I
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    iget v0, v0, Lcom/github/javaparser/Position;->line:I

    iget-object v1, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget v1, v1, Lcom/github/javaparser/Position;->line:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {v0}, Lcom/github/javaparser/Position;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {v1}, Lcom/github/javaparser/Position;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lcom/github/javaparser/Position;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/Position;->isAfter(Lcom/github/javaparser/Position;)Z

    move-result p1

    return p1
.end method

.method public isAfter(Lcom/github/javaparser/Range;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget-object p1, p1, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/Position;->isAfter(Lcom/github/javaparser/Position;)Z

    move-result p1

    return p1
.end method

.method public isBefore(Lcom/github/javaparser/Position;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/Position;->isBefore(Lcom/github/javaparser/Position;)Z

    move-result p1

    return p1
.end method

.method public isBefore(Lcom/github/javaparser/Range;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    iget-object p1, p1, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/Position;->isBefore(Lcom/github/javaparser/Position;)Z

    move-result p1

    return p1
.end method

.method public overlapsWith(Lcom/github/javaparser/Range;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p1, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/Range;->contains(Lcom/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/Range;->contains(Lcom/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/Range;->contains(Lcom/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/Range;->contains(Lcom/github/javaparser/Position;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public strictlyContains(Lcom/github/javaparser/Position;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/Position;->isAfter(Lcom/github/javaparser/Position;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/Position;->isBefore(Lcom/github/javaparser/Position;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public strictlyContains(Lcom/github/javaparser/Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget-object v1, p1, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/Position;->isBefore(Lcom/github/javaparser/Position;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    iget-object p1, p1, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {v1, p1}, Lcom/github/javaparser/Position;->isAfter(Lcom/github/javaparser/Position;)Z

    move-result p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBegin(Lcom/github/javaparser/Position;)Lcom/github/javaparser/Range;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "begin"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-static {p1, v0}, Lcom/github/javaparser/Range;->range(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)Lcom/github/javaparser/Range;

    move-result-object p1

    return-object p1
.end method

.method public withBeginColumn(I)Lcom/github/javaparser/Range;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beginColumn"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/Position;->withColumn(I)Lcom/github/javaparser/Position;

    move-result-object p1

    iget-object v0, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-static {p1, v0}, Lcom/github/javaparser/Range;->range(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)Lcom/github/javaparser/Range;

    move-result-object p1

    return-object p1
.end method

.method public withBeginLine(I)Lcom/github/javaparser/Range;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beginLine"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/Position;->withLine(I)Lcom/github/javaparser/Position;

    move-result-object p1

    iget-object v0, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-static {p1, v0}, Lcom/github/javaparser/Range;->range(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)Lcom/github/javaparser/Range;

    move-result-object p1

    return-object p1
.end method

.method public withEnd(Lcom/github/javaparser/Position;)Lcom/github/javaparser/Range;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "end"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-static {v0, p1}, Lcom/github/javaparser/Range;->range(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)Lcom/github/javaparser/Range;

    move-result-object p1

    return-object p1
.end method

.method public withEndColumn(I)Lcom/github/javaparser/Range;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endColumn"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget-object v1, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {v1, p1}, Lcom/github/javaparser/Position;->withColumn(I)Lcom/github/javaparser/Position;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/github/javaparser/Range;->range(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)Lcom/github/javaparser/Range;

    move-result-object p1

    return-object p1
.end method

.method public withEndLine(I)Lcom/github/javaparser/Range;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endLine"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget-object v1, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-virtual {v1, p1}, Lcom/github/javaparser/Position;->withLine(I)Lcom/github/javaparser/Position;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/github/javaparser/Range;->range(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)Lcom/github/javaparser/Range;

    move-result-object p1

    return-object p1
.end method
