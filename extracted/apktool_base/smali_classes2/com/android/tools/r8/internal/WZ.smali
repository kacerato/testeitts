.class public final Lcom/android/tools/r8/internal/WZ;
.super Lcom/android/tools/r8/internal/xY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/c4;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/xY;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/WZ;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/WZ;->c:Lcom/android/tools/r8/graph/c4;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/c4;Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)Ljava/lang/Iterable;
    .locals 2

    .line 89
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 90
    iget-object p0, p0, Lcom/android/tools/r8/graph/c4;->b:Ljava/util/IdentityHashMap;

    .line 91
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 92
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    .line 93
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    if-eqz v1, :cond_0

    .line 94
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/tools/r8/internal/P01;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/P01;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/Map;
    .locals 0

    .line 104
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/X01;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/X01;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Ljava/util/HashMap;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/F2;)Ljava/util/Set;
    .locals 0

    .line 105
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/AA;Ljava/util/Map;)Ljava/util/Set;
    .locals 3

    .line 20
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 22
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    if-eq v1, p0, :cond_0

    .line 24
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/VZ;

    .line 25
    iget-object v1, v1, Lcom/android/tools/r8/internal/VZ;->a:Ljava/util/Map;

    .line 26
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 27
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/d11;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/d11;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/AA;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/android/tools/r8/internal/c11;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/c11;-><init>(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/AA;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 86
    invoke-virtual {p0, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/E0;)V
    .locals 4

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/android/tools/r8/internal/Dq;->c:Lcom/android/tools/r8/internal/Dq;

    .line 45
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Dq;

    .line 46
    new-instance v1, Lcom/android/tools/r8/internal/Dq;

    new-instance v2, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 48
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v2

    .line 49
    iget-object v3, v1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/F2;Ljava/util/Set;)V
    .locals 1

    .line 106
    new-instance v0, Lcom/android/tools/r8/internal/b11;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/b11;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 107
    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/E0;)V
    .locals 5

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 60
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 61
    new-instance v3, Lcom/android/tools/r8/internal/W01;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/W01;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    new-instance v1, Lcom/android/tools/r8/graph/F7;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/F7;-><init>()V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/E0;->i(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 64
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/Y01;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/Y01;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 65
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 67
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 68
    sget-object v3, Lcom/android/tools/r8/internal/Dq;->c:Lcom/android/tools/r8/internal/Dq;

    .line 69
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 70
    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 71
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 72
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 96
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 97
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 98
    invoke-static {p2}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 99
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    .line 100
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 101
    new-instance v2, Lcom/android/tools/r8/internal/Z01;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Z01;-><init>()V

    .line 102
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 103
    new-instance v2, Lcom/android/tools/r8/internal/a11;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/a11;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/F2;)Ljava/util/Set;
    .locals 0

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Collection;Ljava/util/IdentityHashMap;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/U01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/U01;-><init>()V

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/V01;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/V01;-><init>(Ljava/util/IdentityHashMap;)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/rK;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/Map;Lcom/android/tools/r8/graph/F2;Ljava/util/Set;)V
    .locals 1

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/L01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/L01;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 11
    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/F2;)Ljava/util/Set;
    .locals 0

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)Ljava/lang/Object;
    .locals 9

    .line 28
    iget-object p2, p0, Lcom/android/tools/r8/internal/WZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p2

    .line 29
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/WZ;->b(Ljava/util/Collection;)Ljava/util/IdentityHashMap;

    move-result-object v0

    .line 30
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/WZ;->a(Ljava/util/Collection;Ljava/util/IdentityHashMap;)Ljava/util/IdentityHashMap;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/tools/r8/internal/WZ;->c:Lcom/android/tools/r8/graph/c4;

    .line 32
    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/tools/r8/internal/WZ;->a(Ljava/util/Collection;Ljava/util/IdentityHashMap;Ljava/util/LinkedList;Lcom/android/tools/r8/graph/c4;)Ljava/util/Map;

    move-result-object p2

    .line 33
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/AA;

    .line 35
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    iget-object v2, v2, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 38
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/VZ;

    .line 39
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 40
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 41
    move-object v8, p2

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v3, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {v5, v6, v3}, Lcom/android/tools/r8/internal/VZ;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 42
    invoke-virtual {v1, v4, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/AA;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 8

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget p2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 4
    new-instance p2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/AA;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/AA;-><init>()V

    .line 6
    iget-object v1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 8
    invoke-static {v2, p1, p2}, Lcom/android/tools/r8/internal/WZ;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/AA;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/VZ;

    .line 10
    iget-object v4, v4, Lcom/android/tools/r8/internal/VZ;->b:Ljava/util/Map;

    .line 11
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    .line 12
    invoke-static {v5, v5}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object v6

    .line 13
    sget-object v7, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 14
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 15
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    if-eq v7, v5, :cond_2

    goto :goto_0

    .line 16
    :cond_3
    iget-object v3, v0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AA;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_5
    sget-boolean p1, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 18
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final a(Ljava/util/Collection;Ljava/util/IdentityHashMap;)Ljava/util/IdentityHashMap;
    .locals 4

    .line 51
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/android/tools/r8/internal/WZ;->b:Lcom/android/tools/r8/graph/y;

    .line 53
    new-instance v2, Lcom/android/tools/r8/graph/d6;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/graph/d6;-><init>(Lcom/android/tools/r8/graph/y;I)V

    .line 54
    new-instance v1, Lcom/android/tools/r8/internal/S01;

    invoke-direct {v1, v0, p2}, Lcom/android/tools/r8/internal/S01;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 55
    invoke-virtual {v2, p1, v1}, Lcom/android/tools/r8/graph/T;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Wr0;)V

    .line 56
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/T01;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/T01;-><init>(Lcom/android/tools/r8/internal/WZ;)V

    .line 57
    invoke-interface {p1, p2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v0
.end method

.method public final a(Ljava/util/Collection;Ljava/util/IdentityHashMap;Ljava/util/LinkedList;Lcom/android/tools/r8/graph/c4;)Ljava/util/Map;
    .locals 3

    .line 73
    new-instance v0, Lcom/android/tools/r8/internal/e11;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/e11;-><init>(Ljava/util/Collection;)V

    .line 74
    sget-boolean p3, Lcom/android/tools/r8/internal/TU;->a:Z

    .line 75
    new-instance p3, Ljava/util/IdentityHashMap;

    invoke-direct {p3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 76
    invoke-interface {v0, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/f11;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/f11;-><init>()V

    .line 78
    invoke-static {p2, v0, v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Ljava/util/HashMap;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object p2

    .line 79
    new-instance v0, Lcom/android/tools/r8/internal/M01;

    invoke-direct {v0, p4, p3}, Lcom/android/tools/r8/internal/M01;-><init>(Lcom/android/tools/r8/graph/c4;Ljava/util/Map;)V

    .line 80
    iget-object p4, p0, Lcom/android/tools/r8/internal/WZ;->b:Lcom/android/tools/r8/graph/y;

    .line 81
    new-instance v1, Lcom/android/tools/r8/graph/D;

    const/4 v2, 0x4

    invoke-direct {v1, p4, v0, v2}, Lcom/android/tools/r8/graph/D;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;I)V

    .line 82
    new-instance p4, Lcom/android/tools/r8/internal/N01;

    invoke-direct {p4, p2, p3}, Lcom/android/tools/r8/internal/N01;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 83
    invoke-virtual {v1, p1, p4}, Lcom/android/tools/r8/graph/T;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Wr0;)V

    .line 84
    move-object p1, p2

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/internal/O01;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/internal/O01;-><init>(Lcom/android/tools/r8/internal/WZ;)V

    .line 85
    invoke-interface {p1, p3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p2
.end method

.method public final b(Ljava/util/Collection;)Ljava/util/IdentityHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/WZ;->b:Lcom/android/tools/r8/graph/y;

    .line 3
    new-instance v2, Lcom/android/tools/r8/graph/d6;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/graph/d6;-><init>(Lcom/android/tools/r8/graph/y;I)V

    .line 4
    iput-boolean v3, v2, Lcom/android/tools/r8/graph/T;->e:Z

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/Q01;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Q01;-><init>(Ljava/util/Map;)V

    .line 6
    invoke-virtual {v2, p1, v1}, Lcom/android/tools/r8/graph/T;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Wr0;)V

    .line 7
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/R01;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/R01;-><init>(Lcom/android/tools/r8/internal/WZ;)V

    .line 8
    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v0
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/WZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/WZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic d(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoDefaultInterfaceMethodCollisions"

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$g;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
