.class public Ljf/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Fitness::",
        "Ljava/lang/Comparable<",
        "TFitness;>;Element:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/logging/Logger;

.field public static final synthetic e:Z


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "TFitness;",
            "Ljava/util/List<",
            "TElement;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljf/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/j;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljf/j;->b:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Ljf/j;->c:Ljava/util/TreeMap;

    const-string v0, "capacity"

    invoke-static {p1, v0}, Lif/E;->F(ILjava/lang/String;)Z

    iput p1, p0, Ljf/j;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Comparable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElement;TFitness;)V"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget v0, p0, Ljf/j;->b:I

    iget v1, p0, Ljf/j;->a:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljf/j;->n()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljf/j;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Ljf/j;->b:I

    iget p1, p0, Ljf/j;->a:I

    invoke-virtual {p0, p1}, Ljf/j;->d(I)V

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {p1, p2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :cond_3
    return-void
.end method

.method public b(Ljava/util/List;Ljava/lang/Comparable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TElement;>;TFitness;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget v0, p0, Ljf/j;->b:I

    iget v1, p0, Ljf/j;->a:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljf/j;->n()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v1, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Ljf/j;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljf/j;->b:I

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {p1, p2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :cond_4
    iget p1, p0, Ljf/j;->a:I

    invoke-virtual {p0, p1}, Ljf/j;->d(I)V

    return-void
.end method

.method public c()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFitness;"
        }
    .end annotation

    iget-object v0, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public d(I)V
    .locals 4

    const-string v0, "target size"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    :cond_0
    :goto_0
    iget v0, p0, Ljf/j;->b:I

    if-le v0, p1, :cond_3

    iget-object v0, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Ljf/j;->b:I

    sub-int/2addr v3, v2

    if-lt v3, p1, :cond_1

    iget-object v1, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v0, p0, Ljf/j;->b:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljf/j;->b:I

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v1, p0, Ljf/j;->b:I

    if-le v1, p1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget v1, p0, Ljf/j;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljf/j;->b:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TElement;"
        }
    .end annotation

    iget-object v0, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Ljf/j;->a:I

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TElement;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Ljf/j;->b:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public h(ILjf/j;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljf/j<",
            "TFitness;TElement;>;)I"
        }
    .end annotation

    const-string v0, "maxCount"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "destination"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v1

    if-gt v4, p1, :cond_0

    invoke-virtual {p2, v3, v2}, Ljf/j;->b(Ljava/util/List;Ljava/lang/Comparable;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    if-ge v1, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Ljf/j;->a(Ljava/lang/Object;Ljava/lang/Comparable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public i(Ljava/util/BitSet;Ljf/j;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            "Ljf/j<",
            "TFitness;TElement;>;)I"
        }
    .end annotation

    const-string v0, "subset"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "destination"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v3, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v1

    if-gt v7, v4, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-ne v1, v4, :cond_3

    invoke-virtual {p2, v7, v5}, Ljf/j;->a(Ljava/lang/Object;Ljava/lang/Comparable;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public j(Ljf/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljf/j<",
            "TFitness;TElement;>;)V"
        }
    .end annotation

    const-string v0, "destination"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-virtual {p1, v2, v1}, Ljf/j;->b(Ljava/util/List;Ljava/lang/Comparable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(ILkf/a;Ljf/j;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkf/a;",
            "Ljf/j<",
            "TFitness;TElement;>;)I"
        }
    .end annotation

    const-string v0, "maxCount"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "generator"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "destination"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget v0, p0, Ljf/j;->b:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0, p3}, Ljf/j;->j(Ljf/j;)V

    iget p1, p0, Ljf/j;->b:I

    return p1

    :cond_0
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Ljf/j;->b:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iget v1, p0, Ljf/j;->b:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    invoke-virtual {p2, v0, v1, v2}, Lkf/a;->i(Ljava/util/BitSet;IZ)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p3}, Ljf/j;->i(Ljava/util/BitSet;Ljf/j;)I

    move-result p1

    return p1
.end method

.method public l(I)V
    .locals 1

    const-string v0, "new capacity"

    invoke-static {p1, v0}, Lif/E;->F(ILjava/lang/String;)Z

    iput p1, p0, Ljf/j;->a:I

    invoke-virtual {p0, p1}, Ljf/j;->d(I)V

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Ljf/j;->b:I

    return v0
.end method

.method public n()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFitness;"
        }
    .end annotation

    iget-object v0, p0, Ljf/j;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method
