.class public final LA2/K;
.super LA2/c0;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation runtime LI2/j;
    containerOf = {
        "N",
        "V"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA2/K$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LA2/c0<",
        "TN;TV;>;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# direct methods
.method public constructor <init>(LA2/j0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/j0<",
            "TN;TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, LA2/k0;->g(LA2/j0;)LA2/k0;

    move-result-object v0

    invoke-static {p1}, LA2/K;->a0(LA2/j0;)Lcom/google/common/collect/i1;

    move-result-object v1

    invoke-interface {p1}, LA2/j0;->g()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, LA2/c0;-><init>(LA2/g;Ljava/util/Map;J)V

    return-void
.end method

.method public static synthetic V(LA2/j0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, LA2/K;->b0(LA2/j0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static X(LA2/j0;Ljava/lang/Object;)LA2/B;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/j0<",
            "TN;TV;>;TN;)",
            "LA2/B<",
            "TN;TV;>;"
        }
    .end annotation

    new-instance v0, LA2/J;

    invoke-direct {v0, p0, p1}, LA2/J;-><init>(LA2/j0;Ljava/lang/Object;)V

    invoke-interface {p0}, LA2/j0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, LA2/j0;->n(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0, v0}, LA2/o;->x(Ljava/lang/Object;Ljava/lang/Iterable;Lw2/t;)LA2/o;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, LA2/j0;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/Q1;->j(Ljava/util/Set;Lw2/t;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, LA2/g0;->l(Ljava/util/Map;)LA2/g0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static Y(LA2/K;)LA2/K;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/K<",
            "TN;TV;>;)",
            "LA2/K<",
            "TN;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LA2/K;

    return-object p0
.end method

.method public static Z(LA2/j0;)LA2/K;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/j0<",
            "TN;TV;>;)",
            "LA2/K<",
            "TN;TV;>;"
        }
    .end annotation

    instance-of v0, p0, LA2/K;

    if-eqz v0, :cond_0

    check-cast p0, LA2/K;

    goto :goto_0

    :cond_0
    new-instance v0, LA2/K;

    invoke-direct {v0, p0}, LA2/K;-><init>(LA2/j0;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static a0(LA2/j0;)Lcom/google/common/collect/i1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/j0<",
            "TN;TV;>;)",
            "Lcom/google/common/collect/i1<",
            "TN;",
            "LA2/B<",
            "TN;TV;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    invoke-interface {p0}, LA2/j0;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, LA2/K;->X(LA2/j0;Ljava/lang/Object;)LA2/B;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(LA2/j0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, LA2/j0;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1, p2, p3}, LA2/c0;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic J(LA2/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1, p2}, LA2/c0;->J(LA2/u;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public W()LA2/E;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/E<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LA2/E;

    invoke-direct {v0, p0}, LA2/E;-><init>(LA2/k;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/c0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/c0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c()Z
    .locals 1

    invoke-super {p0}, LA2/c0;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/c0;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, LA2/c0;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h(LA2/u;)Z
    .locals 0

    invoke-super {p0, p1}, LA2/c0;->h(LA2/u;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1, p2}, LA2/c0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic k()LA2/s;
    .locals 1

    invoke-super {p0}, LA2/c0;->k()LA2/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Z
    .locals 1

    invoke-super {p0}, LA2/c0;->m()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic n(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/c0;->n(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-static {}, LA2/s;->g()LA2/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()LA2/z;
    .locals 1

    invoke-virtual {p0}, LA2/K;->W()LA2/E;

    move-result-object v0

    return-object v0
.end method
