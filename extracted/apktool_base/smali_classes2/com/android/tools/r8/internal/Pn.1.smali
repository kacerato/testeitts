.class public abstract Lcom/android/tools/r8/internal/Pn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/e6;
.implements Ljava/util/Map;


# instance fields
.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/G0;)I
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/J2;->b(Lcom/android/tools/r8/graph/J2;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/internal/fv;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-interface {p0, p1, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/internal/fv;)V
    .locals 0

    .line 32
    iget-object p1, p1, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 33
    check-cast p1, Lcom/android/tools/r8/graph/G0;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/fv;Ljava/lang/Object;)V
    .locals 0

    .line 28
    iget-object p1, p1, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 29
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/fv;)V
    .locals 0

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 31
    check-cast p1, Lcom/android/tools/r8/graph/G0;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ht0;Ljava/util/Map$Entry;)Z
    .locals 2

    .line 19
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fv;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 21
    check-cast v0, Lcom/android/tools/r8/graph/G0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/ht0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/function/BiPredicate;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fv;

    .line 14
    iget-object v0, v0, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 15
    check-cast v0, Lcom/android/tools/r8/graph/G0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;
    .locals 0

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/android/tools/r8/graph/G0;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/fv;

    .line 24
    iget-object v2, v2, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 25
    check-cast v2, Lcom/android/tools/r8/graph/G0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Zs0;

    .line 26
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 27
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/G0;)Ljava/lang/Object;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pn;->b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/G0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pn;->b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/G0;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pn;->b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/BR0;

    invoke-direct {v2, p2, p1}, Lcom/android/tools/r8/internal/BR0;-><init>(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/G0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pn;->b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 9
    :cond_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/AR0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/AR0;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ht0;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 17
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/CR0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/CR0;-><init>(Lcom/android/tools/r8/internal/ht0;)V

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/zR0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/zR0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/BiPredicate;)Z
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/xR0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/xR0;-><init>(Ljava/util/function/BiPredicate;)V

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public abstract b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;
.end method

.method public final b(Lcom/android/tools/r8/graph/G0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pn;->b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/tools/r8/graph/G0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pn;->b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/yR0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/yR0;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/av0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw v0
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/wR0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/wR0;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/graph/G0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pn;->b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/graph/G0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pn;->b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pn;->e()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ER0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ER0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final j()Ljava/util/stream/Stream;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/DR0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/DR0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/av0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/graph/G0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pn;->b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/graph/G0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pn;->b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
