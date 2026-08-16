.class public abstract LA2/w;
.super LA2/f;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "LA2/f<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LA2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public N()J
    .locals 2

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0}, LA2/k;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public abstract Q()LA2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/k<",
            "TN;>;"
        }
    .end annotation
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/w;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/k;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/w;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/k;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0}, LA2/k;->c()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/k;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0}, LA2/k;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/k;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public h(LA2/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/k;->h(LA2/u;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LA2/k;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/k;->j(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public k()LA2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/s<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0}, LA2/k;->k()LA2/s;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/k;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public m()Z
    .locals 1

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0}, LA2/k;->m()Z

    move-result v0

    return v0
.end method

.method public n(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "LA2/u<",
            "TN;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/k;->n(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public q()LA2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/s<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/w;->Q()LA2/k;

    move-result-object v0

    invoke-interface {v0}, LA2/k;->q()LA2/s;

    move-result-object v0

    return-object v0
.end method
