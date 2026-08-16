.class public final Lcom/android/tools/r8/internal/TE;
.super Lcom/android/tools/r8/internal/i1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/WE;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/WE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/i1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WE;->clear()V

    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/WE;->f:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/tools/r8/internal/WE;->d:[I

    iget v0, v0, Lcom/android/tools/r8/internal/WE;->j:I

    aget v0, v3, v0

    if-ne v0, p1, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    iget-object v3, v3, Lcom/android/tools/r8/internal/WE;->c:[I

    invoke-static {v0}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    iget v6, v5, Lcom/android/tools/r8/internal/WE;->e:I

    and-int/2addr v4, v6

    aget v6, v3, v4

    if-nez v6, :cond_5

    return v1

    :cond_5
    if-ne v0, v6, :cond_7

    iget-object v0, v5, Lcom/android/tools/r8/internal/WE;->d:[I

    aget v0, v0, v4

    if-ne v0, p1, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    iget v6, v5, Lcom/android/tools/r8/internal/WE;->e:I

    and-int/2addr v4, v6

    aget v6, v3, v4

    if-nez v6, :cond_8

    return v1

    :cond_8
    if-ne v0, v6, :cond_7

    iget-object v0, v5, Lcom/android/tools/r8/internal/WE;->d:[I

    aget v0, v0, v4

    if-ne v0, p1, :cond_9

    return v2

    :cond_9
    :goto_0
    return v1
.end method

.method public final first()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    iget v1, v0, Lcom/android/tools/r8/internal/WE;->l:I

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/SE;

    iget v2, v0, Lcom/android/tools/r8/internal/WE;->g:I

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/SE;-><init>(Lcom/android/tools/r8/internal/WE;I)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/XE;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/PE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/PE;-><init>(Lcom/android/tools/r8/internal/WE;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/v30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/PE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/PE;-><init>(Lcom/android/tools/r8/internal/WE;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/PE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/PE;-><init>(Lcom/android/tools/r8/internal/WE;)V

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    iget v1, v0, Lcom/android/tools/r8/internal/WE;->l:I

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/SE;

    iget v2, v0, Lcom/android/tools/r8/internal/WE;->h:I

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/SE;-><init>(Lcom/android/tools/r8/internal/WE;I)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/WE;->f:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/tools/r8/internal/WE;->d:[I

    iget v4, v0, Lcom/android/tools/r8/internal/WE;->j:I

    aget v3, v3, v4

    if-ne v3, p1, :cond_4

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/WE;->f:Z

    iget p1, v0, Lcom/android/tools/r8/internal/WE;->l:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/android/tools/r8/internal/WE;->l:I

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/WE;->e(I)V

    iget p1, v0, Lcom/android/tools/r8/internal/WE;->l:I

    iget v1, v0, Lcom/android/tools/r8/internal/WE;->k:I

    div-int/lit8 v1, v1, 0x4

    if-ge p1, v1, :cond_3

    iget p1, v0, Lcom/android/tools/r8/internal/WE;->j:I

    const/16 v1, 0x10

    if-le p1, v1, :cond_3

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/WE;->f(I)V

    :cond_3
    return v2

    :cond_4
    return v1

    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    iget-object v3, v3, Lcom/android/tools/r8/internal/WE;->c:[I

    invoke-static {v0}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    iget v6, v5, Lcom/android/tools/r8/internal/WE;->e:I

    and-int/2addr v4, v6

    aget v6, v3, v4

    if-nez v6, :cond_6

    return v1

    :cond_6
    if-ne v6, v0, :cond_8

    iget-object v0, v5, Lcom/android/tools/r8/internal/WE;->d:[I

    aget v0, v0, v4

    if-ne v0, p1, :cond_7

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/WE;->g(I)I

    return v2

    :cond_7
    return v1

    :cond_8
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    iget v6, v5, Lcom/android/tools/r8/internal/WE;->e:I

    and-int/2addr v4, v6

    aget v6, v3, v4

    if-nez v6, :cond_9

    return v1

    :cond_9
    if-ne v6, v0, :cond_8

    iget-object v6, v5, Lcom/android/tools/r8/internal/WE;->d:[I

    aget v6, v6, v4

    if-ne v6, p1, :cond_8

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/WE;->g(I)I

    return v2

    :cond_a
    :goto_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/TE;->b:Lcom/android/tools/r8/internal/WE;

    iget v0, v0, Lcom/android/tools/r8/internal/WE;->l:I

    return v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/XE;

    check-cast p2, Lcom/android/tools/r8/internal/XE;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/XE;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
