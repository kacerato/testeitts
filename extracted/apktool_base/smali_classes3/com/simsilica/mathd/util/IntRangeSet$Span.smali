.class Lcom/simsilica/mathd/util/IntRangeSet$Span;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/simsilica/mathd/util/IntRange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simsilica/mathd/util/IntRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Span"
.end annotation


# instance fields
.field min:I

.field next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

.field size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 6
    iput p2, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 2

    iget v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->getMaxValue()I

    move-result v0

    if-le p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    return v0
.end method

.method public getMaxValue()I
    .locals 2

    iget v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    iget v1, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    return v0
.end method

.method public setMaxValue(I)V
    .locals 1

    iget v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    return-void
.end method

.method public setRange(II)V
    .locals 0

    iput p1, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->size:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Range["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->getMinValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->getMaxValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
