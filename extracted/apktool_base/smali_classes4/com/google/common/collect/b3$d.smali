.class public Lcom/google/common/collect/b3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/l2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/b3$d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/l2<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j2<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/google/common/collect/b3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b3;Lcom/google/common/collect/j2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    return-void
.end method

.method public static synthetic b(Lcom/google/common/collect/b3$d;)Lcom/google/common/collect/j2;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/j2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    iget-object v1, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b3;->a(Lcom/google/common/collect/j2;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/google/common/collect/j2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    invoke-static {v0}, Lcom/google/common/collect/b3;->b(Lcom/google/common/collect/b3;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/b3$c;

    invoke-virtual {v0}, Lcom/google/common/collect/b3$c;->h()Lcom/google/common/collect/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    invoke-static {v0}, Lcom/google/common/collect/b3;->b(Lcom/google/common/collect/b3;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Q;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v1

    if-gez v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    invoke-static {v1}, Lcom/google/common/collect/b3;->b(Lcom/google/common/collect/b3;)Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    iget-object v2, v2, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/b3$c;

    invoke-virtual {v2}, Lcom/google/common/collect/b3$c;->h()Lcom/google/common/collect/Q;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    iget-object v3, v3, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    iget-object v1, v1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/b3$c;

    invoke-virtual {v1}, Lcom/google/common/collect/b3$c;->h()Lcom/google/common/collect/Q;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    iget-object v1, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/b3;->a(Lcom/google/common/collect/j2;)V

    return-void
.end method

.method public d(Lcom/google/common/collect/j2;)Lcom/google/common/collect/l2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;)",
            "Lcom/google/common/collect/l2<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    invoke-static {p1}, Lcom/google/common/collect/b3;->m(Lcom/google/common/collect/b3;)Lcom/google/common/collect/l2;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    iget-object v1, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b3;->d(Lcom/google/common/collect/j2;)Lcom/google/common/collect/l2;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b3$d$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b3$d$b;-><init>(Lcom/google/common/collect/b3$d;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/l2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/l2;

    invoke-virtual {p0}, Lcom/google/common/collect/b3$d;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/l2;->e()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b3;->f(Ljava/lang/Comparable;)Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/j2;

    iget-object v1, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Q1;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b3$d$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b3$d$a;-><init>(Lcom/google/common/collect/b3$d;)V

    return-object v0
.end method

.method public h(Lcom/google/common/collect/l2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l2<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/l2;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/l2;->c()Lcom/google/common/collect/j2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/j2;->n(Lcom/google/common/collect/j2;)Z

    move-result v1

    const-string v2, "Cannot putAll rangeMap with span %s into a subRangeMap(%s)"

    iget-object v3, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-static {v1, v2, v0, v3}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b3;->h(Lcom/google/common/collect/l2;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b3$d;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Lcom/google/common/collect/j2;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    invoke-static {v0}, Lcom/google/common/collect/b3;->b(Lcom/google/common/collect/b3;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->n(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/b3;->l(Lcom/google/common/collect/b3;Lcom/google/common/collect/j2;Ljava/lang/Object;)Lcom/google/common/collect/j2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/b3$d;->k(Lcom/google/common/collect/j2;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/b3$d;->k(Lcom/google/common/collect/j2;Ljava/lang/Object;)V

    return-void
.end method

.method public j(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b3;->j(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public k(Lcom/google/common/collect/j2;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TK;>;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->n(Lcom/google/common/collect/j2;)Z

    move-result v0

    const-string v1, "Cannot put range %s into a subRangeMap(%s)"

    iget-object v2, p0, Lcom/google/common/collect/b3$d;->b:Lcom/google/common/collect/j2;

    invoke-static {v0, v1, p1, v2}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/b3$d;->c:Lcom/google/common/collect/b3;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/b3;->k(Lcom/google/common/collect/j2;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/b3$d;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
