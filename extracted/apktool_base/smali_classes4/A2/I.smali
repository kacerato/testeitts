.class public final LA2/I;
.super LA2/b0;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation runtime LI2/j;
    containerOf = {
        "N",
        "E"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA2/I$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "LA2/b0<",
        "TN;TE;>;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# direct methods
.method public constructor <init>(LA2/T;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/T<",
            "TN;TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, LA2/U;->i(LA2/T;)LA2/U;

    move-result-object v0

    invoke-static {p1}, LA2/I;->e0(LA2/T;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, LA2/I;->d0(LA2/T;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, LA2/b0;-><init>(LA2/U;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic V(LA2/T;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, LA2/I;->h0(LA2/T;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(LA2/T;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, LA2/I;->g0(LA2/T;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(LA2/T;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, LA2/I;->f0(LA2/T;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static Y(LA2/T;Ljava/lang/Object;)Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/T<",
            "TN;TE;>;TN;)",
            "Lw2/t<",
            "TE;TN;>;"
        }
    .end annotation

    new-instance v0, LA2/G;

    invoke-direct {v0, p0, p1}, LA2/G;-><init>(LA2/T;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a0(LA2/T;Ljava/lang/Object;)LA2/V;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/T<",
            "TN;TE;>;TN;)",
            "LA2/V<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-interface {p0}, LA2/T;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, LA2/T;->x(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, LA2/I;->i0(LA2/T;)Lw2/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Q1;->j(Ljava/util/Set;Lw2/t;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, p1}, LA2/T;->z(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p0}, LA2/I;->j0(LA2/T;)Lw2/t;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Q1;->j(Ljava/util/Set;Lw2/t;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p0, p1, p1}, LA2/T;->v(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-interface {p0}, LA2/T;->C()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1}, LA2/p;->q(Ljava/util/Map;Ljava/util/Map;I)LA2/p;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, p1}, LA2/q;->o(Ljava/util/Map;Ljava/util/Map;I)LA2/q;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p0, p1}, LA2/T;->n(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1}, LA2/I;->Y(LA2/T;Ljava/lang/Object;)Lw2/t;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Q1;->j(Ljava/util/Set;Lw2/t;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0}, LA2/T;->C()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, LA2/h0;->q(Ljava/util/Map;)LA2/h0;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, LA2/i0;->n(Ljava/util/Map;)LA2/i0;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static b0(LA2/I;)LA2/I;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/I<",
            "TN;TE;>;)",
            "LA2/I<",
            "TN;TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LA2/I;

    return-object p0
.end method

.method public static c0(LA2/T;)LA2/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/T<",
            "TN;TE;>;)",
            "LA2/I<",
            "TN;TE;>;"
        }
    .end annotation

    instance-of v0, p0, LA2/I;

    if-eqz v0, :cond_0

    check-cast p0, LA2/I;

    goto :goto_0

    :cond_0
    new-instance v0, LA2/I;

    invoke-direct {v0, p0}, LA2/I;-><init>(LA2/T;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static d0(LA2/T;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/T<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TE;TN;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    invoke-interface {p0}, LA2/T;->g()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, LA2/T;->H(Ljava/lang/Object;)LA2/u;

    move-result-object v3

    invoke-virtual {v3}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object p0

    return-object p0
.end method

.method public static e0(LA2/T;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/T<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TN;",
            "LA2/V<",
            "TN;TE;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    invoke-interface {p0}, LA2/T;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, LA2/I;->a0(LA2/T;Ljava/lang/Object;)LA2/V;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(LA2/T;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p2}, LA2/T;->H(Ljava/lang/Object;)LA2/u;

    move-result-object p0

    invoke-virtual {p0, p1}, LA2/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(LA2/T;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, LA2/T;->H(Ljava/lang/Object;)LA2/u;

    move-result-object p0

    invoke-virtual {p0}, LA2/u;->m()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(LA2/T;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, LA2/T;->H(Ljava/lang/Object;)LA2/u;

    move-result-object p0

    invoke-virtual {p0}, LA2/u;->n()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static i0(LA2/T;)Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/T<",
            "TN;TE;>;)",
            "Lw2/t<",
            "TE;TN;>;"
        }
    .end annotation

    new-instance v0, LA2/F;

    invoke-direct {v0, p0}, LA2/F;-><init>(LA2/T;)V

    return-object v0
.end method

.method public static j0(LA2/T;)Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/T<",
            "TN;TE;>;)",
            "Lw2/t<",
            "TE;TN;>;"
        }
    .end annotation

    new-instance v0, LA2/H;

    invoke-direct {v0, p0}, LA2/H;-><init>(LA2/T;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic C()Z
    .locals 1

    invoke-super {p0}, LA2/b0;->C()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic H(Ljava/lang/Object;)LA2/u;
    .locals 0

    invoke-super {p0, p1}, LA2/b0;->H(Ljava/lang/Object;)LA2/u;

    move-result-object p1

    return-object p1
.end method

.method public Z()LA2/E;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/E<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LA2/E;

    invoke-super {p0}, LA2/h;->s()LA2/z;

    move-result-object v1

    invoke-direct {v0, v1}, LA2/E;-><init>(LA2/k;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/b0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/b0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c()Z
    .locals 1

    invoke-super {p0}, LA2/b0;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/b0;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, LA2/b0;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, LA2/b0;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()LA2/s;
    .locals 1

    invoke-super {p0}, LA2/b0;->k()LA2/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Z
    .locals 1

    invoke-super {p0}, LA2/b0;->m()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic n(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/b0;->n(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic s()LA2/z;
    .locals 1

    invoke-virtual {p0}, LA2/I;->Z()LA2/E;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1, p2}, LA2/b0;->v(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w()LA2/s;
    .locals 1

    invoke-super {p0}, LA2/b0;->w()LA2/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/b0;->x(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/b0;->z(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
