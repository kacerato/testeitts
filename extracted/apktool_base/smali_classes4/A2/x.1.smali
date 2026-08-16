.class public abstract LA2/x;
.super LA2/h;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "LA2/h<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LA2/h;-><init>()V

    return-void
.end method


# virtual methods
.method public A(LA2/u;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->A(LA2/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public B(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->B(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public C()Z
    .locals 1

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0}, LA2/T;->C()Z

    move-result v0

    return v0
.end method

.method public E(LA2/u;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->E(LA2/u;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public G(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LA2/T;->G(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/lang/Object;)LA2/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "LA2/u<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->H(Ljava/lang/Object;)LA2/u;

    move-result-object p1

    return-object p1
.end method

.method public abstract R()LA2/T;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/T<",
            "TN;TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/x;->a(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/x;->b(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0}, LA2/T;->c()Z

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

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->d(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0}, LA2/T;->e()Ljava/util/Set;

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

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0}, LA2/T;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->h(LA2/u;)Z

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

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LA2/T;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->j(Ljava/lang/Object;)I

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

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0}, LA2/T;->k()LA2/s;

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

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public m()Z
    .locals 1

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0}, LA2/T;->m()Z

    move-result v0

    return v0
.end method

.method public n(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->n(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LA2/T;->v(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public w()LA2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/s<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0}, LA2/T;->w()LA2/s;

    move-result-object v0

    return-object v0
.end method

.method public x(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->x(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/x;->R()LA2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LA2/T;->z(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
