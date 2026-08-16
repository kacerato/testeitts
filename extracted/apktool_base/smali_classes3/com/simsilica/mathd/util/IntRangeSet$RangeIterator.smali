.class Lcom/simsilica/mathd/util/IntRangeSet$RangeIterator;
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
    name = "RangeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/simsilica/mathd/util/IntRange;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Lcom/simsilica/mathd/util/IntRangeSet$Span;

.field final synthetic this$0:Lcom/simsilica/mathd/util/IntRangeSet;


# direct methods
.method public constructor <init>(Lcom/simsilica/mathd/util/IntRangeSet;Lcom/simsilica/mathd/util/IntRangeSet$Span;)V
    .locals 0

    iput-object p1, p0, Lcom/simsilica/mathd/util/IntRangeSet$RangeIterator;->this$0:Lcom/simsilica/mathd/util/IntRangeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/simsilica/mathd/util/IntRangeSet$RangeIterator;->current:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$RangeIterator;->current:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/simsilica/mathd/util/IntRange;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/simsilica/mathd/util/IntRangeSet$RangeIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/simsilica/mathd/util/IntRangeSet$RangeIterator;->current:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    .line 4
    iget-object v1, v0, Lcom/simsilica/mathd/util/IntRangeSet$Span;->next:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    iput-object v1, p0, Lcom/simsilica/mathd/util/IntRangeSet$RangeIterator;->current:Lcom/simsilica/mathd/util/IntRangeSet$Span;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/simsilica/mathd/util/IntRangeSet$RangeIterator;->next()Lcom/simsilica/mathd/util/IntRange;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
