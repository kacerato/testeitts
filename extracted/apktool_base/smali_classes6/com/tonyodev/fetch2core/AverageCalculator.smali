.class public final Lcom/tonyodev/fetch2core/AverageCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final defaultIndexPosition:I

.field private final defaultValueListSize:I

.field private final discardLimit:I

.field private endIndex:I

.field private startIndex:I

.field private valueList:[D


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation build LLf/k;
    .end annotation

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/tonyodev/fetch2core/AverageCalculator;-><init>(IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation build LLf/k;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->discardLimit:I

    const/16 p1, 0x10

    .line 3
    iput p1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->defaultValueListSize:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->defaultIndexPosition:I

    .line 5
    new-array p1, p1, [D

    iput-object p1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    .line 6
    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    .line 7
    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2core/AverageCalculator;-><init>(I)V

    return-void
.end method

.method private final expandValueList()V
    .locals 5

    iget-object v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result v1

    iget-object v2, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    iget v3, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    iput v4, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    return-void
.end method

.method private final getDenominator(I)D
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-gt v2, p1, :cond_0

    :goto_0
    int-to-double v3, v2

    add-double/2addr v0, v3

    if-eq v2, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static synthetic getMovingAverageWithWeightOnOlderValues$default(Lcom/tonyodev/fetch2core/AverageCalculator;IILjava/lang/Object;)D
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2core/AverageCalculator;->getMovingAverageWithWeightOnOlderValues(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getMovingAverageWithWeightOnRecentValues$default(Lcom/tonyodev/fetch2core/AverageCalculator;IILjava/lang/Object;)D
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2core/AverageCalculator;->getMovingAverageWithWeightOnRecentValues(I)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final add(D)V
    .locals 2

    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->discardLimit:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result v0

    iget v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->discardLimit:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    :cond_0
    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    iget-object v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->expandValueList()V

    :cond_1
    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    if-nez v0, :cond_2

    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    :cond_2
    iget-object v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    aput-wide p1, v1, v0

    return-void
.end method

.method public final clear()V
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->defaultValueListSize:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->defaultIndexPosition:I

    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    return-void
.end method

.method public final count()I
    .locals 2

    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    iget v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getAverage()D
    .locals 7

    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    iget v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    const-wide/16 v2, 0x0

    if-gt v0, v1, :cond_0

    :goto_0
    iget-object v4, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    aget-wide v5, v4, v0

    add-double/2addr v2, v5

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public final getDiscardLimit()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->discardLimit:I

    return v0
.end method

.method public final getFirstInputValue()D
    .locals 3

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    iget v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    aget-wide v1, v0, v1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "value array is empty"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLastInputValue()D
    .locals 3

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    iget v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    aget-wide v1, v0, v1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "value array is empty"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMovingAverageWithWeightOnOlderValues()D
    .locals 3
    .annotation build LLf/k;
    .end annotation

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/tonyodev/fetch2core/AverageCalculator;->getMovingAverageWithWeightOnOlderValues$default(Lcom/tonyodev/fetch2core/AverageCalculator;IILjava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getMovingAverageWithWeightOnOlderValues(I)D
    .locals 11
    .annotation build LLf/k;
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2core/AverageCalculator;->getDenominator(I)D

    move-result-wide v0

    .line 4
    iget v2, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v2

    const-wide/16 v4, 0x0

    if-gt v2, v3, :cond_0

    .line 5
    :goto_0
    iget-object v6, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    aget-wide v7, v6, v2

    int-to-double v9, p1

    div-double/2addr v9, v0

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    add-int/lit8 p1, p1, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v4

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inclusionCount cannot be greater than the inserted value count."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inclusionCount cannot be less than 1."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getMovingAverageWithWeightOnRecentValues()D
    .locals 3
    .annotation build LLf/k;
    .end annotation

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/tonyodev/fetch2core/AverageCalculator;->getMovingAverageWithWeightOnRecentValues$default(Lcom/tonyodev/fetch2core/AverageCalculator;IILjava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getMovingAverageWithWeightOnRecentValues(I)D
    .locals 11
    .annotation build LLf/k;
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2core/AverageCalculator;->getDenominator(I)D

    move-result-wide v0

    .line 4
    iget v2, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    add-int/lit8 v3, p1, -0x1

    sub-int v3, v2, v3

    const-wide/16 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 5
    :goto_0
    iget-object v6, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    aget-wide v7, v6, v2

    int-to-double v9, p1

    div-double/2addr v9, v0

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    add-int/lit8 p1, p1, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-wide v4

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inclusionCount cannot be greater than the inserted value count."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inclusionCount cannot be less than 1."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    invoke-static {v0}, Lpf/A;->Yy([D)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasInputValue(D)Z
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    invoke-static {v0, p1, p2}, Lpf/A;->x8([DD)Z

    move-result p1

    return p1
.end method
