.class public final Lcom/android/tools/r8/internal/h20;
.super Lcom/android/tools/r8/internal/i1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/k20;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/k20;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/i1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/k20;->clear()V

    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/k20;->f:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/tools/r8/internal/k20;->d:[I

    iget v0, v0, Lcom/android/tools/r8/internal/k20;->j:I

    aget v0, v3, v0

    if-ne v0, p1, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget-object v3, v3, Lcom/android/tools/r8/internal/k20;->c:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget v5, v5, Lcom/android/tools/r8/internal/k20;->e:I

    and-int/2addr v4, v5

    aget-object v5, v3, v4

    if-nez v5, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/k20;->d:[I

    aget v0, v0, v4

    if-ne v0, p1, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget v5, v5, Lcom/android/tools/r8/internal/k20;->e:I

    and-int/2addr v4, v5

    aget-object v5, v3, v4

    if-nez v5, :cond_7

    return v1

    :cond_7
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/k20;->d:[I

    aget v0, v0, v4

    if-ne v0, p1, :cond_8

    return v2

    :cond_8
    :goto_0
    return v1
.end method

.method public final first()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget v1, v0, Lcom/android/tools/r8/internal/k20;->l:I

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/g20;

    iget v2, v0, Lcom/android/tools/r8/internal/k20;->g:I

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/g20;-><init>(Lcom/android/tools/r8/internal/k20;I)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/l20;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/d20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/d20;-><init>(Lcom/android/tools/r8/internal/k20;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/v30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/d20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/d20;-><init>(Lcom/android/tools/r8/internal/k20;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/d20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/d20;-><init>(Lcom/android/tools/r8/internal/k20;)V

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget v1, v0, Lcom/android/tools/r8/internal/k20;->l:I

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/g20;

    iget v2, v0, Lcom/android/tools/r8/internal/k20;->h:I

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/g20;-><init>(Lcom/android/tools/r8/internal/k20;I)V

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

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/k20;->f:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/tools/r8/internal/k20;->d:[I

    iget v4, v0, Lcom/android/tools/r8/internal/k20;->j:I

    aget v3, v3, v4

    if-ne v3, p1, :cond_3

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/k20;->f:Z

    iget-object p1, v0, Lcom/android/tools/r8/internal/k20;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, p1, v4

    iget p1, v0, Lcom/android/tools/r8/internal/k20;->l:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/android/tools/r8/internal/k20;->l:I

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/k20;->e(I)V

    iget p1, v0, Lcom/android/tools/r8/internal/k20;->l:I

    iget v1, v0, Lcom/android/tools/r8/internal/k20;->k:I

    div-int/lit8 v1, v1, 0x4

    if-ge p1, v1, :cond_2

    iget p1, v0, Lcom/android/tools/r8/internal/k20;->j:I

    const/16 v1, 0x10

    if-le p1, v1, :cond_2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/k20;->f(I)V

    :cond_2
    return v2

    :cond_3
    return v1

    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget-object v3, v3, Lcom/android/tools/r8/internal/k20;->c:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget v5, v5, Lcom/android/tools/r8/internal/k20;->e:I

    and-int/2addr v4, v5

    aget-object v5, v3, v4

    if-nez v5, :cond_5

    return v1

    :cond_5
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget-object v3, v0, Lcom/android/tools/r8/internal/k20;->d:[I

    aget v3, v3, v4

    if-ne v3, p1, :cond_6

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/k20;->g(I)I

    return v2

    :cond_6
    return v1

    :cond_7
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget v5, v5, Lcom/android/tools/r8/internal/k20;->e:I

    and-int/2addr v4, v5

    aget-object v5, v3, v4

    if-nez v5, :cond_8

    return v1

    :cond_8
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget-object v6, v5, Lcom/android/tools/r8/internal/k20;->d:[I

    aget v6, v6, v4

    if-ne v6, p1, :cond_7

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/k20;->g(I)I

    return v2

    :cond_9
    :goto_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/h20;->b:Lcom/android/tools/r8/internal/k20;

    iget v0, v0, Lcom/android/tools/r8/internal/k20;->l:I

    return v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/l20;

    check-cast p2, Lcom/android/tools/r8/internal/l20;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/l20;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
