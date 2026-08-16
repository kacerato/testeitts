.class public final Lcom/google/common/collect/c3$g;
.super Lcom/google/common/collect/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lcom/google/common/collect/j<",
        "Lcom/google/common/collect/Q<",
        "TC;>;",
        "Lcom/google/common/collect/j2<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j2<",
            "Lcom/google/common/collect/Q<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j2;Lcom/google/common/collect/j2;Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "Lcom/google/common/collect/Q<",
            "TC;>;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/j;-><init>()V

    .line 3
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/j2;

    iput-object p1, p0, Lcom/google/common/collect/c3$g;->b:Lcom/google/common/collect/j2;

    .line 4
    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/j2;

    iput-object p1, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    .line 5
    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/NavigableMap;

    iput-object p1, p0, Lcom/google/common/collect/c3$g;->d:Ljava/util/NavigableMap;

    .line 6
    new-instance p1, Lcom/google/common/collect/c3$e;

    invoke-direct {p1, p3}, Lcom/google/common/collect/c3$e;-><init>(Ljava/util/NavigableMap;)V

    iput-object p1, p0, Lcom/google/common/collect/c3$g;->e:Ljava/util/NavigableMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/j2;Lcom/google/common/collect/j2;Ljava/util/NavigableMap;Lcom/google/common/collect/c3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/c3$g;-><init>(Lcom/google/common/collect/j2;Lcom/google/common/collect/j2;Ljava/util/NavigableMap;)V

    return-void
.end method

.method public static synthetic j(Lcom/google/common/collect/c3$g;)Lcom/google/common/collect/j2;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    return-object p0
.end method

.method public static synthetic k(Lcom/google/common/collect/c3$g;)Lcom/google/common/collect/j2;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/c3$g;->b:Lcom/google/common/collect/j2;

    return-object p0
.end method

.method private o(Lcom/google/common/collect/j2;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "Lcom/google/common/collect/Q<",
            "TC;>;>;)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$g;->b:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/t1;->x0()Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/common/collect/c3$g;

    iget-object v1, p0, Lcom/google/common/collect/c3$g;->b:Lcom/google/common/collect/j2;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    iget-object v2, p0, Lcom/google/common/collect/c3$g;->d:Ljava/util/NavigableMap;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/common/collect/c3$g;-><init>(Lcom/google/common/collect/j2;Lcom/google/common/collect/j2;Ljava/util/NavigableMap;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/google/common/collect/Q<",
            "TC;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c3$g;->l(Ljava/lang/Object;)Lcom/google/common/collect/j2;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/E1;->u()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c3$g;->b:Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->m(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/E1;->u()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/c3$g;->b:Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->m(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/c3$g;->e:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    iget-object v2, v2, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/c3$g;->d:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/c3$g;->b:Lcom/google/common/collect/j2;

    iget-object v2, v2, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v2}, Lcom/google/common/collect/Q;->j()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Q;

    iget-object v3, p0, Lcom/google/common/collect/c3$g;->b:Lcom/google/common/collect/j2;

    invoke-virtual {v3}, Lcom/google/common/collect/j2;->y()Lcom/google/common/collect/x;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/c3$g;->b:Lcom/google/common/collect/j2;

    iget-object v2, v2, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v3, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    iget-object v3, v3, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-static {v3}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/Ordering;->x(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Q;

    new-instance v2, Lcom/google/common/collect/c3$g$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/c3$g$a;-><init>(Lcom/google/common/collect/c3$g;Ljava/util/Iterator;Lcom/google/common/collect/Q;)V

    return-object v2
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c3$g;->l(Ljava/lang/Object;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Q;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/c3$g;->m(Lcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public i()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/E1;->u()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/c3$g;->b:Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v2, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    iget-object v2, v2, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-static {v2}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Ordering;->x(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/c3$g;->d:Ljava/util/NavigableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Q;->j()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Q;

    invoke-virtual {v0}, Lcom/google/common/collect/Q;->r()Lcom/google/common/collect/x;

    move-result-object v0

    sget-object v3, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/c3$g$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/c3$g$b;-><init>(Lcom/google/common/collect/c3$g;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public l(Ljava/lang/Object;)Lcom/google/common/collect/j2;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/Q;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p1, Lcom/google/common/collect/Q;

    iget-object v0, p0, Lcom/google/common/collect/c3$g;->b:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/c3$g;->d:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Q1;->P0(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/j2;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v2, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    iget-object v2, v2, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/c3$g;->d:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/j2;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/c3$g;->c:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method public m(Lcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Q<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/j2;->I(Ljava/lang/Comparable;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/c3$g;->o(Lcom/google/common/collect/j2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/google/common/collect/Q;ZLcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Q<",
            "TC;>;Z",
            "Lcom/google/common/collect/Q<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p2

    invoke-static {p4}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/j2;->C(Ljava/lang/Comparable;Lcom/google/common/collect/x;Ljava/lang/Comparable;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/c3$g;->o(Lcom/google/common/collect/j2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Q<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/j2;->l(Ljava/lang/Comparable;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/c3$g;->o(Lcom/google/common/collect/j2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/c3$g;->e()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->Z(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Q;

    check-cast p3, Lcom/google/common/collect/Q;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/c3$g;->n(Lcom/google/common/collect/Q;ZLcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Q;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/c3$g;->p(Lcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
