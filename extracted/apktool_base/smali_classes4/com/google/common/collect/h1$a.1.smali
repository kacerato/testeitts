.class public final Lcom/google/common/collect/h1$a;
.super Lcom/google/common/collect/m1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h1;
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

    invoke-virtual {p0}, Lcom/google/common/collect/h1$a;->l()Lcom/google/common/collect/h1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lcom/google/common/collect/m1$c;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h1$a;->m(Lcom/google/common/collect/m1$c;)Lcom/google/common/collect/h1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/util/Comparator;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h1$a;->n(Ljava/util/Comparator;)Lcom/google/common/collect/h1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/util/Comparator;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h1$a;->o(Ljava/util/Comparator;)Lcom/google/common/collect/h1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/h1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/util/Map$Entry;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h1$a;->q(Ljava/util/Map$Entry;)Lcom/google/common/collect/h1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Lcom/google/common/collect/S1;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h1$a;->r(Lcom/google/common/collect/S1;)Lcom/google/common/collect/h1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Iterable;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h1$a;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/h1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/h1$a;->t(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/h1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/m1$c;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/h1$a;->u(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/h1$a;

    move-result-object p1

    return-object p1
.end method

.method public l()Lcom/google/common/collect/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/h1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/m1$c;->a()Lcom/google/common/collect/m1;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/h1;

    return-object v0
.end method

.method public m(Lcom/google/common/collect/m1$c;)Lcom/google/common/collect/h1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m1$c<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/h1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m1$c;->b(Lcom/google/common/collect/m1$c;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public n(Ljava/util/Comparator;)Lcom/google/common/collect/h1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/h1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m1$c;->d(Ljava/util/Comparator;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public o(Ljava/util/Comparator;)Lcom/google/common/collect/h1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/h1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m1$c;->e(Ljava/util/Comparator;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/h1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/m1$c;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public q(Ljava/util/Map$Entry;)Lcom/google/common/collect/h1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/h1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m1$c;->g(Ljava/util/Map$Entry;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public r(Lcom/google/common/collect/S1;)Lcom/google/common/collect/h1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S1<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/h1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m1$c;->h(Lcom/google/common/collect/S1;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public s(Ljava/lang/Iterable;)Lcom/google/common/collect/h1$a;
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
            "Lcom/google/common/collect/h1$a<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m1$c;->i(Ljava/lang/Iterable;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public t(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/h1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lcom/google/common/collect/h1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/m1$c;->j(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method

.method public varargs u(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/h1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/h1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/m1$c;->k(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/m1$c;

    return-object p0
.end method
