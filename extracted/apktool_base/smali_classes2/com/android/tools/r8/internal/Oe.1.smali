.class public final Lcom/android/tools/r8/internal/Oe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# instance fields
.field public final a:Ljava/util/Spliterator$OfInt;

.field public final synthetic b:Ljava/util/function/IntFunction;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntFunction;ILjava/util/Comparator;)V
    .locals 0

    iput-object p2, p0, Lcom/android/tools/r8/internal/Oe;->b:Ljava/util/function/IntFunction;

    iput p3, p0, Lcom/android/tools/r8/internal/Oe;->c:I

    iput-object p4, p0, Lcom/android/tools/r8/internal/Oe;->d:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Oe;->a:Ljava/util/Spliterator$OfInt;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Oe;->c:I

    or-int/lit16 v0, v0, 0x4050

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oe;->a:Ljava/util/Spliterator$OfInt;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oe;->a:Ljava/util/Spliterator$OfInt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Oe;->b:Ljava/util/function/IntFunction;

    new-instance v2, Lcom/android/tools/r8/internal/eQ0;

    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/eQ0;-><init>(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;)V

    invoke-interface {v0, v2}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oe;->d:Ljava/util/Comparator;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oe;->a:Ljava/util/Spliterator$OfInt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Oe;->b:Ljava/util/function/IntFunction;

    new-instance v2, Lcom/android/tools/r8/internal/fQ0;

    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/fQ0;-><init>(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;)V

    invoke-interface {v0, v2}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oe;->a:Ljava/util/Spliterator$OfInt;

    invoke-interface {v0}, Ljava/util/Spliterator$OfInt;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/Oe;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Oe;->b:Ljava/util/function/IntFunction;

    iget v3, p0, Lcom/android/tools/r8/internal/Oe;->c:I

    iget-object v4, p0, Lcom/android/tools/r8/internal/Oe;->d:Ljava/util/Comparator;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/tools/r8/internal/Oe;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntFunction;ILjava/util/Comparator;)V

    return-object v1
.end method
