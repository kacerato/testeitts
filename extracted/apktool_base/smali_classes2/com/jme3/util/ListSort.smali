.class public Lcom/jme3/util/ListSort;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_SIZE:I = 0x80


# instance fields
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field dest:I

.field iterA:I

.field iterB:I

.field private length:I

.field lengthA:I

.field lengthB:I

.field private minGallop:I

.field private nbRuns:I

.field private runsIndices:[I

.field private runsLength:[I

.field private tmpArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/util/ListSort;->nbRuns:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jme3/util/ListSort;->runsIndices:[I

    iput-object v1, p0, Lcom/jme3/util/ListSort;->runsLength:[I

    iput v0, p0, Lcom/jme3/util/ListSort;->length:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/jme3/util/ListSort;->minGallop:I

    return-void
.end method

.method private binaryInsertionSort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    if-ne p2, p4, :cond_0

    :goto_0
    add-int/lit8 p4, p4, 0x1

    :cond_0
    if-ge p4, p3, :cond_5

    aget-object v0, p1, p4

    move v1, p2

    move v2, p4

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    add-int v4, v1, v2

    ushr-int/lit8 v3, v4, 0x1

    aget-object v4, p1, v3

    invoke-interface {p5, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    :cond_2
    sub-int v2, p4, v1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    aput-object v3, p1, v2

    :cond_4
    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v1

    aput-object v3, p1, v2

    :goto_2
    aput-object v0, p1, v1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private clean()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/jme3/util/ListSort;->runsIndices:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput v0, v2, v1

    iget-object v2, p0, Lcom/jme3/util/ListSort;->runsLength:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III",
            "Ljava/util/Comparator<",
            "TT;>;)I"
        }
    .end annotation

    add-int v0, p3, p5

    aget-object v1, p2, v0

    invoke-interface {p6, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_3

    sub-int/2addr p4, p5

    move v1, v2

    move v2, v3

    :goto_0
    if-ge v2, p4, :cond_1

    add-int v4, v0, v2

    aget-object v4, p2, v4

    invoke-interface {p6, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    shl-int/lit8 v1, v2, 0x1

    add-int/2addr v1, v3

    if-gtz v1, :cond_0

    move v1, v2

    move v2, p4

    goto :goto_0

    :cond_0
    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_0

    :cond_1
    if-le v2, p4, :cond_2

    goto :goto_1

    :cond_2
    move p4, v2

    :goto_1
    add-int/2addr v1, p5

    add-int/2addr p4, p5

    goto :goto_4

    :cond_3
    add-int/lit8 p4, p5, 0x1

    move v1, v2

    move v2, v3

    :goto_2
    if-ge v2, p4, :cond_5

    sub-int v4, v0, v2

    aget-object v4, p2, v4

    invoke-interface {p6, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_5

    shl-int/lit8 v1, v2, 0x1

    add-int/2addr v1, v3

    if-gtz v1, :cond_4

    move v1, v2

    move v2, p4

    goto :goto_2

    :cond_4
    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_2

    :cond_5
    if-le v2, p4, :cond_6

    goto :goto_3

    :cond_6
    move p4, v2

    :goto_3
    sub-int p4, p5, p4

    sub-int/2addr p5, v1

    move v1, p4

    move p4, p5

    :goto_4
    add-int/2addr v1, v3

    :goto_5
    if-ge v1, p4, :cond_8

    sub-int p5, p4, v1

    ushr-int/2addr p5, v3

    add-int/2addr p5, v1

    add-int v0, p3, p5

    aget-object v0, p2, v0

    invoke-interface {p6, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_7

    add-int/lit8 p5, p5, 0x1

    move v1, p5

    goto :goto_5

    :cond_7
    move p4, p5

    goto :goto_5

    :cond_8
    return p4
.end method

.method private gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III",
            "Ljava/util/Comparator<",
            "TT;>;)I"
        }
    .end annotation

    add-int v0, p3, p5

    aget-object v1, p2, v0

    invoke-interface {p6, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_3

    add-int/lit8 p4, p5, 0x1

    move v1, v3

    move v3, v2

    :goto_0
    if-ge v3, p4, :cond_1

    sub-int v4, v0, v3

    aget-object v4, p2, v4

    invoke-interface {p6, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    move v1, v3

    move v3, p4

    goto :goto_0

    :cond_0
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_0

    :cond_1
    if-le v3, p4, :cond_2

    goto :goto_1

    :cond_2
    move p4, v3

    :goto_1
    sub-int p4, p5, p4

    sub-int/2addr p5, v1

    goto :goto_4

    :cond_3
    sub-int/2addr p4, p5

    move v1, v3

    move v3, v2

    :goto_2
    if-ge v3, p4, :cond_5

    add-int v4, v0, v3

    aget-object v4, p2, v4

    invoke-interface {p6, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_5

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    if-gtz v1, :cond_4

    move v1, v3

    move v3, p4

    goto :goto_2

    :cond_4
    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_2

    :cond_5
    if-le v3, p4, :cond_6

    goto :goto_3

    :cond_6
    move p4, v3

    :goto_3
    add-int v0, v1, p5

    add-int/2addr p5, p4

    move p4, v0

    :goto_4
    add-int/2addr p4, v2

    :goto_5
    if-ge p4, p5, :cond_8

    sub-int v0, p5, p4

    ushr-int/2addr v0, v2

    add-int/2addr v0, p4

    add-int v1, p3, v0

    aget-object v1, p2, v1

    invoke-interface {p6, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_7

    move p5, v0

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move p4, v0

    goto :goto_5

    :cond_8
    return p5
.end method

.method private getRunLength([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II",
            "Ljava/util/Comparator<",
            "TT;>;)I"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_3

    add-int/lit8 v1, p2, 0x2

    aget-object v0, p1, v0

    aget-object v2, p1, p2

    invoke-interface {p4, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    if-ge v1, p3, :cond_2

    aget-object v0, p1, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    invoke-interface {p4, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p3, :cond_1

    aget-object v0, p1, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    invoke-interface {p4, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, v1}, Lcom/jme3/util/ListSort;->reverseArray([Ljava/lang/Object;II)V

    :cond_2
    sub-int/2addr v1, p2

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 35

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v1, v17

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v3, v30

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v16, v7

    move-object v10, v7

    move-object/from16 v21, v7

    move-object v13, v7

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v9, v31

    move-object/from16 v18, v31

    move-object/from16 v11, v31

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v22, v14

    const/16 v0, 0x1ca

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v0, 0x4e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v0, 0x2d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v20, v24

    move-object/from16 v28, v24

    move-object/from16 v26, v24

    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v0, 0x41

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v29, v25

    const/16 v0, 0x62

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    filled-new-array/range {v1 .. v34}, [Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/jme3/util/ListSort;

    invoke-direct {v1}, Lcom/jme3/util/ListSort;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lcom/jme3/util/ListSort;->allocateStack(I)V

    new-instance v3, Lcom/jme3/util/ListSort$1;

    invoke-direct {v3}, Lcom/jme3/util/ListSort$1;-><init>()V

    invoke-virtual {v1, v0, v3}, Lcom/jme3/util/ListSort;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method private mergeCollapse()V
    .locals 6

    :goto_0
    iget v0, p0, Lcom/jme3/util/ListSort;->nbRuns:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x2

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/jme3/util/ListSort;->runsLength:[I

    add-int/lit8 v3, v0, -0x3

    aget v3, v2, v3

    aget v4, v2, v1

    add-int/lit8 v5, v0, -0x1

    aget v2, v2, v5

    add-int/2addr v4, v2

    if-gt v3, v4, :cond_1

    if-ge v3, v2, :cond_0

    add-int/lit8 v1, v0, -0x3

    :cond_0
    invoke-direct {p0, v1}, Lcom/jme3/util/ListSort;->mergeRuns(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/jme3/util/ListSort;->runsLength:[I

    aget v3, v2, v1

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    if-gt v3, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/jme3/util/ListSort;->mergeRuns(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private mergeComputeMinRun(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x80

    if-lt p1, v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    return p1
.end method

.method private mergeForceCollapse()V
    .locals 5

    :goto_0
    iget v0, p0, Lcom/jme3/util/ListSort;->nbRuns:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x2

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/jme3/util/ListSort;->runsLength:[I

    add-int/lit8 v3, v0, -0x3

    aget v3, v2, v3

    add-int/lit8 v4, v0, -0x1

    aget v2, v2, v4

    if-ge v3, v2, :cond_0

    add-int/lit8 v1, v0, -0x3

    :cond_0
    invoke-direct {p0, v1}, Lcom/jme3/util/ListSort;->mergeRuns(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mergeHigh(IIII)V
    .locals 5

    iput p2, p0, Lcom/jme3/util/ListSort;->lengthA:I

    iput p4, p0, Lcom/jme3/util/ListSort;->lengthB:I

    add-int/2addr p2, p1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/jme3/util/ListSort;->iterA:I

    add-int/lit8 p2, p4, -0x1

    iput p2, p0, Lcom/jme3/util/ListSort;->iterB:I

    add-int p2, p3, p4

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/jme3/util/ListSort;->dest:I

    iget-object p2, p0, Lcom/jme3/util/ListSort;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/jme3/util/ListSort;->array:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/jme3/util/ListSort;->tmpArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, p3, v2, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p0, Lcom/jme3/util/ListSort;->dest:I

    iget p4, p0, Lcom/jme3/util/ListSort;->iterA:I

    aget-object v4, v1, p4

    aput-object v4, v1, p3

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/jme3/util/ListSort;->dest:I

    sub-int/2addr p4, v0

    iput p4, p0, Lcom/jme3/util/ListSort;->iterA:I

    invoke-virtual {p0, p2, v2, v1, p1}, Lcom/jme3/util/ListSort;->innerMergeHigh(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;I)V

    iget p1, p0, Lcom/jme3/util/ListSort;->minGallop:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/jme3/util/ListSort;->minGallop:I

    iget p1, p0, Lcom/jme3/util/ListSort;->lengthB:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/jme3/util/ListSort;->dest:I

    iget p2, p0, Lcom/jme3/util/ListSort;->lengthA:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/jme3/util/ListSort;->dest:I

    iget p3, p0, Lcom/jme3/util/ListSort;->iterA:I

    sub-int/2addr p3, p2

    iput p3, p0, Lcom/jme3/util/ListSort;->iterA:I

    add-int/2addr p3, v0

    add-int/2addr p1, v0

    invoke-static {v1, p3, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/jme3/util/ListSort;->dest:I

    iget p2, p0, Lcom/jme3/util/ListSort;->iterB:I

    aget-object p2, v2, p2

    aput-object p2, v1, p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget p2, p0, Lcom/jme3/util/ListSort;->dest:I

    add-int/lit8 p3, p1, -0x1

    sub-int/2addr p2, p3

    invoke-static {v2, v3, v1, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Compare function result changed! Make sure you do not modify the scene from another thread!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private mergeLow(IIII)V
    .locals 2

    iput p2, p0, Lcom/jme3/util/ListSort;->lengthA:I

    iput p4, p0, Lcom/jme3/util/ListSort;->lengthB:I

    const/4 p4, 0x0

    iput p4, p0, Lcom/jme3/util/ListSort;->iterA:I

    iput p3, p0, Lcom/jme3/util/ListSort;->iterB:I

    iput p1, p0, Lcom/jme3/util/ListSort;->dest:I

    iget-object p3, p0, Lcom/jme3/util/ListSort;->comparator:Ljava/util/Comparator;

    iget-object v0, p0, Lcom/jme3/util/ListSort;->array:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/jme3/util/ListSort;->tmpArray:[Ljava/lang/Object;

    invoke-static {v0, p1, v1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/jme3/util/ListSort;->dest:I

    iget p2, p0, Lcom/jme3/util/ListSort;->iterB:I

    aget-object p4, v0, p2

    aput-object p4, v0, p1

    const/4 p4, 0x1

    add-int/2addr p1, p4

    iput p1, p0, Lcom/jme3/util/ListSort;->dest:I

    add-int/2addr p2, p4

    iput p2, p0, Lcom/jme3/util/ListSort;->iterB:I

    invoke-virtual {p0, p3, v0, v1}, Lcom/jme3/util/ListSort;->innerMergeLow(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/jme3/util/ListSort;->minGallop:I

    if-ge p1, p4, :cond_0

    move p1, p4

    :cond_0
    iput p1, p0, Lcom/jme3/util/ListSort;->minGallop:I

    iget p1, p0, Lcom/jme3/util/ListSort;->lengthA:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Lcom/jme3/util/ListSort;->iterB:I

    iget p2, p0, Lcom/jme3/util/ListSort;->dest:I

    iget p3, p0, Lcom/jme3/util/ListSort;->lengthB:I

    invoke-static {v0, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/jme3/util/ListSort;->dest:I

    iget p2, p0, Lcom/jme3/util/ListSort;->lengthB:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/jme3/util/ListSort;->iterA:I

    aget-object p2, v1, p2

    aput-object p2, v0, p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget p2, p0, Lcom/jme3/util/ListSort;->iterA:I

    iget p3, p0, Lcom/jme3/util/ListSort;->dest:I

    invoke-static {v1, p2, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Compare function result changed! Make sure you do not modify the scene from another thread and that the comparisons are not based on NaN values."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private mergeRuns(I)V
    .locals 11

    iget-object v1, p0, Lcom/jme3/util/ListSort;->runsIndices:[I

    aget v7, v1, p1

    iget-object v2, p0, Lcom/jme3/util/ListSort;->runsLength:[I

    aget v8, v2, p1

    add-int/lit8 v3, p1, 0x1

    aget v9, v1, v3

    aget v10, v2, v3

    add-int v4, v8, v10

    aput v4, v2, p1

    iget v4, p0, Lcom/jme3/util/ListSort;->nbRuns:I

    add-int/lit8 v5, v4, -0x3

    if-ne p1, v5, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget v5, v1, v0

    aput v5, v1, v3

    aget v0, v2, v0

    aput v0, v2, v3

    :cond_0
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/jme3/util/ListSort;->nbRuns:I

    iget-object v2, p0, Lcom/jme3/util/ListSort;->array:[Ljava/lang/Object;

    aget-object v1, v2, v9

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jme3/util/ListSort;->comparator:Ljava/util/Comparator;

    move-object v0, p0

    move v3, v7

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/jme3/util/ListSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    add-int/2addr v7, v0

    sub-int/2addr v8, v0

    if-nez v8, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/jme3/util/ListSort;->array:[Ljava/lang/Object;

    add-int v0, v7, v8

    add-int/lit8 v0, v0, -0x1

    aget-object v1, v2, v0

    add-int/lit8 v5, v10, -0x1

    iget-object v6, p0, Lcom/jme3/util/ListSort;->comparator:Ljava/util/Comparator;

    move-object v0, p0

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/jme3/util/ListSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-gt v8, v0, :cond_3

    invoke-direct {p0, v7, v8, v9, v0}, Lcom/jme3/util/ListSort;->mergeLow(IIII)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v7, v8, v9, v0}, Lcom/jme3/util/ListSort;->mergeHigh(IIII)V

    :goto_0
    return-void
.end method

.method private static reverseArray([Ljava/lang/Object;II)V
    .locals 2

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_0

    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final allocateStack(I)V
    .locals 2

    iput p1, p0, Lcom/jme3/util/ListSort;->length:I

    ushr-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/jme3/util/ListSort;->tmpArray:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    array-length v1, v1

    if-le v0, v1, :cond_1

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/jme3/util/ListSort;->tmpArray:[Ljava/lang/Object;

    :cond_1
    const/16 v0, 0x578

    if-ge p1, v0, :cond_2

    const/4 p1, 0x5

    goto :goto_0

    :cond_2
    const/16 v0, 0x3d72

    if-ge p1, v0, :cond_3

    const/16 p1, 0xa

    goto :goto_0

    :cond_3
    const v0, 0x1240a2

    if-ge p1, v0, :cond_4

    const/16 p1, 0x13

    goto :goto_0

    :cond_4
    const/16 p1, 0x28

    :goto_0
    iget-object v0, p0, Lcom/jme3/util/ListSort;->runsIndices:[I

    if-eqz v0, :cond_5

    array-length v0, v0

    if-le p1, v0, :cond_6

    :cond_5
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jme3/util/ListSort;->runsIndices:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/jme3/util/ListSort;->runsLength:[I

    :cond_6
    return-void
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/jme3/util/ListSort;->length:I

    return v0
.end method

.method public innerMergeHigh(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;[TT;[TT;I)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget v0, v7, Lcom/jme3/util/ListSort;->lengthA:I

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    iput v0, v7, Lcom/jme3/util/ListSort;->lengthA:I

    if-eqz v0, :cond_c

    iget v0, v7, Lcom/jme3/util/ListSort;->lengthB:I

    if-ne v0, v10, :cond_0

    goto/16 :goto_2

    :cond_0
    if-ne v0, v10, :cond_1

    return-void

    :cond_1
    :goto_0
    const/4 v11, 0x0

    move v0, v11

    move v1, v0

    :cond_2
    iget v2, v7, Lcom/jme3/util/ListSort;->iterB:I

    aget-object v2, v8, v2

    iget v3, v7, Lcom/jme3/util/ListSort;->iterA:I

    aget-object v3, v9, v3

    move-object/from16 v12, p1

    invoke-interface {v12, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_4

    iget v0, v7, Lcom/jme3/util/ListSort;->dest:I

    iget v2, v7, Lcom/jme3/util/ListSort;->iterA:I

    aget-object v3, v9, v2

    aput-object v3, v9, v0

    sub-int/2addr v0, v10

    iput v0, v7, Lcom/jme3/util/ListSort;->dest:I

    sub-int/2addr v2, v10

    iput v2, v7, Lcom/jme3/util/ListSort;->iterA:I

    add-int/2addr v1, v10

    iget v0, v7, Lcom/jme3/util/ListSort;->lengthA:I

    sub-int/2addr v0, v10

    iput v0, v7, Lcom/jme3/util/ListSort;->lengthA:I

    if-nez v0, :cond_3

    return-void

    :cond_3
    move v0, v11

    goto :goto_1

    :cond_4
    iget v1, v7, Lcom/jme3/util/ListSort;->dest:I

    iget v2, v7, Lcom/jme3/util/ListSort;->iterB:I

    aget-object v3, v8, v2

    aput-object v3, v9, v1

    sub-int/2addr v1, v10

    iput v1, v7, Lcom/jme3/util/ListSort;->dest:I

    sub-int/2addr v2, v10

    iput v2, v7, Lcom/jme3/util/ListSort;->iterB:I

    add-int/2addr v0, v10

    iget v1, v7, Lcom/jme3/util/ListSort;->lengthB:I

    sub-int/2addr v1, v10

    iput v1, v7, Lcom/jme3/util/ListSort;->lengthB:I

    if-ne v1, v10, :cond_5

    return-void

    :cond_5
    move v1, v11

    :goto_1
    or-int v2, v1, v0

    iget v3, v7, Lcom/jme3/util/ListSort;->minGallop:I

    if-lt v2, v3, :cond_2

    :cond_6
    iget v13, v7, Lcom/jme3/util/ListSort;->lengthA:I

    iget v0, v7, Lcom/jme3/util/ListSort;->iterB:I

    aget-object v1, v8, v0

    add-int/lit8 v5, v13, -0x1

    move-object v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move v4, v13

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jme3/util/ListSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    sub-int/2addr v13, v0

    if-eqz v13, :cond_7

    iget v0, v7, Lcom/jme3/util/ListSort;->dest:I

    sub-int/2addr v0, v13

    iput v0, v7, Lcom/jme3/util/ListSort;->dest:I

    iget v1, v7, Lcom/jme3/util/ListSort;->iterA:I

    sub-int/2addr v1, v13

    iput v1, v7, Lcom/jme3/util/ListSort;->iterA:I

    iget v2, v7, Lcom/jme3/util/ListSort;->lengthA:I

    sub-int/2addr v2, v13

    iput v2, v7, Lcom/jme3/util/ListSort;->lengthA:I

    add-int/2addr v1, v10

    add-int/2addr v0, v10

    invoke-static {v9, v1, v9, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v7, Lcom/jme3/util/ListSort;->lengthA:I

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, v7, Lcom/jme3/util/ListSort;->dest:I

    iget v1, v7, Lcom/jme3/util/ListSort;->iterB:I

    aget-object v2, v8, v1

    aput-object v2, v9, v0

    sub-int/2addr v0, v10

    iput v0, v7, Lcom/jme3/util/ListSort;->dest:I

    sub-int/2addr v1, v10

    iput v1, v7, Lcom/jme3/util/ListSort;->iterB:I

    iget v0, v7, Lcom/jme3/util/ListSort;->lengthB:I

    add-int/lit8 v14, v0, -0x1

    iput v14, v7, Lcom/jme3/util/ListSort;->lengthB:I

    if-ne v14, v10, :cond_8

    return-void

    :cond_8
    iget v1, v7, Lcom/jme3/util/ListSort;->iterA:I

    aget-object v1, v9, v1

    add-int/lit8 v5, v0, -0x2

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move v4, v14

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/jme3/util/ListSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    sub-int/2addr v14, v0

    if-eqz v14, :cond_9

    iget v0, v7, Lcom/jme3/util/ListSort;->dest:I

    sub-int/2addr v0, v14

    iput v0, v7, Lcom/jme3/util/ListSort;->dest:I

    iget v1, v7, Lcom/jme3/util/ListSort;->iterB:I

    sub-int/2addr v1, v14

    iput v1, v7, Lcom/jme3/util/ListSort;->iterB:I

    iget v2, v7, Lcom/jme3/util/ListSort;->lengthB:I

    sub-int/2addr v2, v14

    iput v2, v7, Lcom/jme3/util/ListSort;->lengthB:I

    add-int/2addr v1, v10

    add-int/2addr v0, v10

    invoke-static {v8, v1, v9, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v7, Lcom/jme3/util/ListSort;->lengthB:I

    if-gt v0, v10, :cond_9

    return-void

    :cond_9
    iget v0, v7, Lcom/jme3/util/ListSort;->dest:I

    iget v1, v7, Lcom/jme3/util/ListSort;->iterA:I

    aget-object v2, v9, v1

    aput-object v2, v9, v0

    sub-int/2addr v0, v10

    iput v0, v7, Lcom/jme3/util/ListSort;->dest:I

    sub-int/2addr v1, v10

    iput v1, v7, Lcom/jme3/util/ListSort;->iterA:I

    iget v0, v7, Lcom/jme3/util/ListSort;->lengthA:I

    sub-int/2addr v0, v10

    iput v0, v7, Lcom/jme3/util/ListSort;->lengthA:I

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget v0, v7, Lcom/jme3/util/ListSort;->minGallop:I

    sub-int/2addr v0, v10

    iput v0, v7, Lcom/jme3/util/ListSort;->minGallop:I

    const/4 v1, 0x7

    if-ge v13, v1, :cond_6

    if-ge v14, v1, :cond_6

    if-gez v0, :cond_b

    iput v11, v7, Lcom/jme3/util/ListSort;->minGallop:I

    :cond_b
    iget v0, v7, Lcom/jme3/util/ListSort;->minGallop:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v7, Lcom/jme3/util/ListSort;->minGallop:I

    goto/16 :goto_0

    :cond_c
    :goto_2
    return-void
.end method

.method public innerMergeLow(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;[TT;[TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/jme3/util/ListSort;->lengthB:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jme3/util/ListSort;->lengthB:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/jme3/util/ListSort;->lengthA:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :cond_1
    iget v4, p0, Lcom/jme3/util/ListSort;->iterB:I

    aget-object v4, p2, v4

    iget v5, p0, Lcom/jme3/util/ListSort;->iterA:I

    aget-object v5, p3, v5

    invoke-interface {p1, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_3

    iget v2, p0, Lcom/jme3/util/ListSort;->dest:I

    iget v4, p0, Lcom/jme3/util/ListSort;->iterB:I

    aget-object v5, p2, v4

    aput-object v5, p2, v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/jme3/util/ListSort;->dest:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/jme3/util/ListSort;->iterB:I

    add-int/2addr v3, v1

    iget v2, p0, Lcom/jme3/util/ListSort;->lengthB:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/jme3/util/ListSort;->lengthB:I

    if-nez v2, :cond_2

    return-void

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/jme3/util/ListSort;->dest:I

    iget v4, p0, Lcom/jme3/util/ListSort;->iterA:I

    aget-object v5, p3, v4

    aput-object v5, p2, v3

    add-int/2addr v3, v1

    iput v3, p0, Lcom/jme3/util/ListSort;->dest:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/jme3/util/ListSort;->iterA:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/jme3/util/ListSort;->lengthA:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/jme3/util/ListSort;->lengthA:I

    if-ne v3, v1, :cond_4

    return-void

    :cond_4
    move v3, v0

    :goto_1
    or-int v4, v2, v3

    iget v5, p0, Lcom/jme3/util/ListSort;->minGallop:I

    if-lt v4, v5, :cond_1

    :cond_5
    iget v2, p0, Lcom/jme3/util/ListSort;->iterB:I

    aget-object v4, p2, v2

    iget v6, p0, Lcom/jme3/util/ListSort;->iterA:I

    iget v7, p0, Lcom/jme3/util/ListSort;->lengthA:I

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p3

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/jme3/util/ListSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    if-eqz v2, :cond_6

    iget v3, p0, Lcom/jme3/util/ListSort;->iterA:I

    iget v4, p0, Lcom/jme3/util/ListSort;->dest:I

    invoke-static {p3, v3, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/jme3/util/ListSort;->dest:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jme3/util/ListSort;->dest:I

    iget v3, p0, Lcom/jme3/util/ListSort;->iterA:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jme3/util/ListSort;->iterA:I

    iget v3, p0, Lcom/jme3/util/ListSort;->lengthA:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/jme3/util/ListSort;->lengthA:I

    if-gt v3, v1, :cond_6

    return-void

    :cond_6
    iget v3, p0, Lcom/jme3/util/ListSort;->dest:I

    iget v4, p0, Lcom/jme3/util/ListSort;->iterB:I

    aget-object v5, p2, v4

    aput-object v5, p2, v3

    add-int/2addr v3, v1

    iput v3, p0, Lcom/jme3/util/ListSort;->dest:I

    add-int/lit8 v8, v4, 0x1

    iput v8, p0, Lcom/jme3/util/ListSort;->iterB:I

    iget v3, p0, Lcom/jme3/util/ListSort;->lengthB:I

    add-int/lit8 v9, v3, -0x1

    iput v9, p0, Lcom/jme3/util/ListSort;->lengthB:I

    if-nez v9, :cond_7

    return-void

    :cond_7
    iget v3, p0, Lcom/jme3/util/ListSort;->iterA:I

    aget-object v6, p3, v3

    const/4 v10, 0x0

    move-object v5, p0

    move-object v7, p2

    move-object v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/jme3/util/ListSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v3

    if-eqz v3, :cond_8

    iget v4, p0, Lcom/jme3/util/ListSort;->iterB:I

    iget v5, p0, Lcom/jme3/util/ListSort;->dest:I

    invoke-static {p2, v4, p2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/jme3/util/ListSort;->dest:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/jme3/util/ListSort;->dest:I

    iget v4, p0, Lcom/jme3/util/ListSort;->iterB:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/jme3/util/ListSort;->iterB:I

    iget v4, p0, Lcom/jme3/util/ListSort;->lengthB:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/jme3/util/ListSort;->lengthB:I

    if-nez v4, :cond_8

    return-void

    :cond_8
    iget v4, p0, Lcom/jme3/util/ListSort;->dest:I

    iget v5, p0, Lcom/jme3/util/ListSort;->iterA:I

    aget-object v6, p3, v5

    aput-object v6, p2, v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/jme3/util/ListSort;->dest:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/jme3/util/ListSort;->iterA:I

    iget v4, p0, Lcom/jme3/util/ListSort;->lengthA:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/jme3/util/ListSort;->lengthA:I

    if-ne v4, v1, :cond_9

    return-void

    :cond_9
    iget v4, p0, Lcom/jme3/util/ListSort;->minGallop:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/jme3/util/ListSort;->minGallop:I

    const/4 v5, 0x7

    if-ge v2, v5, :cond_5

    if-ge v3, v5, :cond_5

    if-gez v4, :cond_a

    iput v0, p0, Lcom/jme3/util/ListSort;->minGallop:I

    :cond_a
    iget v0, p0, Lcom/jme3/util/ListSort;->minGallop:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jme3/util/ListSort;->minGallop:I

    goto/16 :goto_0

    :cond_b
    :goto_2
    return-void
.end method

.method public sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/util/ListSort;->array:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/jme3/util/ListSort;->comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/jme3/util/ListSort;->clean()V

    iget v3, p0, Lcom/jme3/util/ListSort;->length:I

    const/16 v0, 0x80

    const/4 v2, 0x0

    if-ge v3, v0, :cond_0

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/jme3/util/ListSort;->getRunLength([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jme3/util/ListSort;->binaryInsertionSort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/jme3/util/ListSort;->mergeComputeMinRun(I)I

    move-result v0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/jme3/util/ListSort;->getRunLength([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v4

    if-ge v4, v0, :cond_2

    if-gt v1, v0, :cond_1

    move v10, v1

    goto :goto_1

    :cond_1
    move v10, v0

    :goto_1
    add-int v7, v2, v10

    add-int v8, v2, v4

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/jme3/util/ListSort;->binaryInsertionSort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    move v4, v10

    :cond_2
    iget-object v5, p0, Lcom/jme3/util/ListSort;->runsIndices:[I

    iget v6, p0, Lcom/jme3/util/ListSort;->nbRuns:I

    aput v2, v5, v6

    iget-object v5, p0, Lcom/jme3/util/ListSort;->runsLength:[I

    aput v4, v5, v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/jme3/util/ListSort;->nbRuns:I

    invoke-direct {p0}, Lcom/jme3/util/ListSort;->mergeCollapse()V

    add-int/2addr v2, v4

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/jme3/util/ListSort;->mergeForceCollapse()V

    iget p1, p0, Lcom/jme3/util/ListSort;->length:I

    ushr-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/jme3/util/ListSort;->tmpArray:[Ljava/lang/Object;

    array-length v0, p2

    if-le v0, p1, :cond_4

    goto :goto_2

    :cond_4
    array-length p1, p2

    :goto_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method
