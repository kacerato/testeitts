.class public final Lcom/google/common/collect/c3$d;
.super Lcom/google/common/collect/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
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
.field public final b:Ljava/util/NavigableMap;
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

.field public final c:Ljava/util/NavigableMap;
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

.field public final d:Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j2<",
            "Lcom/google/common/collect/Q<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/NavigableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/j2;->a()Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/c3$d;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/j2;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/collect/j2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/Q<",
            "TC;>;",
            "Lcom/google/common/collect/j2<",
            "TC;>;>;",
            "Lcom/google/common/collect/j2<",
            "Lcom/google/common/collect/Q<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/j;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/c3$d;->b:Ljava/util/NavigableMap;

    .line 4
    new-instance v0, Lcom/google/common/collect/c3$e;

    invoke-direct {v0, p1}, Lcom/google/common/collect/c3$e;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/c3$d;->c:Ljava/util/NavigableMap;

    .line 5
    iput-object p2, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    return-void
.end method

.method public static synthetic j(Lcom/google/common/collect/c3$d;)Lcom/google/common/collect/j2;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    return-object p0
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

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c3$d;->k(Ljava/lang/Object;)Lcom/google/common/collect/j2;

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

    iget-object v0, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/c3$d;->c:Ljava/util/NavigableMap;

    iget-object v1, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Q;

    iget-object v2, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    invoke-virtual {v2}, Lcom/google/common/collect/j2;->y()Lcom/google/common/collect/x;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/c3$d;->c:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->T(Ljava/util/Iterator;)Lcom/google/common/collect/g2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v2

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    :goto_2
    new-instance v2, Lcom/google/common/collect/c3$d$a;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/common/collect/c3$d$a;-><init>(Lcom/google/common/collect/c3$d;Lcom/google/common/collect/Q;Lcom/google/common/collect/g2;)V

    return-object v2

    :cond_4
    invoke-static {}, Lcom/google/common/collect/E1;->u()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c3$d;->k(Ljava/lang/Object;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Q;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/c3$d;->l(Lcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public i()Ljava/util/Iterator;
    .locals 3
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

    iget-object v0, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Q;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->K()Lcom/google/common/collect/x;

    move-result-object v1

    sget-object v2, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/common/collect/c3$d;->c:Ljava/util/NavigableMap;

    invoke-interface {v2, v0, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->T(Ljava/util/Iterator;)Lcom/google/common/collect/g2;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object v2

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/c3$d;->b:Ljava/util/NavigableMap;

    invoke-interface {v0}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/j2;

    iget-object v2, v2, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Q;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/common/collect/c3$d;->b:Ljava/util/NavigableMap;

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/c3$d;->b:Ljava/util/NavigableMap;

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Q;

    :goto_2
    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object v2

    invoke-static {v1, v2}, Lw2/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Q;

    new-instance v2, Lcom/google/common/collect/c3$d$b;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/common/collect/c3$d$b;-><init>(Lcom/google/common/collect/c3$d;Lcom/google/common/collect/Q;Lcom/google/common/collect/g2;)V

    return-object v2

    :cond_5
    :goto_3
    invoke-static {}, Lcom/google/common/collect/E1;->u()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/Object;)Lcom/google/common/collect/j2;
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

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p1, Lcom/google/common/collect/Q;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/c3$d;->o(Lcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Q;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Q;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/j2;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v1
.end method

.method public l(Lcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;
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

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c3$d;->n(Lcom/google/common/collect/j2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public m(Lcom/google/common/collect/Q;ZLcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;
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

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c3$d;->n(Lcom/google/common/collect/j2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lcom/google/common/collect/j2;)Ljava/util/NavigableMap;
    .locals 2
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

    iget-object v0, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/t1;->x0()Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c3$d;->d:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/c3$d;

    iget-object v1, p0, Lcom/google/common/collect/c3$d;->b:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/c3$d;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/j2;)V

    return-object v0
.end method

.method public o(Lcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;
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

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c3$d;->n(Lcom/google/common/collect/j2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/c3$d;->e()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->Z(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Q;

    check-cast p3, Lcom/google/common/collect/Q;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/c3$d;->m(Lcom/google/common/collect/Q;ZLcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Q;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/c3$d;->o(Lcom/google/common/collect/Q;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
