.class public final LA2/a0;
.super LA2/c0;
.source "SourceFile"

# interfaces
.implements LA2/S;


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
        "LA2/c0<",
        "TN;TV;>;",
        "LA2/S<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field public final f:LA2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/s<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/g<",
            "-TN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LA2/c0;-><init>(LA2/g;)V

    iget-object p1, p1, LA2/g;->d:LA2/s;

    invoke-virtual {p1}, LA2/s;->a()LA2/s;

    move-result-object p1

    iput-object p1, p0, LA2/a0;->f:LA2/s;

    return-void
.end method


# virtual methods
.method public final V(Ljava/lang/Object;)LA2/B;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "LA2/B<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/a0;->W()LA2/B;

    move-result-object v0

    iget-object v1, p0, LA2/c0;->d:LA2/M;

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

.method public final W()LA2/B;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/B<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/c0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LA2/a0;->f:LA2/s;

    invoke-static {v0}, LA2/o;->w(LA2/s;)LA2/o;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LA2/a0;->f:LA2/s;

    invoke-static {v0}, LA2/g0;->k(LA2/s;)LA2/g0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public o(Ljava/lang/Object;)Z
    .locals 8
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA2/B;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, LA2/c0;->m()Z

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0, p1}, LA2/B;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, p1}, LA2/B;->f(Ljava/lang/Object;)V

    iget-wide v5, p0, LA2/c0;->e:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, LA2/c0;->e:J

    :cond_1
    invoke-interface {v0}, LA2/B;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v6, v5}, LA2/M;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LA2/B;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, LA2/B;

    invoke-interface {v5, p1}, LA2/B;->f(Ljava/lang/Object;)V

    iget-wide v5, p0, LA2/c0;->e:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, LA2/c0;->e:J

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LA2/c0;->c()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, LA2/B;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v6, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v6, v2}, LA2/M;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA2/B;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, LA2/B;

    invoke-interface {v2, p1}, LA2/B;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-static {v2}, Lw2/H;->g0(Z)V

    iget-wide v6, p0, LA2/c0;->e:J

    sub-long/2addr v6, v3

    iput-wide v6, p0, LA2/c0;->e:J

    goto :goto_1

    :cond_4
    iget-object v0, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, LA2/c0;->e:J

    invoke-static {v0, v1}, LA2/D;->c(J)J

    return v5
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

    invoke-virtual {p0, p1}, LA2/c0;->S(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, LA2/a0;->V(Ljava/lang/Object;)LA2/B;

    const/4 p1, 0x1

    return p1
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

    iget-object v0, p0, LA2/a0;->f:LA2/s;

    return-object v0
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const-string v0, "nodeU"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeV"

    invoke-static {p2, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA2/B;

    iget-object v1, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v1, p2}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LA2/B;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, LA2/B;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {v1, p1}, LA2/B;->f(Ljava/lang/Object;)V

    iget-wide v0, p0, LA2/c0;->e:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, LA2/c0;->e:J

    invoke-static {v0, v1}, LA2/D;->c(J)J

    :cond_1
    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public t(LA2/u;)Ljava/lang/Object;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, LA2/a;->P(LA2/u;)V

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LA2/a0;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public u(LA2/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, LA2/a;->P(LA2/u;)V

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, LA2/a0;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const-string v0, "nodeU"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeV"

    invoke-static {p2, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p3, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LA2/c0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v0, v1, p1}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA2/B;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, LA2/a0;->V(Ljava/lang/Object;)LA2/B;

    move-result-object v0

    :cond_1
    invoke-interface {v0, p2, p3}, LA2/B;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v1, p2}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LA2/B;

    if-nez v1, :cond_2

    invoke-virtual {p0, p2}, LA2/a0;->V(Ljava/lang/Object;)LA2/B;

    move-result-object v1

    :cond_2
    invoke-interface {v1, p1, p3}, LA2/B;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_3

    iget-wide p1, p0, LA2/c0;->e:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, LA2/c0;->e:J

    invoke-static {p1, p2}, LA2/D;->e(J)J

    :cond_3
    return-object v0
.end method
