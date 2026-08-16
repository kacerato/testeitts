.class Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simsilica/mathd/util/IntRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntegerIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Lcom/simsilica/mathd/util/IntRangeSet$Span;

.field private nextValue:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/simsilica/mathd/util/IntRangeSet;


# direct methods
.method public constructor <init>(Lcom/simsilica/mathd/util/IntRangeSet;Lcom/simsilica/mathd/util/IntRangeSet$Span;)V
    .locals 0

    iput-object p1, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->this$0:Lcom/simsilica/mathd/util/IntRangeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->current:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    invoke-virtual {p0}, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->fetch()V

    return-void
.end method


# virtual methods
.method public fetch()V
    .locals 3

    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->current:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->nextValue:Ljava/lang/Integer;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->nextValue:Ljava/lang/Integer;

    if-nez v2, :cond_1

    iget v0, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->min:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->nextValue:Ljava/lang/Integer;

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->current:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    invoke-virtual {v2, v0}, Lcom/simsilica/mathd/util/IntRangeSet$Span;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->nextValue:Ljava/lang/Integer;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->current:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    iget-object v0, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    iput-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->current:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    iput-object v1, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->nextValue:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->fetch()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->nextValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Integer;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->nextValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->fetch()V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/simsilica/mathd/util/IntRangeSet$IntegerIterator;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
