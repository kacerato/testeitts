.class public final Lcom/google/common/collect/W1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/W1$n;,
        Lcom/google/common/collect/W1$g;,
        Lcom/google/common/collect/W1$l;,
        Lcom/google/common/collect/W1$i;,
        Lcom/google/common/collect/W1$h;,
        Lcom/google/common/collect/W1$f;,
        Lcom/google/common/collect/W1$j;,
        Lcom/google/common/collect/W1$k;,
        Lcom/google/common/collect/W1$m;
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/google/common/collect/V1;)Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "+TE;>;)",
            "Lcom/google/common/collect/V1<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/W1$m;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/common/collect/n1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/W1$m;

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/V1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/W1$m;-><init>(Lcom/google/common/collect/V1;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static B(Lcom/google/common/collect/K2;)Lcom/google/common/collect/K2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/K2<",
            "TE;>;)",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lcom/google/common/collect/g3;

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/K2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g3;-><init>(Lcom/google/common/collect/K2;)V

    return-object v0
.end method

.method public static a(Lcom/google/common/collect/V1;Lcom/google/common/collect/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "TE;>;",
            "Lcom/google/common/collect/f<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/collect/i;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/common/collect/f;->h(Lcom/google/common/collect/V1;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "TE;>;",
            "Lcom/google/common/collect/V1<",
            "+TE;>;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/f;

    invoke-static {p0, p1}, Lcom/google/common/collect/W1;->a(Lcom/google/common/collect/V1;Lcom/google/common/collect/f;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1$a;

    invoke-interface {v0}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lcom/google/common/collect/V1;->y6(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Lcom/google/common/collect/V1;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/common/collect/V1;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/W1;->d(Ljava/lang/Iterable;)Lcom/google/common/collect/V1;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/W1;->b(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/E1;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Iterable;)Lcom/google/common/collect/V1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lcom/google/common/collect/V1<",
            "TT;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/V1;

    return-object p0
.end method

.method public static e(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Z
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/V1<",
            "*>;",
            "Lcom/google/common/collect/V1<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1$a;

    invoke-interface {v0}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static f(Lcom/google/common/collect/V1;)Lcom/google/common/collect/n1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "TE;>;)",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/collect/V1$a;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/common/collect/V1$a;

    sget-object v0, Lcom/google/common/collect/W1$g;->b:Lcom/google/common/collect/W1$g;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/n1;->m(Ljava/util/Collection;)Lcom/google/common/collect/n1;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "TE;>;",
            "Lcom/google/common/collect/V1<",
            "*>;)",
            "Lcom/google/common/collect/V1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/W1$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/W1$d;-><init>(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)V

    return-object v0
.end method

.method public static h(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/W1$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/W1$e;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static i(Lcom/google/common/collect/V1;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/V1<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/V1;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/common/collect/V1;

    invoke-interface {p0}, Lcom/google/common/collect/V1;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/V1;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-interface {p0}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/V1$a;

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v1

    if-eq v3, v1, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public static j(Lcom/google/common/collect/V1;Lw2/I;)Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "TE;>;",
            "Lw2/I<",
            "-TE;>;)",
            "Lcom/google/common/collect/V1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/W1$j;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/W1$j;

    iget-object v0, p0, Lcom/google/common/collect/W1$j;->e:Lw2/I;

    invoke-static {v0, p1}, Lw2/J;->e(Lw2/I;Lw2/I;)Lw2/I;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/W1$j;

    iget-object p0, p0, Lcom/google/common/collect/W1$j;->d:Lcom/google/common/collect/V1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/W1$j;-><init>(Lcom/google/common/collect/V1;Lw2/I;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/W1$j;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/W1$j;-><init>(Lcom/google/common/collect/V1;Lw2/I;)V

    return-object v0
.end method

.method public static k(Ljava/lang/Object;I)Lcom/google/common/collect/V1$a;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/W1$k;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/W1$k;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static l(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/V1;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/V1;

    invoke-interface {p0}, Lcom/google/common/collect/V1;->S1()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0
.end method

.method public static m(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "TE;>;",
            "Lcom/google/common/collect/V1<",
            "*>;)",
            "Lcom/google/common/collect/V1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/W1$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/W1$b;-><init>(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)V

    return-object v0
.end method

.method public static n(Lcom/google/common/collect/V1;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/W1$l;

    invoke-interface {p0}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/W1$l;-><init>(Lcom/google/common/collect/V1;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static o(Lcom/google/common/collect/V1;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/V1<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/V1$a;

    invoke-interface {v2}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/l;->x(J)I

    move-result p0

    return p0
.end method

.method public static p(Lcom/google/common/collect/V1;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/V1<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/V1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/V1;

    invoke-interface {p1}, Lcom/google/common/collect/V1;->S1()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/V1;->S1()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static q(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Z
    .locals 6
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/V1<",
            "*>;",
            "Lcom/google/common/collect/V1<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/V1$a;

    invoke-interface {v2}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_1
    move v1, v5

    goto :goto_0

    :cond_1
    if-lez v3, :cond_0

    invoke-interface {v2}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Lcom/google/common/collect/V1;->pc(Ljava/lang/Object;I)I

    goto :goto_1

    :cond_2
    return v1
.end method

.method public static r(Lcom/google/common/collect/V1;Ljava/lang/Iterable;)Z
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/V1<",
            "*>;",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/V1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/V1;

    invoke-static {p0, p1}, Lcom/google/common/collect/W1;->q(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/collect/V1;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static s(Lcom/google/common/collect/V1;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/V1<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/common/collect/V1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/V1;

    invoke-interface {p1}, Lcom/google/common/collect/V1;->S1()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/V1;->S1()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static t(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Z
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/V1<",
            "*>;",
            "Lcom/google/common/collect/V1<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/W1;->u(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Z

    move-result p0

    return p0
.end method

.method public static u(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "TE;>;",
            "Lcom/google/common/collect/V1<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/V1$a;

    invoke-interface {v2}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-interface {v2}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Lcom/google/common/collect/V1;->P9(Ljava/lang/Object;I)I

    goto :goto_1

    :cond_2
    return v1
.end method

.method public static v(Lcom/google/common/collect/V1;Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "TE;>;TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr p2, v0

    if-lez p2, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/V1;->y6(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    neg-int p2, p2

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/V1;->pc(Ljava/lang/Object;I)I

    :cond_1
    :goto_0
    return v0
.end method

.method public static w(Lcom/google/common/collect/V1;Ljava/lang/Object;II)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "TE;>;TE;II)Z"
        }
    .end annotation

    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-interface {p0, p1, p3}, Lcom/google/common/collect/V1;->P9(Ljava/lang/Object;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static x(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "+TE;>;",
            "Lcom/google/common/collect/V1<",
            "+TE;>;)",
            "Lcom/google/common/collect/V1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/W1$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/W1$c;-><init>(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)V

    return-object v0
.end method

.method public static y(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/V1<",
            "+TE;>;",
            "Lcom/google/common/collect/V1<",
            "+TE;>;)",
            "Lcom/google/common/collect/V1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/W1$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/W1$a;-><init>(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)V

    return-object v0
.end method

.method public static z(Lcom/google/common/collect/n1;)Lcom/google/common/collect/V1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/n1<",
            "TE;>;)",
            "Lcom/google/common/collect/V1<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/V1;

    return-object p0
.end method
