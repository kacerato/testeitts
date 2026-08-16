.class public Lcom/android/tools/r8/internal/TU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/Rj;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 21
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/jG;)Ljava/lang/String;
    .locals 3

    .line 22
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/nX0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nX0;-><init>()V

    sget-object v1, Lcom/android/tools/r8/internal/zq0$a;->d:Lcom/android/tools/r8/internal/zq0$a;

    .line 23
    const-string v2, ","

    invoke-static {v2, p0, v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;Ljava/util/function/Function;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/e6;I)Ljava/util/IdentityHashMap;
    .locals 1

    .line 11
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, p1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/oX0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/oX0;-><init>(Ljava/util/IdentityHashMap;)V

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/e6;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public static a(Ljava/util/function/Consumer;)Ljava/util/IdentityHashMap;
    .locals 1

    .line 9
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 10
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/function/IntFunction;Ljava/util/function/Function;)Ljava/util/Map;
    .locals 1

    .line 24
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Collection;Ljava/util/function/IntFunction;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/function/IntFunction;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/Map;
    .locals 4

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/iX0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/iX0;-><init>()V

    .line 26
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 27
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 28
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {p3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 30
    :cond_2
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 31
    invoke-interface {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static a(Ljava/util/IdentityHashMap;I)Ljava/util/Map;
    .locals 1

    .line 41
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 42
    new-instance p1, Lu/y0;

    invoke-direct {p1}, Lu/y0;-><init>()V

    .line 43
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 44
    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/util/HashMap;Ljava/util/function/Function;)Ljava/util/Map;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/hX0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/hX0;-><init>(Ljava/util/Map;Ljava/util/function/Function;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p1
.end method

.method public static a(Ljava/util/Map;Ljava/util/function/IntFunction;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/gt0;)Ljava/util/Map;
    .locals 1

    .line 35
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 36
    new-instance v0, Lcom/android/tools/r8/internal/gX0;

    invoke-direct {v0, p2, p3, p1, p4}, Lcom/android/tools/r8/internal/gX0;-><init>(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Ljava/util/Map;Lcom/android/tools/r8/internal/gt0;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p1
.end method

.method public static a(Ljava/util/Map;Ljava/util/function/IntFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/tools/r8/internal/gt0;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "K2:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK1;TV1;>;",
            "Ljava/util/function/IntFunction<",
            "Ljava/util/Map<",
            "TK2;TV2;>;>;",
            "Ljava/util/function/Function<",
            "TK1;TK2;>;",
            "Ljava/util/function/Function<",
            "TV1;TV2;>;",
            "Lcom/android/tools/r8/internal/gt0<",
            "TK2;TV2;TV2;TV2;>;)",
            "Ljava/util/Map<",
            "TK2;TV2;>;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/tools/r8/internal/jX0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/jX0;-><init>(Ljava/util/function/Function;)V

    new-instance p2, Lcom/android/tools/r8/internal/kX0;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/kX0;-><init>(Ljava/util/function/Function;)V

    invoke-static {p0, p1, v0, p2, p4}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Ljava/util/function/IntFunction;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/gt0;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/function/Supplier;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;)",
            "Ljava/util/function/Function<",
            "TT;TR;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/lX0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/lX0;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static a(Ljava/util/AbstractMap;)V
    .locals 1

    .line 14
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/mX0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mX0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/internal/Vr0;)V
    .locals 2

    .line 15
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/android/tools/r8/internal/Vr0;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 3

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Ljava/util/Map;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 37
    invoke-interface {p0, p4, p5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {p1, p4, p5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 40
    invoke-interface {p3, p0, p4, p1}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 13
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
