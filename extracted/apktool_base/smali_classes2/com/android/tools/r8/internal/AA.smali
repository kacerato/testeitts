.class public final Lcom/android/tools/r8/internal/AA;
.super Lcom/android/tools/r8/internal/aW;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Ljava/util/LinkedList;

.field public c:Lcom/android/tools/r8/graph/l1;

.field public d:Lcom/android/tools/r8/graph/H2;

.field public e:Lcom/android/tools/r8/internal/m6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/aW;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/l1;
    .locals 1

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/AA;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/AA;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->c:Lcom/android/tools/r8/graph/l1;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 4

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/AA;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/AA;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/l6;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/l6;-><init>(Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V

    .line 9
    new-instance v2, Lcom/android/tools/r8/internal/xy0;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/tools/r8/internal/xy0;-><init>(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/TY;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/AA;->a(Ljava/util/function/Consumer;)V

    if-nez v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/AA;->g()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/android/tools/r8/internal/AA;->e:Lcom/android/tools/r8/internal/m6;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/TY;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/vy0;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/vy0;-><init>(Lcom/android/tools/r8/internal/TY;)V

    invoke-static {p1, p3, v0, v1}, Lcom/android/tools/r8/internal/gd;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/AA;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/AA;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    if-eq v1, v2, :cond_2

    .line 4
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/rK;
    .locals 2

    .line 19
    sget-boolean v0, Lcom/android/tools/r8/internal/AA;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/AA;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/tools/r8/internal/uy0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/uy0;-><init>(Lcom/android/tools/r8/internal/AA;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/wy0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/wy0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rK;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/e0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/e0;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    invoke-static {v0}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 7
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 9
    iget-object v4, p1, Lcom/android/tools/r8/graph/y;->r:Lcom/android/tools/r8/shaking/y1;

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v4

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 13
    iget v4, v4, Lcom/android/tools/r8/graph/L2;->e:I

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 15
    iget v5, v5, Lcom/android/tools/r8/graph/L2;->e:I

    if-ge v4, v5, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ$p;->B:Lcom/android/tools/r8/internal/gt0;

    invoke-interface {v1, p1, v0, v2}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/internal/AA;->f:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/AA;->h()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    return-void
.end method

.method public final c()Lcom/android/tools/r8/graph/M2;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/AA;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/tools/r8/internal/zy0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zy0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/util/LinkedList;Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->c:Lcom/android/tools/r8/graph/l1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->e:Lcom/android/tools/r8/internal/m6;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/AA;->f:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/tools/r8/internal/yy0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/yy0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/util/LinkedList;Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final removeIf(Ljava/util/function/Predicate;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
