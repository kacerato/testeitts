.class public final Lcom/android/tools/r8/internal/J20;
.super Lcom/android/tools/r8/internal/i1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/M20;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/M20;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/i1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M20;->clear()V

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

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget-object v2, v2, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/M20;->e:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/M20;->j:I

    aget-object v0, v2, v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return v3

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget-object v4, v2, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    iget-object v2, v2, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget v6, v5, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v2, v6

    aget-object v6, v4, v2

    if-nez v6, :cond_4

    return v1

    :cond_4
    iget-object v5, v5, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v5, v0, v6}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-nez v0, :cond_6

    if-nez p1, :cond_5

    return v3

    :cond_5
    return v1

    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    add-int/2addr v2, v3

    iget-object v5, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget v6, v5, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v2, v6

    aget-object v6, v4, v2

    if-nez v6, :cond_8

    return v1

    :cond_8
    iget-object v5, v5, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v5, v0, v6}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-nez v0, :cond_a

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v1

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final first()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget v1, v0, Lcom/android/tools/r8/internal/M20;->l:I

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/I20;

    iget v2, v0, Lcom/android/tools/r8/internal/M20;->g:I

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/I20;-><init>(Lcom/android/tools/r8/internal/M20;I)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/N20;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/F20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/F20;-><init>(Lcom/android/tools/r8/internal/M20;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/v30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/F20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/F20;-><init>(Lcom/android/tools/r8/internal/M20;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/F20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/F20;-><init>(Lcom/android/tools/r8/internal/M20;)V

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget v1, v0, Lcom/android/tools/r8/internal/M20;->l:I

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/I20;

    iget v2, v0, Lcom/android/tools/r8/internal/M20;->h:I

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/I20;-><init>(Lcom/android/tools/r8/internal/M20;I)V

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

    iget-object v2, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget-object v2, v2, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/M20;->e:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/M20;->j:I

    aget-object v0, v2, v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/M20;->j()Ljava/lang/Object;

    return v3

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget-object v4, v2, Lcom/android/tools/r8/internal/M20;->b:[Ljava/lang/Object;

    iget-object v2, v2, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/jA;->a(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget v6, v5, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v2, v6

    aget-object v6, v4, v2

    if-nez v6, :cond_4

    return v1

    :cond_4
    iget-object v5, v5, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v5, v6, v0}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-nez v0, :cond_5

    if-nez p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/M20;->f(I)Ljava/lang/Object;

    return v3

    :cond_6
    return v1

    :cond_7
    add-int/2addr v2, v3

    iget-object v5, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget v6, v5, Lcom/android/tools/r8/internal/M20;->d:I

    and-int/2addr v2, v6

    aget-object v6, v4, v2

    if-nez v6, :cond_8

    return v1

    :cond_8
    iget-object v5, v5, Lcom/android/tools/r8/internal/M20;->f:Lcom/android/tools/r8/internal/Sz;

    invoke-interface {v5, v6, v0}, Lcom/android/tools/r8/internal/Sz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget-object v5, v5, Lcom/android/tools/r8/internal/M20;->c:[Ljava/lang/Object;

    aget-object v5, v5, v2

    if-nez v5, :cond_9

    if-nez p1, :cond_7

    goto :goto_2

    :cond_9
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/M20;->f(I)Ljava/lang/Object;

    return v3
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/J20;->b:Lcom/android/tools/r8/internal/M20;

    iget v0, v0, Lcom/android/tools/r8/internal/M20;->l:I

    return v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/N20;

    check-cast p2, Lcom/android/tools/r8/internal/N20;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/N20;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
