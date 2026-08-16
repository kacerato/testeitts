.class public Lcom/google/common/collect/c3;
.super Lcom/google/common/collect/k;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/c3$f;,
        Lcom/google/common/collect/c3$g;,
        Lcom/google/common/collect/c3$c;,
        Lcom/google/common/collect/c3$d;,
        Lcom/google/common/collect/c3$e;,
        Lcom/google/common/collect/c3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lcom/google/common/collect/k<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/c;
.end annotation


# instance fields
.field public final b:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient e:Lcom/google/common/collect/m2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m2<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/collect/c3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/c3;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method

.method public static synthetic q(Lcom/google/common/collect/c3;Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c3;->v(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static r()Lcom/google/common/collect/c3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/c3<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/c3;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/c3;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static s(Lcom/google/common/collect/m2;)Lcom/google/common/collect/c3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Lcom/google/common/collect/m2<",
            "TC;>;)",
            "Lcom/google/common/collect/c3<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/c3;->r()Lcom/google/common/collect/c3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/c3;->p(Lcom/google/common/collect/m2;)V

    return-object v0
.end method

.method public static u(Ljava/lang/Iterable;)Lcom/google/common/collect/c3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;)",
            "Lcom/google/common/collect/c3<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/c3;->r()Lcom/google/common/collect/c3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/c3;->b(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/j2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    iget-object v1, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v2, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v2, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v2, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-static {v1, v2}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/c3;->w(Lcom/google/common/collect/j2;)V

    :cond_1
    iget-object v0, v0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-static {v0, v1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/c3;->w(Lcom/google/common/collect/j2;)V

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v2, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v0, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-static {v1, v0}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/c3;->w(Lcom/google/common/collect/j2;)V

    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object p1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Iterable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->b(Ljava/lang/Iterable;)V

    return-void
.end method

.method public c()Lcom/google/common/collect/j2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-static {v0, v1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/k;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public d()Lcom/google/common/collect/m2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m2<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3;->e:Lcom/google/common/collect/m2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/c3$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/c3$c;-><init>(Lcom/google/common/collect/c3;)V

    iput-object v0, p0, Lcom/google/common/collect/c3;->e:Lcom/google/common/collect/m2;

    :cond_0
    return-object v0
.end method

.method public e(Lcom/google/common/collect/j2;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/j2;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    iget-object v2, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/j2;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->v()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic f(Ljava/lang/Iterable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->f(Ljava/lang/Iterable;)V

    return-void
.end method

.method public bridge synthetic g(Lcom/google/common/collect/m2;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->g(Lcom/google/common/collect/m2;)Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    invoke-static {p1}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/j2;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Lcom/google/common/collect/j2;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->n(Lcom/google/common/collect/j2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/k;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j(Ljava/lang/Iterable;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->j(Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public k(Lcom/google/common/collect/j2;)Lcom/google/common/collect/m2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)",
            "Lcom/google/common/collect/m2<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/j2;->a()Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/c3$f;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/c3$f;-><init>(Lcom/google/common/collect/c3;Lcom/google/common/collect/j2;)V

    :goto_0
    return-object v0
.end method

.method public l()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/c3$b;

    iget-object v1, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/c3$b;-><init>(Lcom/google/common/collect/c3;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/c3;->d:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public m()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/c3$b;

    iget-object v1, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/c3$b;-><init>(Lcom/google/common/collect/c3;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/c3;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic n(Lcom/google/common/collect/m2;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->n(Lcom/google/common/collect/m2;)V

    return-void
.end method

.method public o(Lcom/google/common/collect/j2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object p1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    iget-object v2, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v0, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p1, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    :cond_1
    iget-object v0, v1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    iget-object v2, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object p1, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    invoke-interface {v1, v0, p1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-static {v0, p1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c3;->w(Lcom/google/common/collect/j2;)V

    return-void
.end method

.method public bridge synthetic p(Lcom/google/common/collect/m2;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/k;->p(Lcom/google/common/collect/m2;)V

    return-void
.end method

.method public final v(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/j2;->n(Lcom/google/common/collect/j2;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/j2;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final w(Lcom/google/common/collect/j2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    iget-object p1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
