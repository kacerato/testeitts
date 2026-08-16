.class public final Lcom/android/tools/r8/internal/da;
.super Lcom/android/tools/r8/internal/ea;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/y;

.field public final d:Ljava/util/function/BiConsumer;

.field public final e:Ljava/util/function/BiConsumer;

.field public final f:Ljava/util/function/Function;

.field public final g:Ljava/util/function/BiConsumer;

.field public final h:Lcom/android/tools/r8/shaking/Q;

.field public final i:Ljava/util/IdentityHashMap;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/function/BiConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/shaking/Q;Ljava/util/function/BiConsumer;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ea;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/da;->i:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/da;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/da;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/internal/da;->c:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/da;->d:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Lcom/android/tools/r8/internal/da;->e:Ljava/util/function/BiConsumer;

    iput-object p4, p0, Lcom/android/tools/r8/internal/da;->f:Ljava/util/function/Function;

    iput-object p5, p0, Lcom/android/tools/r8/internal/da;->g:Ljava/util/function/BiConsumer;

    iput-object p6, p0, Lcom/android/tools/r8/internal/da;->h:Lcom/android/tools/r8/shaking/Q;

    iput-object p7, p0, Lcom/android/tools/r8/internal/da;->l:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static a(Ljava/util/Map$Entry;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 26
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/iR;

    .line 27
    iget-object p0, p0, Lcom/android/tools/r8/internal/iR;->c:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/da;->c()V

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/da;->d()V

    .line 25
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)V
    .locals 0

    .line 4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    .line 7
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    .line 8
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->h:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/bK;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->j:Ljava/util/ArrayList;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/da;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->i:Ljava/util/IdentityHashMap;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/da;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->d:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xh;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->k:Ljava/util/ArrayList;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/da;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->e:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/Set;Ljava/util/Map$Entry;)V
    .locals 6

    .line 28
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/iR;

    .line 29
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H5;

    .line 30
    iget-object v1, v0, Lcom/android/tools/r8/internal/iR;->g:Lcom/android/tools/r8/internal/hR;

    .line 31
    invoke-static {}, Lcom/android/tools/r8/internal/Zx;->a()Lcom/android/tools/r8/internal/Zx;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/da;->f:Ljava/util/function/Function;

    .line 32
    invoke-interface {v3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/rr0;

    .line 33
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    .line 34
    iget-boolean v5, v1, Lcom/android/tools/r8/internal/hR;->d:Z

    if-nez v5, :cond_0

    .line 35
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/tools/r8/internal/hR;->a(Lcom/android/tools/r8/internal/Zx;Lcom/android/tools/r8/internal/rr0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    const/4 v2, 0x1

    .line 36
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/hR;->d:Z

    .line 37
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/da;->c:Lcom/android/tools/r8/graph/y;

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/da;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->h:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/bK;)V
    .locals 2

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/bK;->c:Lcom/android/tools/r8/graph/H5;

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/bK;->d:Lcom/android/tools/r8/graph/G;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/da;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->j:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/H81;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/H81;-><init>(Lcom/android/tools/r8/internal/da;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->h:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/da;->i:Ljava/util/IdentityHashMap;

    .line 4
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/I81;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/I81;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/android/tools/r8/internal/J81;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/J81;-><init>(Lcom/android/tools/r8/internal/da;Ljava/util/Set;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/da;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->c:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/lR;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/da;->h:Lcom/android/tools/r8/shaking/Q;

    new-instance v0, Lcom/android/tools/r8/internal/AW0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/AW0;-><init>()V

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/shaking/Q;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->h:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->g:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->h:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object p2, p0, Lcom/android/tools/r8/internal/da;->h:Lcom/android/tools/r8/shaking/Q;

    new-instance v0, Lcom/android/tools/r8/internal/AW0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/AW0;-><init>()V

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/shaking/Q;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final h(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final i(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->l:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final k(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final m(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final n(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final o(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final p(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final q(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->l:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final s(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final t(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/da;->l:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final v(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final w(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final x(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final y(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final z(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method
