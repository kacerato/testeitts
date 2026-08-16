.class public final Lcom/android/tools/r8/internal/Yu0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/qd;

.field public final c:Lcom/android/tools/r8/graph/c4;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/graph/c4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Yu0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Yu0;->b:Lcom/android/tools/r8/internal/qd;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Yu0;->c:Lcom/android/tools/r8/graph/c4;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/AA;)Z
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/AA;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/D31;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/D31;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/E31;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/E31;-><init>()V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/errors/q;

    invoke-direct {v0}, Lcom/android/tools/r8/errors/q;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Yu0;->a(Ljava/util/Map;)V

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/b80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Yu0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Yu0;->c:Lcom/android/tools/r8/graph/c4;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/b80;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/i6;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/util/Set;

    .line 11
    new-instance v5, Lcom/android/tools/r8/internal/Xu0;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/internal/Xu0;-><init>(Lcom/android/tools/r8/internal/Yu0;)V

    .line 12
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H2;

    .line 13
    invoke-virtual {v1, v6, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/Wu0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Yu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v2, p1, v1}, Lcom/android/tools/r8/internal/Wu0;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Ljava/util/IdentityHashMap;)V

    .line 15
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Wu0;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 16
    iget-object p1, p0, Lcom/android/tools/r8/internal/Yu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/u1;->b()V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 6

    .line 17
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 18
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 19
    iget-object v3, p0, Lcom/android/tools/r8/internal/Yu0;->c:Lcom/android/tools/r8/graph/c4;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/List;

    move-result-object v3

    .line 20
    new-instance v4, Lcom/android/tools/r8/internal/Yx0;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 21
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 22
    new-instance v3, Lcom/android/tools/r8/internal/F31;

    invoke-direct {v3, p0, p1, v0, v2}, Lcom/android/tools/r8/internal/F31;-><init>(Lcom/android/tools/r8/internal/Yu0;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V

    .line 23
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/Yx0;

    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Yx0;)V
    .locals 1

    .line 25
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/android/tools/r8/internal/Yu0;->c:Lcom/android/tools/r8/graph/c4;

    invoke-virtual {p1, p4}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    return-void
.end method
