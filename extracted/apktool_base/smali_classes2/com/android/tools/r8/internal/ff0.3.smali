.class public final Lcom/android/tools/r8/internal/ff0;
.super Lcom/android/tools/r8/internal/WC;
.source "SourceFile"


# static fields
.field public static final i:Lcom/android/tools/r8/internal/ff0;


# instance fields
.field public final transient h:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/ff0;

    sget-object v1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    sget-object v2, Lcom/android/tools/r8/internal/dZ;->b:Lcom/android/tools/r8/internal/dZ;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ff0;-><init>(Lcom/android/tools/r8/internal/hC;Ljava/util/Comparator;)V

    sput-object v0, Lcom/android/tools/r8/internal/ff0;->i:Lcom/android/tools/r8/internal/ff0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/WC;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/hC;->a(I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Z)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    .line 5
    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1

    :cond_1
    not-int p1, p1

    return p1
.end method

.method public final b(Ljava/lang/Object;Z)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    .line 5
    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    not-int p1, p1

    return p1
.end method

.method public final b()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->c()I

    move-result v0

    return v0
.end method

.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/ff0;->b(Ljava/lang/Object;Z)I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    iget-object v2, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 6

    instance-of v0, p1, Lcom/android/tools/r8/internal/LY;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/LY;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/LY;->w()Ljava/util/Set;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Ljava/util/SortedSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/tools/r8/internal/dZ;->b:Lcom/android/tools/r8/internal/dZ;

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/android/tools/r8/internal/jn0;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/jn0;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/jn0;->comparator()Ljava/util/Comparator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :cond_6
    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-interface {v5, v4, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    return v2

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_8
    if-nez v5, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    return v1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_a
    if-lez v5, :cond_6

    :catch_0
    return v2

    :cond_b
    :goto_3
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->d()I

    move-result v0

    return v0
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->i()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    return-object v0
.end method

.method public final e(II)Lcom/android/tools/r8/internal/ff0;
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/ff0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/hC;->e(II)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/ff0;-><init>(Lcom/android/tools/r8/internal/hC;Ljava/util/Comparator;)V

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-static {p1}, Lcom/android/tools/r8/internal/WC;->a(Ljava/util/Comparator;)Lcom/android/tools/r8/internal/ff0;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, p1, Ljava/util/SortedSet;

    if-eqz v3, :cond_4

    move-object v3, p1

    check-cast v3, Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/tools/r8/internal/dZ;->b:Lcom/android/tools/r8/internal/dZ;

    goto :goto_0

    :cond_4
    instance-of v3, p1, Lcom/android/tools/r8/internal/jn0;

    if-eqz v3, :cond_6

    move-object v3, p1

    check-cast v3, Lcom/android/tools/r8/internal/jn0;

    invoke-interface {v3}, Lcom/android/tools/r8/internal/jn0;->comparator()Ljava/util/Comparator;

    move-result-object v3

    :cond_5
    :goto_0
    invoke-interface {v1, v3}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-interface {v5, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_7

    :cond_8
    return v2

    :cond_9
    return v0

    :catch_0
    return v2

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ff0;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final first()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/ff0;->a(Ljava/lang/Object;Z)I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->g()Z

    move-result v0

    return v0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/ff0;->b(Ljava/lang/Object;Z)I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/hC;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/RC;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/RC;-><init>(Lcom/android/tools/r8/internal/ff0;Lcom/android/tools/r8/internal/hC;)V

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/ff0;->a(Ljava/lang/Object;Z)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
