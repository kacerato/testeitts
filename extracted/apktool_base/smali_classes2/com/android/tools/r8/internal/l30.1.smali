.class public final Lcom/android/tools/r8/internal/l30;
.super Lcom/android/tools/r8/internal/i1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/o30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/o30;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/i1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o30;->clear()V

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

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/o30;->e:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/o30;->i:I

    aget-object v0, v3, v0

    if-ne v0, p1, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget-object v3, v3, Lcom/android/tools/r8/internal/o30;->b:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget v5, v5, Lcom/android/tools/r8/internal/o30;->d:I

    and-int/2addr v4, v5

    aget-object v5, v3, v4

    if-nez v5, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    if-ne v0, p1, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget v5, v5, Lcom/android/tools/r8/internal/o30;->d:I

    and-int/2addr v4, v5

    aget-object v5, v3, v4

    if-nez v5, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    if-ne v0, p1, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method public final first()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget v1, v0, Lcom/android/tools/r8/internal/o30;->k:I

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/k30;

    iget v2, v0, Lcom/android/tools/r8/internal/o30;->f:I

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/k30;-><init>(Lcom/android/tools/r8/internal/o30;I)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/k30;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/h30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/h30;-><init>(Lcom/android/tools/r8/internal/o30;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/v30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/h30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/h30;-><init>(Lcom/android/tools/r8/internal/o30;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/h30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/h30;-><init>(Lcom/android/tools/r8/internal/o30;)V

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget v1, v0, Lcom/android/tools/r8/internal/o30;->k:I

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/k30;

    iget v2, v0, Lcom/android/tools/r8/internal/o30;->g:I

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/k30;-><init>(Lcom/android/tools/r8/internal/o30;I)V

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

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/o30;->e:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    iget v4, v0, Lcom/android/tools/r8/internal/o30;->i:I

    aget-object v3, v3, v4

    if-ne v3, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o30;->e()Ljava/lang/Object;

    return v2

    :cond_1
    return v1

    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget-object v3, v3, Lcom/android/tools/r8/internal/o30;->b:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget v5, v5, Lcom/android/tools/r8/internal/o30;->d:I

    and-int/2addr v4, v5

    aget-object v5, v3, v4

    if-nez v5, :cond_3

    return v1

    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget-object v3, v0, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    aget-object v3, v3, v4

    if-ne v3, p1, :cond_4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/o30;->f(I)Ljava/lang/Object;

    return v2

    :cond_4
    return v1

    :cond_5
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget v5, v5, Lcom/android/tools/r8/internal/o30;->d:I

    and-int/2addr v4, v5

    aget-object v5, v3, v4

    if-nez v5, :cond_6

    return v1

    :cond_6
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget-object v6, v5, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    aget-object v6, v6, v4

    if-ne v6, p1, :cond_5

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/o30;->f(I)Ljava/lang/Object;

    return v2
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/l30;->b:Lcom/android/tools/r8/internal/o30;

    iget v0, v0, Lcom/android/tools/r8/internal/o30;->k:I

    return v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/k30;

    check-cast p2, Lcom/android/tools/r8/internal/k30;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/k30;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
