.class public Lcom/simsilica/mathd/trans/TransitionBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/simsilica/mathd/trans/Transition;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final array:[Lcom/simsilica/mathd/trans/Transition;

.field private count:I

.field private volatile head:I

.field private volatile tail:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->head:I

    iput v0, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->tail:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Lcom/simsilica/mathd/trans/Transition;

    iput-object p1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->array:[Lcom/simsilica/mathd/trans/Transition;

    return-void
.end method

.method private next(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->array:[Lcom/simsilica/mathd/trans/Transition;

    array-length v0, v0

    rem-int/2addr p1, v0

    return p1
.end method

.method private previous(I)I
    .locals 0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->array:[Lcom/simsilica/mathd/trans/Transition;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method public addTransition(Lcom/simsilica/mathd/trans/Transition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->tail:I

    invoke-direct {p0, v0}, Lcom/simsilica/mathd/trans/TransitionBuffer;->next(I)I

    move-result v0

    iget v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->head:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->array:[Lcom/simsilica/mathd/trans/Transition;

    iget v2, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->head:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->head:I

    invoke-direct {p0, v1}, Lcom/simsilica/mathd/trans/TransitionBuffer;->next(I)I

    move-result v1

    iput v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->head:I

    :cond_0
    iget v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->count:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->array:[Lcom/simsilica/mathd/trans/Transition;

    iget v2, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->tail:I

    aput-object p1, v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->array:[Lcom/simsilica/mathd/trans/Transition;

    iget v2, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->tail:I

    invoke-direct {p0, v2}, Lcom/simsilica/mathd/trans/TransitionBuffer;->previous(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {p1, v1}, Lcom/simsilica/mathd/trans/Transition;->setPreviousTransition(Lcom/simsilica/mathd/trans/Transition;)V

    iget-object v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->array:[Lcom/simsilica/mathd/trans/Transition;

    iget v2, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->tail:I

    aput-object p1, v1, v2

    :goto_0
    iput v0, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->tail:I

    iget p1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->count:I

    iget-object v0, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->array:[Lcom/simsilica/mathd/trans/Transition;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->count:I

    :cond_2
    return-void
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->array:[Lcom/simsilica/mathd/trans/Transition;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getTransition(J)Lcom/simsilica/mathd/trans/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/simsilica/mathd/trans/TransitionBuffer;->getTransition(JZ)Lcom/simsilica/mathd/trans/Transition;

    move-result-object p1

    return-object p1
.end method

.method public getTransition(JZ)Lcom/simsilica/mathd/trans/Transition;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)TT;"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->head:I

    .line 3
    iget v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->tail:I

    if-ne v0, v1, :cond_0

    .line 4
    iget v2, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->count:I

    if-lez v2, :cond_0

    .line 5
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "**** TimeBuffer inconsistency.  This shouldn\'t happen."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    move v3, v0

    move-object v4, v2

    :goto_0
    if-eq v3, v1, :cond_5

    .line 6
    iget-object v5, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->array:[Lcom/simsilica/mathd/trans/Transition;

    aget-object v5, v5, v3

    if-nez v5, :cond_1

    .line 7
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "element is null:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  head:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " tail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v5}, Lcom/simsilica/mathd/trans/Transition;->getStartTime()J

    move-result-wide v6

    cmp-long v4, p1, v6

    if-gez v4, :cond_3

    if-eqz p3, :cond_2

    return-object v5

    :cond_2
    return-object v2

    .line 9
    :cond_3
    invoke-interface {v5}, Lcom/simsilica/mathd/trans/Transition;->getEndTime()J

    move-result-wide v6

    cmp-long v4, p1, v6

    if-gtz v4, :cond_4

    return-object v5

    :cond_4
    move-object v4, v5

    .line 10
    :goto_1
    invoke-direct {p0, v3}, Lcom/simsilica/mathd/trans/TransitionBuffer;->next(I)I

    move-result v3

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    return-object v4

    :cond_6
    return-object v2
.end method

.method public isFilled()Z
    .locals 3

    iget v0, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->count:I

    iget-object v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->array:[Lcom/simsilica/mathd/trans/Transition;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionBuffer[ h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->head:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", t:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->tail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", array:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simsilica/mathd/trans/TransitionBuffer;->array:[Lcom/simsilica/mathd/trans/Transition;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
