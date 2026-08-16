.class public Lcom/simsilica/mathd/filter/SimpleMovingMean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/simsilica/mathd/filter/Filterd;


# instance fields
.field private count:I

.field private current:I

.field private filterSize:I

.field private total:D

.field private values:[D


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->filterSize:I

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->values:[D

    return-void
.end method


# virtual methods
.method public addValue(D)V
    .locals 6

    iget-wide v0, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->total:D

    iget-object v2, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->values:[D

    iget v3, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->current:I

    aget-wide v4, v2, v3

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->total:D

    aput-wide p1, v2, v3

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->total:D

    iget p1, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->count:I

    iget p2, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->filterSize:I

    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->count:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->current:I

    if-lt v3, p2, :cond_1

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->current:I

    :cond_1
    return-void
.end method

.method public getFilteredValue()D
    .locals 5

    iget v0, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->count:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/simsilica/mathd/filter/SimpleMovingMean;->total:D

    int-to-double v3, v0

    div-double v0, v1, v3

    :goto_0
    return-wide v0
.end method
