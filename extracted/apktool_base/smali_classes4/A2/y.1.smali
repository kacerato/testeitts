.class public abstract LA2/y;
.super LA2/j;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LA2/j<",
        "TN;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LA2/j;-><init>()V

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LA2/j0;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public J(LA2/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LA2/j0;->J(LA2/u;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public N()J
    .locals 2

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0}, LA2/j0;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public abstract R()LA2/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/j0<",
            "TN;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/y;->a(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/j0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/y;->b(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/j0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0}, LA2/j0;->c()Z

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

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/j0;->d(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0}, LA2/j0;->e()Ljava/util/Set;

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

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/j0;->f(Ljava/lang/Object;)I

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

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/j0;->h(LA2/u;)Z

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

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LA2/j0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/j0;->j(Ljava/lang/Object;)I

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

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0}, LA2/j0;->k()LA2/s;

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

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/j0;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public m()Z
    .locals 1

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0}, LA2/j0;->m()Z

    move-result v0

    return v0
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

    invoke-virtual {p0}, LA2/y;->R()LA2/j0;

    move-result-object v0

    invoke-interface {v0}, LA2/j0;->q()LA2/s;

    move-result-object v0

    return-object v0
.end method
