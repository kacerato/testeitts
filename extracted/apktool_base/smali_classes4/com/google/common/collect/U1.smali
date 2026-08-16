.class public final Lcom/google/common/collect/U1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/U1$a;,
        Lcom/google/common/collect/U1$f;,
        Lcom/google/common/collect/U1$g;,
        Lcom/google/common/collect/U1$i;,
        Lcom/google/common/collect/U1$j;,
        Lcom/google/common/collect/U1$h;,
        Lcom/google/common/collect/U1$n;,
        Lcom/google/common/collect/U1$m;,
        Lcom/google/common/collect/U1$k;,
        Lcom/google/common/collect/U1$l;,
        Lcom/google/common/collect/U1$e;,
        Lcom/google/common/collect/U1$d;,
        Lcom/google/common/collect/U1$b;,
        Lcom/google/common/collect/U1$c;
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/google/common/collect/C2;)Lcom/google/common/collect/C2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/R2;->v(Lcom/google/common/collect/C2;Ljava/lang/Object;)Lcom/google/common/collect/C2;

    move-result-object p0

    return-object p0
.end method

.method public static B(Lcom/google/common/collect/N2;)Lcom/google/common/collect/N2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/N2<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/N2<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/R2;->y(Lcom/google/common/collect/N2;Ljava/lang/Object;)Lcom/google/common/collect/N2;

    move-result-object p0

    return-object p0
.end method

.method public static C(Lcom/google/common/collect/L1;Lcom/google/common/collect/Q1$t;)Lcom/google/common/collect/L1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/L1<",
            "TK;TV1;>;",
            "Lcom/google/common/collect/Q1$t<",
            "-TK;-TV1;TV2;>;)",
            "Lcom/google/common/collect/L1<",
            "TK;TV2;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/U1$i;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/U1$i;-><init>(Lcom/google/common/collect/L1;Lcom/google/common/collect/Q1$t;)V

    return-object v0
.end method

.method public static D(Lcom/google/common/collect/S1;Lcom/google/common/collect/Q1$t;)Lcom/google/common/collect/S1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "TK;TV1;>;",
            "Lcom/google/common/collect/Q1$t<",
            "-TK;-TV1;TV2;>;)",
            "Lcom/google/common/collect/S1<",
            "TK;TV2;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/U1$j;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/U1$j;-><init>(Lcom/google/common/collect/S1;Lcom/google/common/collect/Q1$t;)V

    return-object v0
.end method

.method public static E(Lcom/google/common/collect/L1;Lw2/t;)Lcom/google/common/collect/L1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/L1<",
            "TK;TV1;>;",
            "Lw2/t<",
            "-TV1;TV2;>;)",
            "Lcom/google/common/collect/L1<",
            "TK;TV2;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/collect/Q1;->i(Lw2/t;)Lcom/google/common/collect/Q1$t;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/U1;->C(Lcom/google/common/collect/L1;Lcom/google/common/collect/Q1$t;)Lcom/google/common/collect/L1;

    move-result-object p0

    return-object p0
.end method

.method public static F(Lcom/google/common/collect/S1;Lw2/t;)Lcom/google/common/collect/S1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "TK;TV1;>;",
            "Lw2/t<",
            "-TV1;TV2;>;)",
            "Lcom/google/common/collect/S1<",
            "TK;TV2;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/collect/Q1;->i(Lw2/t;)Lcom/google/common/collect/Q1$t;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/U1;->D(Lcom/google/common/collect/S1;Lcom/google/common/collect/Q1$t;)Lcom/google/common/collect/S1;

    move-result-object p0

    return-object p0
.end method

.method public static G(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/google/common/collect/Q1;->J0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Q1$M;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/Q1$M;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static H(Lcom/google/common/collect/h1;)Lcom/google/common/collect/L1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/h1<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/L1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/L1;

    return-object p0
.end method

.method public static I(Lcom/google/common/collect/L1;)Lcom/google/common/collect/L1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/L1<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/L1<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/U1$k;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/common/collect/h1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/U1$k;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U1$k;-><init>(Lcom/google/common/collect/L1;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static J(Lcom/google/common/collect/m1;)Lcom/google/common/collect/S1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/m1<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/S1;

    return-object p0
.end method

.method public static K(Lcom/google/common/collect/S1;)Lcom/google/common/collect/S1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/U1$l;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/common/collect/m1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/U1$l;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U1$l;-><init>(Lcom/google/common/collect/S1;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static L(Lcom/google/common/collect/s1;)Lcom/google/common/collect/C2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/s1<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/C2;

    return-object p0
.end method

.method public static M(Lcom/google/common/collect/C2;)Lcom/google/common/collect/C2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/U1$m;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/common/collect/s1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/U1$m;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U1$m;-><init>(Lcom/google/common/collect/C2;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static N(Lcom/google/common/collect/N2;)Lcom/google/common/collect/N2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/N2<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/N2<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/U1$n;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/U1$n;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U1$n;-><init>(Lcom/google/common/collect/N2;)V

    return-object v0
.end method

.method public static O(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/U1;->O(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/U1;->G(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/common/collect/L1;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/L1<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/L1;->k()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/google/common/collect/S1;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/S1;->k()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/google/common/collect/C2;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/C2;->k()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/google/common/collect/N2;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/N2<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/SortedSet<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/N2;->k()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/google/common/collect/S1;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S1<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/S1;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/collect/S1;

    invoke-interface {p0}, Lcom/google/common/collect/S1;->k()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/S1;->k()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Lcom/google/common/collect/S1;Lw2/I;)Lcom/google/common/collect/S1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;",
            "Lw2/I<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/common/collect/C2;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/C2;

    invoke-static {p0, p1}, Lcom/google/common/collect/U1;->i(Lcom/google/common/collect/C2;Lw2/I;)Lcom/google/common/collect/C2;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/m0;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/common/collect/m0;

    invoke-static {p0, p1}, Lcom/google/common/collect/U1;->j(Lcom/google/common/collect/m0;Lw2/I;)Lcom/google/common/collect/S1;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/collect/g0;

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/S1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/g0;-><init>(Lcom/google/common/collect/S1;Lw2/I;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static i(Lcom/google/common/collect/C2;Lw2/I;)Lcom/google/common/collect/C2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;",
            "Lw2/I<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/common/collect/o0;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/o0;

    invoke-static {p0, p1}, Lcom/google/common/collect/U1;->k(Lcom/google/common/collect/o0;Lw2/I;)Lcom/google/common/collect/C2;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/i0;

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/C2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/i0;-><init>(Lcom/google/common/collect/C2;Lw2/I;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static j(Lcom/google/common/collect/m0;Lw2/I;)Lcom/google/common/collect/S1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/m0<",
            "TK;TV;>;",
            "Lw2/I<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/m0;->N()Lw2/I;

    move-result-object v0

    invoke-static {v0, p1}, Lw2/J;->e(Lw2/I;Lw2/I;)Lw2/I;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/g0;

    invoke-interface {p0}, Lcom/google/common/collect/m0;->o()Lcom/google/common/collect/S1;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/g0;-><init>(Lcom/google/common/collect/S1;Lw2/I;)V

    return-object v0
.end method

.method public static k(Lcom/google/common/collect/o0;Lw2/I;)Lcom/google/common/collect/C2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/o0<",
            "TK;TV;>;",
            "Lw2/I<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/m0;->N()Lw2/I;

    move-result-object v0

    invoke-static {v0, p1}, Lw2/J;->e(Lw2/I;Lw2/I;)Lw2/I;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/i0;

    invoke-interface {p0}, Lcom/google/common/collect/o0;->o()Lcom/google/common/collect/C2;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/i0;-><init>(Lcom/google/common/collect/C2;Lw2/I;)V

    return-object v0
.end method

.method public static l(Lcom/google/common/collect/L1;Lw2/I;)Lcom/google/common/collect/L1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/L1<",
            "TK;TV;>;",
            "Lw2/I<",
            "-TK;>;)",
            "Lcom/google/common/collect/L1<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/j0;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/j0;

    new-instance v0, Lcom/google/common/collect/j0;

    invoke-virtual {p0}, Lcom/google/common/collect/j0;->m()Lcom/google/common/collect/L1;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/k0;->h:Lw2/I;

    invoke-static {p0, p1}, Lw2/J;->e(Lw2/I;Lw2/I;)Lw2/I;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/j0;-><init>(Lcom/google/common/collect/L1;Lw2/I;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/j0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j0;-><init>(Lcom/google/common/collect/L1;Lw2/I;)V

    return-object v0
.end method

.method public static m(Lcom/google/common/collect/S1;Lw2/I;)Lcom/google/common/collect/S1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;",
            "Lw2/I<",
            "-TK;>;)",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/C2;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/C2;

    invoke-static {p0, p1}, Lcom/google/common/collect/U1;->n(Lcom/google/common/collect/C2;Lw2/I;)Lcom/google/common/collect/C2;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/L1;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/common/collect/L1;

    invoke-static {p0, p1}, Lcom/google/common/collect/U1;->l(Lcom/google/common/collect/L1;Lw2/I;)Lcom/google/common/collect/L1;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/google/common/collect/k0;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/common/collect/k0;

    new-instance v0, Lcom/google/common/collect/k0;

    iget-object v1, p0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    iget-object p0, p0, Lcom/google/common/collect/k0;->h:Lw2/I;

    invoke-static {p0, p1}, Lw2/J;->e(Lw2/I;Lw2/I;)Lw2/I;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/k0;-><init>(Lcom/google/common/collect/S1;Lw2/I;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/google/common/collect/m0;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/google/common/collect/m0;

    invoke-static {p1}, Lcom/google/common/collect/Q1;->U(Lw2/I;)Lw2/I;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/U1;->j(Lcom/google/common/collect/m0;Lw2/I;)Lcom/google/common/collect/S1;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lcom/google/common/collect/k0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k0;-><init>(Lcom/google/common/collect/S1;Lw2/I;)V

    return-object v0
.end method

.method public static n(Lcom/google/common/collect/C2;Lw2/I;)Lcom/google/common/collect/C2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;",
            "Lw2/I<",
            "-TK;>;)",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/l0;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/l0;

    new-instance v0, Lcom/google/common/collect/l0;

    invoke-virtual {p0}, Lcom/google/common/collect/l0;->o()Lcom/google/common/collect/C2;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/k0;->h:Lw2/I;

    invoke-static {p0, p1}, Lw2/J;->e(Lw2/I;Lw2/I;)Lw2/I;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/l0;-><init>(Lcom/google/common/collect/C2;Lw2/I;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/o0;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/common/collect/o0;

    invoke-static {p1}, Lcom/google/common/collect/Q1;->U(Lw2/I;)Lw2/I;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/U1;->k(Lcom/google/common/collect/o0;Lw2/I;)Lcom/google/common/collect/C2;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/google/common/collect/l0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/l0;-><init>(Lcom/google/common/collect/C2;Lw2/I;)V

    return-object v0
.end method

.method public static o(Lcom/google/common/collect/S1;Lw2/I;)Lcom/google/common/collect/S1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;",
            "Lw2/I<",
            "-TV;>;)",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Q1;->Q0(Lw2/I;)Lw2/I;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/U1;->h(Lcom/google/common/collect/S1;Lw2/I;)Lcom/google/common/collect/S1;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/google/common/collect/C2;Lw2/I;)Lcom/google/common/collect/C2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;",
            "Lw2/I<",
            "-TV;>;)",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Q1;->Q0(Lw2/I;)Lw2/I;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/U1;->i(Lcom/google/common/collect/C2;Lw2/I;)Lcom/google/common/collect/C2;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/util/Map;)Lcom/google/common/collect/C2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/U1$h;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U1$h;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static r(Ljava/lang/Iterable;Lw2/t;)Lcom/google/common/collect/h1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TV;>;",
            "Lw2/t<",
            "-TV;TK;>;)",
            "Lcom/google/common/collect/h1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/U1;->s(Ljava/util/Iterator;Lw2/t;)Lcom/google/common/collect/h1;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/util/Iterator;Lw2/t;)Lcom/google/common/collect/h1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TV;>;",
            "Lw2/t<",
            "-TV;TK;>;)",
            "Lcom/google/common/collect/h1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/h1;->P()Lcom/google/common/collect/h1$a;

    move-result-object v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Lw2/t;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/h1$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h1$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/h1$a;->l()Lcom/google/common/collect/h1;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lcom/google/common/collect/S1;Lcom/google/common/collect/S1;)Lcom/google/common/collect/S1;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;>(",
            "Lcom/google/common/collect/S1<",
            "+TV;+TK;>;TM;)TM;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/common/collect/S1;->v()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static u(Ljava/util/Map;Lw2/Q;)Lcom/google/common/collect/L1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lw2/Q<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Lcom/google/common/collect/L1<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/U1$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/U1$b;-><init>(Ljava/util/Map;Lw2/Q;)V

    return-object v0
.end method

.method public static v(Ljava/util/Map;Lw2/Q;)Lcom/google/common/collect/S1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lw2/Q<",
            "+",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/U1$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/U1$c;-><init>(Ljava/util/Map;Lw2/Q;)V

    return-object v0
.end method

.method public static w(Ljava/util/Map;Lw2/Q;)Lcom/google/common/collect/C2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lw2/Q<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;)",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/U1$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/U1$d;-><init>(Ljava/util/Map;Lw2/Q;)V

    return-object v0
.end method

.method public static x(Ljava/util/Map;Lw2/Q;)Lcom/google/common/collect/N2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lw2/Q<",
            "+",
            "Ljava/util/SortedSet<",
            "TV;>;>;)",
            "Lcom/google/common/collect/N2<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/U1$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/U1$e;-><init>(Ljava/util/Map;Lw2/Q;)V

    return-object v0
.end method

.method public static y(Lcom/google/common/collect/L1;)Lcom/google/common/collect/L1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/L1<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/L1<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/R2;->k(Lcom/google/common/collect/L1;Ljava/lang/Object;)Lcom/google/common/collect/L1;

    move-result-object p0

    return-object p0
.end method

.method public static z(Lcom/google/common/collect/S1;)Lcom/google/common/collect/S1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/R2;->m(Lcom/google/common/collect/S1;Ljava/lang/Object;)Lcom/google/common/collect/S1;

    move-result-object p0

    return-object p0
.end method
