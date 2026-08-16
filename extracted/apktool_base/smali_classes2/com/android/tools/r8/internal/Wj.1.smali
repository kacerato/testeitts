.class public abstract Lcom/android/tools/r8/internal/Wj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/c4;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Wj;->c:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Wj;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayDeque;)V
    .locals 2

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/Wj;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->d:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/p11;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/p11;-><init>(Lcom/android/tools/r8/internal/Wj;)V

    .line 10
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/Wj;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Wj;->c(Lcom/android/tools/r8/graph/H2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->k(Lcom/android/tools/r8/graph/H2;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Wj;->a(Ljava/util/ArrayDeque;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    .line 15
    iget-object v0, v0, Lcom/android/tools/r8/graph/c4;->b:Ljava/util/IdentityHashMap;

    .line 16
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 17
    invoke-interface {p2, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/Vj;->c:Lcom/android/tools/r8/internal/Vj;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/Vj;->b:Lcom/android/tools/r8/internal/Vj;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/android/tools/r8/graph/H2;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic d(Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Wj;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->c(Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic e(Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final f(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/Wj;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->i(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->g(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->c(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Wj;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->l(Lcom/android/tools/r8/graph/H2;)V

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->c:Ljava/util/IdentityHashMap;

    sget-object v1, Lcom/android/tools/r8/internal/Vj;->b:Lcom/android/tools/r8/internal/Vj;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/o11;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/o11;-><init>(Lcom/android/tools/r8/internal/Wj;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Wj;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final i(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/Wj;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    new-instance v1, Lcom/android/tools/r8/internal/q11;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/q11;-><init>(Lcom/android/tools/r8/internal/Wj;)V

    new-instance v2, Lcom/android/tools/r8/internal/r11;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/r11;-><init>(Lcom/android/tools/r8/internal/Wj;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/c4;->a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public abstract j(Lcom/android/tools/r8/graph/H2;)V
.end method

.method public final k(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->i(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->g(Lcom/android/tools/r8/graph/H2;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->h(Lcom/android/tools/r8/graph/H2;)V

    sget-boolean v0, Lcom/android/tools/r8/internal/Wj;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->c:Ljava/util/IdentityHashMap;

    sget-object v1, Lcom/android/tools/r8/internal/Vj;->c:Lcom/android/tools/r8/internal/Vj;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wj;->j(Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public abstract l(Lcom/android/tools/r8/graph/H2;)V
.end method
