.class public final Lcom/google/common/collect/s1$a;
.super Lcom/google/common/collect/m1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/m1$c<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/m1$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/m1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/s1$a;->l()Lcom/google/common/collect/s1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lcom/google/common/collect/m1$c;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1$a;->m(Lcom/google/common/collect/m1$c;)Lcom/google/common/collect/s1$a;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/h2;->h()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/util/Comparator;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1$a;->n(Ljava/util/Comparator;)Lcom/google/common/collect/s1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/util/Comparator;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1$a;->o(Ljava/util/Comparator;)Lcom/google/common/collect/s1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/s1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/util/Map$Entry;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1$a;->q(Ljava/util/Map$Entry;)Lcom/google/common/collect/s1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Lcom/google/common/collect/S1;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1$a;->r(Lcom/google/common/collect/S1;)Lcom/google/common/collect/s1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Iterable;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/s1$a;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/s1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/s1$a;->t(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/s1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/s1$a;->u(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/s1$a;

    move-result-object p1

    return-object p1
.end method

.method public l()Lcom/google/common/collect/s1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/s1<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m1$c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/m1$c;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->i(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->D()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/Ordering;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/m1$c;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/s1;->V(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/s1;

    move-result-object v0

    return-object v0
.end method

.method public m(Lcom/google/common/collect/m1$c;)Lcom/google/common/collect/s1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m1$c<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/s1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m1$c;->b(Lcom/google/common/collect/m1$c;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public n(Ljava/util/Comparator;)Lcom/google/common/collect/s1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/s1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m1$c;->d(Ljava/util/Comparator;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public o(Ljava/util/Comparator;)Lcom/google/common/collect/s1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/s1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m1$c;->e(Ljava/util/Comparator;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/s1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/s1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/m1$c;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public q(Ljava/util/Map$Entry;)Lcom/google/common/collect/s1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/s1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m1$c;->g(Ljava/util/Map$Entry;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public r(Lcom/google/common/collect/S1;)Lcom/google/common/collect/s1$a;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S1<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/s1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/S1;->k()Ljava/util/Map;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/s1$a;->t(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/s1$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public s(Ljava/lang/Iterable;)Lcom/google/common/collect/s1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/s1$a<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m1$c;->i(Ljava/lang/Iterable;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public t(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/s1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lcom/google/common/collect/s1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/m1$c;->j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public varargs u(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/s1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/s1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/s1$a;->t(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/s1$a;

    move-result-object p1

    return-object p1
.end method
