.class public Lorg/openjdk/tools/javac/util/Position$LineTabMapImpl;
.super Lorg/openjdk/tools/javac/util/Position$LineMapImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineTabMapImpl"
.end annotation


# instance fields
.field private tabMap:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Position$LineTabMapImpl;->tabMap:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public getColumnNumber(I)I
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Position$LineTabMapImpl;->getLineNumber(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 3
    iget-object v2, p0, Lorg/openjdk/tools/javac/util/Position$LineTabMapImpl;->tabMap:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public bridge synthetic getColumnNumber(J)J
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->getColumnNumber(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic getLineNumber(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->getLineNumber(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getLineNumber(J)J
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->getLineNumber(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPosition(II)I
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Position$LineTabMapImpl;->tabMap:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public bridge synthetic getPosition(JJ)J
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->getPosition(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic getStartPosition(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->getStartPosition(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getStartPosition(J)J
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->getStartPosition(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public setTabPosition(I)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Position$LineTabMapImpl;->tabMap:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method
