.class public final LA2/D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA2/D$a;,
        LA2/D$c;,
        LA2/D$d;,
        LA2/D$b;
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LA2/z;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/z<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, LA2/z;->c()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2, p1}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(I)I
    .locals 2
    .annotation build LI2/a;
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0}, Lw2/H;->k(ZLjava/lang/String;I)V

    return p0
.end method

.method public static c(J)J
    .locals 2
    .annotation build LI2/a;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0, p1}, Lw2/H;->p(ZLjava/lang/String;J)V

    return-wide p0
.end method

.method public static d(I)I
    .locals 2
    .annotation build LI2/a;
    .end annotation

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0}, Lw2/H;->k(ZLjava/lang/String;I)V

    return p0
.end method

.method public static e(J)J
    .locals 2
    .annotation build LI2/a;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0, p1}, Lw2/H;->p(ZLjava/lang/String;J)V

    return-wide p0
.end method

.method public static f(LA2/z;)LA2/P;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/z<",
            "TN;>;)",
            "LA2/P<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p0}, LA2/A;->g(LA2/z;)LA2/A;

    move-result-object v0

    invoke-interface {p0}, LA2/z;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, LA2/A;->f(I)LA2/A;

    move-result-object v0

    invoke-virtual {v0}, LA2/A;->b()LA2/P;

    move-result-object v0

    invoke-interface {p0}, LA2/z;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, LA2/P;->p(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LA2/z;->g()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LA2/u;

    invoke-virtual {v1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, LA2/P;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static g(LA2/T;)LA2/Q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/T<",
            "TN;TE;>;)",
            "LA2/Q<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-static {p0}, LA2/U;->i(LA2/T;)LA2/U;

    move-result-object v0

    invoke-interface {p0}, LA2/T;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, LA2/U;->h(I)LA2/U;

    move-result-object v0

    invoke-interface {p0}, LA2/T;->g()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, LA2/U;->g(I)LA2/U;

    move-result-object v0

    invoke-virtual {v0}, LA2/U;->c()LA2/Q;

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

    invoke-interface {v0, v2}, LA2/Q;->p(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LA2/T;->g()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, LA2/T;->H(Ljava/lang/Object;)LA2/u;

    move-result-object v3

    invoke-virtual {v3}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, LA2/u;->i()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3, v2}, LA2/Q;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static h(LA2/j0;)LA2/S;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/j0<",
            "TN;TV;>;)",
            "LA2/S<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-static {p0}, LA2/k0;->g(LA2/j0;)LA2/k0;

    move-result-object v0

    invoke-interface {p0}, LA2/j0;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, LA2/k0;->f(I)LA2/k0;

    move-result-object v0

    invoke-virtual {v0}, LA2/k0;->b()LA2/S;

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

    invoke-interface {v0, v2}, LA2/S;->p(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LA2/j0;->g()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA2/u;

    invoke-virtual {v2}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, LA2/u;->i()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, LA2/u;->i()Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {p0, v5, v2, v6}, LA2/j0;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, v4, v2}, LA2/S;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static i(LA2/z;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/z<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-interface {p0}, LA2/z;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, LA2/z;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-interface {p0}, LA2/z;->e()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    return v3

    :cond_1
    invoke-interface {p0}, LA2/z;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Q1;->a0(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p0}, LA2/z;->e()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v0, v4, v5}, LA2/D;->o(LA2/z;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_3
    return v1
.end method

.method public static j(LA2/T;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/T<",
            "**>;)Z"
        }
    .end annotation

    invoke-interface {p0}, LA2/T;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, LA2/T;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, LA2/T;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p0}, LA2/T;->s()LA2/z;

    move-result-object v1

    invoke-interface {v1}, LA2/z;->g()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p0}, LA2/T;->s()LA2/z;

    move-result-object p0

    invoke-static {p0}, LA2/D;->i(LA2/z;)Z

    move-result p0

    return p0
.end method

.method public static k(LA2/z;Ljava/lang/Iterable;)LA2/P;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/z<",
            "TN;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "LA2/P<",
            "TN;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {p0}, LA2/A;->g(LA2/z;)LA2/A;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, LA2/A;->f(I)LA2/A;

    move-result-object v0

    invoke-virtual {v0}, LA2/A;->b()LA2/P;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LA2/A;->g(LA2/z;)LA2/A;

    move-result-object v0

    invoke-virtual {v0}, LA2/A;->b()LA2/P;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, LA2/P;->p(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0}, LA2/z;->e()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, LA2/z;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, LA2/z;->e()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v1, v3}, LA2/P;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static l(LA2/T;Ljava/lang/Iterable;)LA2/Q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/T<",
            "TN;TE;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "LA2/Q<",
            "TN;TE;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {p0}, LA2/U;->i(LA2/T;)LA2/U;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, LA2/U;->h(I)LA2/U;

    move-result-object v0

    invoke-virtual {v0}, LA2/U;->c()LA2/Q;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LA2/U;->i(LA2/T;)LA2/U;

    move-result-object v0

    invoke-virtual {v0}, LA2/U;->c()LA2/Q;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, LA2/Q;->p(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0}, LA2/T;->e()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, LA2/T;->z(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, LA2/T;->H(Ljava/lang/Object;)LA2/u;

    move-result-object v4

    invoke-virtual {v4, v1}, LA2/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, LA2/T;->e()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v1, v4, v3}, LA2/Q;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static m(LA2/j0;Ljava/lang/Iterable;)LA2/S;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/j0<",
            "TN;TV;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "LA2/S<",
            "TN;TV;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {p0}, LA2/k0;->g(LA2/j0;)LA2/k0;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, LA2/k0;->f(I)LA2/k0;

    move-result-object v0

    invoke-virtual {v0}, LA2/k0;->b()LA2/S;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LA2/k0;->g(LA2/j0;)LA2/k0;

    move-result-object v0

    invoke-virtual {v0}, LA2/k0;->b()LA2/S;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, LA2/S;->p(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0}, LA2/j0;->e()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, LA2/j0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, LA2/j0;->e()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-interface {p0, v1, v3, v4}, LA2/j0;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v4}, LA2/S;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static n(LA2/z;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/z<",
            "TN;>;TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-interface {p0}, LA2/z;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Node %s is not an element of this graph."

    invoke-static {v0, v1, p1}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LA2/e0;->g(LA2/d0;)LA2/e0;

    move-result-object p0

    invoke-virtual {p0, p1}, LA2/e0;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/r1;->r(Ljava/lang/Iterable;)Lcom/google/common/collect/r1;

    move-result-object p0

    return-object p0
.end method

.method public static o(LA2/z;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/z<",
            "TN;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "LA2/D$a;",
            ">;TN;TN;)Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA2/D$a;

    sget-object v1, LA2/D$a;->COMPLETE:LA2/D$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v1, LA2/D$a;->PENDING:LA2/D$a;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p2}, LA2/z;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1, p3}, LA2/D;->a(LA2/z;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, p1, v1, p2}, LA2/D;->o(LA2/z;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_3
    sget-object p0, LA2/D$a;->COMPLETE:LA2/D$a;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public static p(LA2/z;)LA2/z;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/z<",
            "TN;>;)",
            "LA2/z<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p0}, LA2/A;->g(LA2/z;)LA2/A;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LA2/A;->a(Z)LA2/A;

    move-result-object v0

    invoke-virtual {v0}, LA2/A;->b()LA2/P;

    move-result-object v0

    invoke-interface {p0}, LA2/z;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, LA2/z;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, LA2/D;->n(LA2/z;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v2, v4}, LA2/P;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, LA2/z;->e()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p0, v4}, LA2/D;->n(LA2/z;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-static {v4, v6}, Lcom/google/common/collect/D1;->D(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v7, v9}, LA2/P;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move v6, v8

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static q(LA2/u;)LA2/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/u<",
            "TN;>;)",
            "LA2/u<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LA2/u;->n()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, LA2/u;->m()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, LA2/u;->l(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static r(LA2/z;)LA2/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/z<",
            "TN;>;)",
            "LA2/z<",
            "TN;>;"
        }
    .end annotation

    invoke-interface {p0}, LA2/z;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, LA2/D$b;

    if-eqz v0, :cond_1

    check-cast p0, LA2/D$b;

    invoke-static {p0}, LA2/D$b;->R(LA2/D$b;)LA2/z;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LA2/D$b;

    invoke-direct {v0, p0}, LA2/D$b;-><init>(LA2/z;)V

    return-object v0
.end method

.method public static s(LA2/T;)LA2/T;
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
            "LA2/T<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-interface {p0}, LA2/T;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, LA2/D$c;

    if-eqz v0, :cond_1

    check-cast p0, LA2/D$c;

    invoke-static {p0}, LA2/D$c;->S(LA2/D$c;)LA2/T;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LA2/D$c;

    invoke-direct {v0, p0}, LA2/D$c;-><init>(LA2/T;)V

    return-object v0
.end method

.method public static t(LA2/j0;)LA2/j0;
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
            "LA2/j0<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, LA2/j0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, LA2/D$d;

    if-eqz v0, :cond_1

    check-cast p0, LA2/D$d;

    invoke-static {p0}, LA2/D$d;->S(LA2/D$d;)LA2/j0;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LA2/D$d;

    invoke-direct {v0, p0}, LA2/D$d;-><init>(LA2/j0;)V

    return-object v0
.end method
