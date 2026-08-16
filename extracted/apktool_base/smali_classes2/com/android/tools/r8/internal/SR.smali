.class public abstract Lcom/android/tools/r8/internal/SR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/function/IntFunction;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/gt0;)Ljava/util/Map;
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-interface {p2, v5, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 5
    invoke-interface {p3, v5, v4, v6}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    if-nez v2, :cond_0

    if-nez v3, :cond_1

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p4, v5, v4, v6}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v7, v5, :cond_3

    if-ne v6, v4, :cond_3

    if-nez v2, :cond_6

    goto :goto_0

    :cond_3
    if-nez v2, :cond_6

    .line 9
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 10
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/internal/fW0;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/fW0;-><init>(Ljava/util/Map;)V

    invoke-static {p0, v4, v5}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    if-eqz v3, :cond_6

    .line 11
    sget-boolean v4, Lcom/android/tools/r8/internal/SR;->a:Z

    if-nez v4, :cond_5

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-object v3, v1

    .line 13
    :cond_6
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 14
    invoke-interface {p5, v7, v6, v4}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 15
    :cond_7
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_c

    .line 16
    sget-boolean p2, Lcom/android/tools/r8/internal/SR;->a:Z

    if-nez p2, :cond_a

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 17
    :cond_a
    :goto_2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    sget-boolean p2, Lcom/android/tools/r8/internal/TU;->a:Z

    .line 18
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p2

    if-ge p2, p0, :cond_b

    .line 19
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 20
    invoke-interface {p0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    :cond_b
    return-object v2

    :cond_c
    if-eqz v3, :cond_f

    .line 21
    sget-boolean p2, Lcom/android/tools/r8/internal/SR;->a:Z

    if-nez p2, :cond_e

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_3

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 22
    :cond_e
    :goto_3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 23
    sget-boolean p2, Lcom/android/tools/r8/internal/TU;->a:Z

    .line 24
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 25
    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p1

    :cond_f
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    instance-of p1, p0, Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
