.class public final Lcom/android/tools/r8/internal/Um0;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public final b:I

.field public c:Ljava/util/List;

.field public d:Ljava/util/Map;

.field public e:Z

.field public volatile f:Lcom/android/tools/r8/internal/gn0;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/Um0;->b:I

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Comparable;)I
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1

    .line 24
    iget-object v2, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/cn0;

    .line 25
    iget-object v2, v2, Lcom/android/tools/r8/internal/cn0;->b:Ljava/lang/Comparable;

    .line 26
    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    neg-int p1, v0

    return p1

    :cond_0
    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_4

    add-int v2, v0, v1

    .line 27
    div-int/lit8 v2, v2, 0x2

    .line 28
    iget-object v3, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/cn0;

    .line 29
    iget-object v3, v3, Lcom/android/tools/r8/internal/cn0;->b:Ljava/lang/Comparable;

    .line 30
    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Um0;->e()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Um0;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/cn0;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/cn0;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Um0;->e()V

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/tools/r8/internal/Um0;->b:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 7
    iget v1, p0, Lcom/android/tools/r8/internal/Um0;->b:I

    if-lt v0, v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Um0;->e()V

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 12
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/tools/r8/internal/Um0;->b:I

    if-ne v1, v2, :cond_5

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/cn0;

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Um0;->e()V

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    instance-of v2, v2, Ljava/util/TreeMap;

    if-nez v2, :cond_4

    .line 17
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    .line 18
    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    check-cast v2, Ljava/util/SortedMap;

    .line 19
    iget-object v3, v1, Lcom/android/tools/r8/internal/cn0;->b:Ljava/lang/Comparable;

    .line 20
    iget-object v1, v1, Lcom/android/tools/r8/internal/cn0;->c:Ljava/lang/Object;

    .line 21
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    new-instance v2, Lcom/android/tools/r8/internal/cn0;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/tools/r8/internal/cn0;-><init>(Lcom/android/tools/r8/internal/Um0;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Um0;->e()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Um0;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Um0;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->f:Lcom/android/tools/r8/internal/gn0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/gn0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/gn0;-><init>(Lcom/android/tools/r8/internal/Um0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Um0;->f:Lcom/android/tools/r8/internal/gn0;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->f:Lcom/android/tools/r8/internal/gn0;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Um0;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/cn0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/cn0;->c:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/Vy;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Um0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Um0;->e()V

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Um0;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Um0;->e()V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/cn0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/cn0;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Um0;->e()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    new-instance v2, Lcom/android/tools/r8/internal/cn0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lcom/android/tools/r8/internal/cn0;-><init>(Lcom/android/tools/r8/internal/Um0;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
