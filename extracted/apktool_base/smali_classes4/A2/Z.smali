.class public final LA2/Z;
.super LA2/b0;
.source "SourceFile"

# interfaces
.implements LA2/Q;


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
        "LA2/b0<",
        "TN;TE;>;",
        "LA2/Q<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(LA2/U;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/U<",
            "-TN;-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LA2/b0;-><init>(LA2/U;)V

    return-void
.end method


# virtual methods
.method public F(LA2/u;Ljava/lang/Object;)Z
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LA2/h;->Q(LA2/u;)V

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, LA2/Z;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public L(Ljava/lang/Object;)Z
    .locals 6
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "edge"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LA2/b0;->g:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, LA2/b0;->f:LA2/M;

    invoke-virtual {v2, v0}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA2/V;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, LA2/V;

    invoke-interface {v2, p1}, LA2/V;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, LA2/b0;->f:LA2/M;

    invoke-virtual {v4, v3}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LA2/V;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, LA2/V;

    invoke-interface {v2, p1}, LA2/V;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LA2/b0;->m()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    :cond_1
    invoke-interface {v4, p1, v1}, LA2/V;->h(Ljava/lang/Object;Z)Ljava/lang/Object;

    iget-object v0, p0, LA2/b0;->g:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return v5
.end method

.method public M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)Z"
        }
    .end annotation

    const-string v0, "nodeU"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeV"

    invoke-static {p2, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "edge"

    invoke-static {p3, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, LA2/b0;->T(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, LA2/b0;->H(Ljava/lang/Object;)LA2/u;

    move-result-object v0

    invoke-static {p0, p1, p2}, LA2/u;->k(LA2/T;Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p1

    invoke-virtual {v0, p1}, LA2/u;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v2, "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s."

    invoke-static {p2, v2, p3, v0, p1}, Lw2/H;->z(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v0, p0, LA2/b0;->f:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA2/V;

    invoke-virtual {p0}, LA2/b0;->C()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    if-eqz v0, :cond_1

    invoke-interface {v0}, LA2/V;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    const-string v2, "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder."

    invoke-static {v1, v2, p1, p2}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, LA2/b0;->m()Z

    move-result v2

    if-nez v2, :cond_4

    xor-int/lit8 v2, v1, 0x1

    const-string v4, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v2, v4, p1}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, LA2/Z;->V(Ljava/lang/Object;)LA2/V;

    move-result-object v0

    :cond_5
    invoke-interface {v0, p3, p2}, LA2/V;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, LA2/b0;->f:LA2/M;

    invoke-virtual {v0, p2}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA2/V;

    if-nez v0, :cond_6

    invoke-virtual {p0, p2}, LA2/Z;->V(Ljava/lang/Object;)LA2/V;

    move-result-object v0

    :cond_6
    invoke-interface {v0, p3, p1, v1}, LA2/V;->j(Ljava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p2, p0, LA2/b0;->g:LA2/M;

    invoke-virtual {p2, p3, p1}, LA2/M;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public final V(Ljava/lang/Object;)LA2/V;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "LA2/V<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/Z;->W()LA2/V;

    move-result-object v0

    iget-object v1, p0, LA2/b0;->f:LA2/M;

    invoke-virtual {v1, p1, v0}, LA2/M;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lw2/H;->g0(Z)V

    return-object v0
.end method

.method public final W()LA2/V;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/V<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/b0;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LA2/b0;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LA2/p;->p()LA2/p;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, LA2/q;->n()LA2/q;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LA2/b0;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, LA2/h0;->p()LA2/h0;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, LA2/i0;->m()LA2/i0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public o(Ljava/lang/Object;)Z
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LA2/b0;->f:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA2/V;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0}, LA2/V;->k()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/g1;->r(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, LA2/Z;->L(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, LA2/b0;->f:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LA2/b0;->U(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, LA2/Z;->V(Ljava/lang/Object;)LA2/V;

    const/4 p1, 0x1

    return p1
.end method
