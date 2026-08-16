.class public Lcom/simsilica/mathd/util/IntRangeSet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simsilica/mathd/util/IntRangeSet$RangeIterator;,
        Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;,
        Lcom/simsilica/mathd/util/IntRangeSet$Span;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private head:Lcom/simsilica/mathd/util/IntRangeSet$Span;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;

    invoke-direct {v0, p1}, Lcom/simsilica/mathd/util/IntRangeSet$Span;-><init>(I)V

    iput-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 6
    iget v3, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_2

    .line 7
    new-instance v3, Lcom/simsilica/mathd/util/IntRangeSet$Span;

    invoke-direct {v3, p1}, Lcom/simsilica/mathd/util/IntRangeSet$Span;-><init>(I)V

    .line 8
    iput-object v0, v3, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    if-nez v2, :cond_1

    .line 9
    iput-object v3, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    goto :goto_1

    .line 10
    :cond_1
    iput-object v3, v2, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    :goto_1
    return v1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    .line 11
    iput p1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    .line 12
    iget p1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    return v1

    .line 13
    :cond_3
    invoke-virtual {v0, p1}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_4
    iget v2, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    iget v3, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    add-int/2addr v2, v3

    if-ne p1, v2, :cond_6

    add-int/2addr v3, v1

    .line 15
    iput v3, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    .line 16
    iget-object v2, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    if-eqz v2, :cond_5

    iget v4, v2, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    sub-int/2addr v4, v1

    if-ne p1, v4, :cond_5

    .line 17
    iget p1, v2, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    add-int/2addr v3, p1

    iput v3, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    .line 18
    iget-object p1, v2, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    iput-object p1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    :cond_5
    return v1

    .line 19
    :cond_6
    iget-object v2, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    .line 20
    :cond_7
    new-instance v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;

    invoke-direct {v0, p1}, Lcom/simsilica/mathd/util/IntRangeSet$Span;-><init>(I)V

    .line 21
    iput-object v0, v2, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    return v1
.end method

.method public add(Ljava/lang/Integer;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/simsilica/mathd/util/IntRangeSet;->add(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot add nulls"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/simsilica/mathd/util/IntRangeSet;->add(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    return-void
.end method

.method public contains(I)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/simsilica/mathd/util/IntRangeSet;->contains(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;

    iget-object v1, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    invoke-direct {v0, p0, v1}, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;-><init>(Lcom/simsilica/mathd/util/IntRangeSet;Lcom/simsilica/mathd/util/IntRangeSet$Span;)V

    return-object v0
.end method

.method public rangeIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/simsilica/mathd/util/IntRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/simsilica/mathd/util/IntRangeSet$RangeIterator;

    iget-object v1, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    invoke-direct {v0, p0, v1}, Lcom/simsilica/mathd/util/IntRangeSet$RangeIterator;-><init>(Lcom/simsilica/mathd/util/IntRangeSet;Lcom/simsilica/mathd/util/IntRangeSet$Span;)V

    return-object v0
.end method

.method public remove(I)Z
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 5
    iget v3, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    if-ge p1, v3, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->contains(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    iget-object v2, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    .line 8
    :cond_2
    iget v1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    const/4 v3, 0x1

    if-ne v1, p1, :cond_5

    .line 9
    iget p1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    if-le p1, v3, :cond_3

    add-int/2addr v1, v3

    .line 10
    iput v1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    sub-int/2addr p1, v3

    .line 11
    iput p1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    return v3

    :cond_3
    if-nez v2, :cond_4

    .line 12
    iget-object p1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    iput-object p1, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    iput-object p1, v2, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    :goto_1
    return v3

    .line 14
    :cond_5
    invoke-virtual {v0}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->getMaxValue()I

    move-result v1

    if-ne v1, p1, :cond_6

    .line 15
    iget p1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    sub-int/2addr p1, v3

    iput p1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    return v3

    .line 16
    :cond_6
    new-instance v1, Lcom/simsilica/mathd/util/IntRangeSet$Span;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->getMaxValue()I

    move-result v4

    invoke-direct {v1, v2, v4}, Lcom/simsilica/mathd/util/IntRangeSet$Span;-><init>(II)V

    .line 17
    iget-object v2, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    iput-object v2, v1, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    sub-int/2addr p1, v3

    .line 18
    invoke-virtual {v0, p1}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->setMaxValue(I)V

    .line 19
    iput-object v1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    return v3

    :cond_7
    return v1
.end method

.method public remove(II)Z
    .locals 6

    .line 21
    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 22
    iget v3, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    if-ge p2, v3, :cond_1

    return v1

    :cond_1
    const/4 v4, 0x1

    if-gt p1, v3, :cond_4

    .line 23
    invoke-virtual {v0}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->getMaxValue()I

    move-result v3

    if-lt p2, v3, :cond_4

    if-nez v2, :cond_2

    .line 24
    iget-object v1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    iput-object v1, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    goto :goto_1

    .line 25
    :cond_2
    iget-object v1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    iput-object v1, v2, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    .line 26
    :goto_1
    invoke-virtual {v0}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->getMaxValue()I

    move-result v1

    if-ne p2, v1, :cond_3

    return v4

    :cond_3
    :goto_2
    move v1, v4

    goto :goto_3

    .line 27
    :cond_4
    iget v2, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    if-gt p1, v2, :cond_5

    invoke-virtual {v0, p2}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/2addr p2, v4

    .line 28
    invoke-virtual {v0}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->getMaxValue()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->setRange(II)V

    return v4

    .line 29
    :cond_5
    invoke-virtual {v0, p1}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->getMaxValue()I

    move-result v2

    if-lt p2, v2, :cond_6

    .line 30
    iget v1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->setRange(II)V

    goto :goto_2

    .line 31
    :cond_6
    invoke-virtual {v0, p1}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, p2}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 32
    new-instance v1, Lcom/simsilica/mathd/util/IntRangeSet$Span;

    add-int/2addr p2, v4

    invoke-virtual {v0}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->getMaxValue()I

    move-result v2

    invoke-direct {v1, p2, v2}, Lcom/simsilica/mathd/util/IntRangeSet$Span;-><init>(II)V

    .line 33
    iget-object p2, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    iput-object p2, v1, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    sub-int/2addr p1, v4

    .line 34
    invoke-virtual {v0, p1}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->setMaxValue(I)V

    .line 35
    iput-object v1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    return v4

    .line 36
    :cond_7
    :goto_3
    iget-object v2, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    :cond_8
    return v1
.end method

.method public remove(Lcom/simsilica/mathd/util/IntRange;)Z
    .locals 1

    .line 20
    invoke-interface {p1}, Lcom/simsilica/mathd/util/IntRange;->getMinValue()I

    move-result v0

    invoke-interface {p1}, Lcom/simsilica/mathd/util/IntRange;->getMaxValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/simsilica/mathd/util/IntRangeSet;->remove(II)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/simsilica/mathd/util/IntRangeSet;->remove(I)Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot add nulls"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 3

    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    add-int/2addr v1, v2

    iget-object v0, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toRangeArray()[Lcom/simsilica/mathd/util/IntRange;
    .locals 7

    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget-object v0, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    goto :goto_0

    :cond_0
    new-array v0, v2, [Lcom/simsilica/mathd/util/IntRange;

    iget-object v2, p0, Lcom/simsilica/mathd/util/IntRangeSet;->head:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lcom/simsilica/mathd/util/FixedIntRange;

    invoke-virtual {v2}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->getMinValue()I

    move-result v5

    invoke-virtual {v2}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->getMaxValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/simsilica/mathd/util/FixedIntRange;-><init>(II)V

    aput-object v4, v0, v1

    iget-object v2, v2, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    move v1, v3

    goto :goto_1

    :cond_1
    return-object v0
.end method
