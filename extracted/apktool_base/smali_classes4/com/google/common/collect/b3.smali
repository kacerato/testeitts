.class public final Lcom/google/common/collect/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/l2;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/b3$d;,
        Lcom/google/common/collect/b3$b;,
        Lcom/google/common/collect/b3$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/l2<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final c:Lcom/google/common/collect/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/l2<",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Q<",
            "TK;>;",
            "Lcom/google/common/collect/b3$c<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/b3$a;

    invoke-direct {v0}, Lcom/google/common/collect/b3$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/b3;->c:Lcom/google/common/collect/l2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Q1;->f0()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    return-void
.end method

.method public static synthetic b(Lcom/google/common/collect/b3;)Ljava/util/NavigableMap;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    return-object p0
.end method

.method public static synthetic l(Lcom/google/common/collect/b3;Lcom/google/common/collect/j2;Ljava/lang/Object;)Lcom/google/common/collect/j2;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/b3;->o(Lcom/google/common/collect/j2;Ljava/lang/Object;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/google/common/collect/b3;)Lcom/google/common/collect/l2;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/b3;->q()Lcom/google/common/collect/l2;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/google/common/collect/j2;Ljava/lang/Object;Ljava/util/Map$Entry;)Lcom/google/common/collect/j2;
    .locals 1
    .param p2    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Q<",
            "TK;>;",
            "Lcom/google/common/collect/b3$c<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/j2<",
            "TK;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/b3$c;

    invoke-virtual {v0}, Lcom/google/common/collect/b3$c;->e()Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/b3$c;

    invoke-virtual {v0}, Lcom/google/common/collect/b3$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/b3$c;

    invoke-virtual {p1}, Lcom/google/common/collect/b3$c;->e()Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j2;->G(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static p()Lcom/google/common/collect/b3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/b3<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b3;

    invoke-direct {v0}, Lcom/google/common/collect/b3;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/j2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/b3$c;

    invoke-virtual {v1}, Lcom/google/common/collect/b3$c;->h()Lcom/google/common/collect/Q;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/common/collect/b3$c;->h()Lcom/google/common/collect/Q;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v1}, Lcom/google/common/collect/b3$c;->h()Lcom/google/common/collect/Q;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/b3$c;

    invoke-virtual {v4}, Lcom/google/common/collect/b3$c;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/common/collect/b3;->r(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/b3$c;->f()Lcom/google/common/collect/Q;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/b3$c;

    invoke-virtual {v0}, Lcom/google/common/collect/b3$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/common/collect/b3;->r(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/b3$c;

    invoke-virtual {v1}, Lcom/google/common/collect/b3$c;->h()Lcom/google/common/collect/Q;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v1}, Lcom/google/common/collect/b3$c;->h()Lcom/google/common/collect/Q;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/b3$c;

    invoke-virtual {v0}, Lcom/google/common/collect/b3$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/common/collect/b3;->r(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object p1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public c()Lcom/google/common/collect/j2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/b3$c;

    invoke-virtual {v0}, Lcom/google/common/collect/b3$c;->e()Lcom/google/common/collect/j2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/b3$c;

    invoke-virtual {v1}, Lcom/google/common/collect/b3$c;->e()Lcom/google/common/collect/j2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-static {v0, v1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public d(Lcom/google/common/collect/j2;)Lcom/google/common/collect/l2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;)",
            "Lcom/google/common/collect/l2<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/j2;->a()Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/b3$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/b3$d;-><init>(Lcom/google/common/collect/b3;Lcom/google/common/collect/j2;)V

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b3$b;

    iget-object v1, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/b3$b;-><init>(Lcom/google/common/collect/b3;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/l2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/l2;

    invoke-virtual {p0}, Lcom/google/common/collect/b3;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/l2;->e()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    invoke-static {p1}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/b3$c;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/b3$c;->a(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b3$b;

    iget-object v1, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/b3$b;-><init>(Lcom/google/common/collect/b3;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public h(Lcom/google/common/collect/l2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l2<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/l2;->e()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/b3;->k(Lcom/google/common/collect/j2;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b3;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Lcom/google/common/collect/j2;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/b3;->k(Lcom/google/common/collect/j2;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/b3;->o(Lcom/google/common/collect/j2;Ljava/lang/Object;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/b3;->k(Lcom/google/common/collect/j2;Ljava/lang/Object;)V

    return-void
.end method

.method public j(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/b3;->f(Ljava/lang/Comparable;)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public k(Lcom/google/common/collect/j2;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/b3;->a(Lcom/google/common/collect/j2;)V

    iget-object v0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    new-instance v2, Lcom/google/common/collect/b3$c;

    invoke-direct {v2, p1, p2}, Lcom/google/common/collect/b3$c;-><init>(Lcom/google/common/collect/j2;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final o(Lcom/google/common/collect/j2;Ljava/lang/Object;)Lcom/google/common/collect/j2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;)",
            "Lcom/google/common/collect/j2<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/common/collect/b3;->n(Lcom/google/common/collect/j2;Ljava/lang/Object;Ljava/util/Map$Entry;)Lcom/google/common/collect/j2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    iget-object p1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/google/common/collect/b3;->n(Lcom/google/common/collect/j2;Ljava/lang/Object;Ljava/util/Map$Entry;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1
.end method

.method public final q()Lcom/google/common/collect/l2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/l2<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/b3;->c:Lcom/google/common/collect/l2;

    return-object v0
.end method

.method public final r(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Q<",
            "TK;>;",
            "Lcom/google/common/collect/Q<",
            "TK;>;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    new-instance v1, Lcom/google/common/collect/b3$c;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/common/collect/b3$c;-><init>(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/b3;->b:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
