.class public final Lcom/android/tools/r8/ir/optimize/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/k;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/gt0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/k;->a:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 8
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 11
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/ir/optimize/i;

    .line 12
    iget-object v6, v4, Lcom/android/tools/r8/ir/optimize/i;->a:Lcom/android/tools/r8/ir/optimize/h;

    .line 13
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    instance-of v7, v6, Lcom/android/tools/r8/ir/optimize/l;

    if-eqz v7, :cond_3

    .line 15
    sget-boolean v4, Lcom/android/tools/r8/ir/optimize/k;->b:Z

    if-nez v4, :cond_1

    new-instance v4, Lv/Q0;

    invoke-direct {v4, v5}, Lv/Q0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_3
    sget-boolean v7, Lcom/android/tools/r8/ir/optimize/k;->b:Z

    if-nez v7, :cond_5

    .line 17
    instance-of v6, v6, Lcom/android/tools/r8/ir/optimize/p;

    if-eqz v6, :cond_4

    goto :goto_2

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_5
    :goto_2
    invoke-interface {p1, v2, v5, v4}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/ir/optimize/h;

    .line 20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    instance-of v7, v6, Lcom/android/tools/r8/ir/optimize/n;

    if-eqz v7, :cond_6

    .line 22
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 23
    :cond_6
    instance-of v5, v6, Lcom/android/tools/r8/ir/optimize/p;

    if-eqz v5, :cond_8

    .line 24
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 25
    :cond_8
    iput-object v6, v4, Lcom/android/tools/r8/ir/optimize/i;->a:Lcom/android/tools/r8/ir/optimize/h;

    goto :goto_1

    .line 26
    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ht0;)V
    .locals 6

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/k;->a:Ljava/util/LinkedHashMap;

    .line 35
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 40
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 41
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 44
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/ir/optimize/i;

    .line 45
    invoke-interface {p1, v2, v5, v4}, Lcom/android/tools/r8/internal/ht0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 47
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/zE;Ljava/util/Map;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/k;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    new-instance v1, Lv/O0;

    invoke-direct {v1, v0}, Lv/O0;-><init>(Ljava/util/Map;)V

    invoke-interface {p2, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 32
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 33
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/k;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/IdentityHashMap;)V
    .locals 1

    .line 29
    new-instance v0, Lv/P0;

    invoke-direct {v0, p0}, Lv/P0;-><init>(Lcom/android/tools/r8/ir/optimize/k;)V

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
