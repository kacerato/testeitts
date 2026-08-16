.class public final Lcom/android/tools/r8/internal/ca;
.super Lcom/android/tools/r8/internal/ea;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/y;

.field public final d:Lcom/android/tools/r8/internal/Hc;

.field public final e:Lcom/android/tools/r8/internal/Ki;

.field public final f:Ljava/util/LinkedHashMap;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public i:Lcom/android/tools/r8/internal/ea;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hc;Lcom/android/tools/r8/internal/Ki;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ea;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ca;->f:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ca;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ca;->h:Ljava/util/ArrayList;

    iput-object p0, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ca;->c:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ca;->d:Lcom/android/tools/r8/internal/Hc;

    iput-object p3, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v1, Lcom/android/tools/r8/internal/LV0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/LV0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/ca;->a(Ljava/util/function/Consumer;)V

    .line 33
    iget-object v1, p0, Lcom/android/tools/r8/internal/ca;->d:Lcom/android/tools/r8/internal/Hc;

    new-instance v2, Lcom/android/tools/r8/internal/LV0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/LV0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/ca;->a(Lcom/android/tools/r8/internal/Hc;Ljava/util/function/Consumer;)V

    .line 34
    new-instance v1, Lcom/android/tools/r8/internal/LV0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/LV0;-><init>(Ljava/util/List;)V

    .line 35
    iget-object v2, p0, Lcom/android/tools/r8/internal/ca;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/xh;

    .line 36
    iget-object v6, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/xh;->a(Lcom/android/tools/r8/internal/yh;)V

    .line 37
    sget-boolean v6, Lcom/android/tools/r8/internal/xh;->i:Z

    if-nez v6, :cond_1

    iget-object v6, v5, Lcom/android/tools/r8/internal/xh;->h:Lcom/android/tools/r8/graph/H2;

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_1
    :goto_1
    iget-object v5, v5, Lcom/android/tools/r8/internal/xh;->h:Lcom/android/tools/r8/graph/H2;

    .line 39
    invoke-virtual {v5, v1}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/ca;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->L1()Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ki;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->L1()Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/t71;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/t71;-><init>(Lcom/android/tools/r8/internal/ca;)V

    .line 13
    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    .line 4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    .line 5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Hc;Ljava/util/function/Consumer;)V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/s71;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/s71;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/iR;

    .line 50
    iget-object v4, v3, Lcom/android/tools/r8/internal/iR;->g:Lcom/android/tools/r8/internal/hR;

    .line 51
    invoke-static {}, Lcom/android/tools/r8/internal/rr0;->a()Lcom/android/tools/r8/internal/rr0;

    move-result-object v5

    .line 52
    iget-boolean v6, v4, Lcom/android/tools/r8/internal/hR;->d:Z

    if-nez v6, :cond_0

    .line 53
    invoke-virtual {v4, p1, v5, p2}, Lcom/android/tools/r8/internal/hR;->a(Lcom/android/tools/r8/internal/Zx;Lcom/android/tools/r8/internal/rr0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    const/4 v5, 0x1

    .line 54
    iput-boolean v5, v4, Lcom/android/tools/r8/internal/hR;->d:Z

    .line 55
    :cond_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/iR;->c()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/ca;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/bK;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->f:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-boolean v1, Lcom/android/tools/r8/internal/ca;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/ca;->f:Ljava/util/LinkedHashMap;

    .line 17
    iget-object v2, p1, Lcom/android/tools/r8/internal/bK;->b:Lcom/android/tools/r8/graph/H5;

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/ca;->f:Ljava/util/LinkedHashMap;

    .line 20
    iget-object v2, p1, Lcom/android/tools/r8/internal/bK;->b:Lcom/android/tools/r8/graph/H5;

    .line 21
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 25
    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->g:Ljava/util/ArrayList;

    monitor-enter p2

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xh;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 28
    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->h:Ljava/util/ArrayList;

    monitor-enter p2

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->f:Ljava/util/LinkedHashMap;

    .line 42
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/w71;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/w71;-><init>(Lcom/android/tools/r8/internal/ca;)V

    .line 43
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->f:Ljava/util/LinkedHashMap;

    .line 45
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/x71;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/x71;-><init>(Lcom/android/tools/r8/internal/ca;Ljava/util/function/Consumer;)V

    .line 46
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 47
    iget-object p1, p0, Lcom/android/tools/r8/internal/ca;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/bK;)V
    .locals 3

    .line 7
    iget-object v0, p2, Lcom/android/tools/r8/internal/bK;->c:Lcom/android/tools/r8/graph/H5;

    .line 8
    iget-object v1, p2, Lcom/android/tools/r8/internal/bK;->d:Lcom/android/tools/r8/graph/G;

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/ca;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    .line 10
    iget-object p2, p2, Lcom/android/tools/r8/internal/bK;->c:Lcom/android/tools/r8/graph/H5;

    .line 11
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/ca;->j:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/ca;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/ca;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    return-void
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

.method public final synthetic b(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 11
    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/bK;)V
    .locals 2

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/bK;->b:Lcom/android/tools/r8/graph/H5;

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/bK;->c:Lcom/android/tools/r8/graph/H5;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/ca;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->L1()Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/v71;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/v71;-><init>(Lcom/android/tools/r8/internal/ca;)V

    .line 6
    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->L1()Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/u71;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/u71;-><init>(Lcom/android/tools/r8/internal/ca;)V

    .line 4
    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final h(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method

.method public final i(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final j(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p1, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final k(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final m(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final n(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final o(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final p(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final q(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final r(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final s(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method

.method public final t(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final u(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final v(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method

.method public final w(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method

.method public final x(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method

.method public final y(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    return-void
.end method

.method public final z(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object p2, p0, Lcom/android/tools/r8/internal/ca;->e:Lcom/android/tools/r8/internal/Ki;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/Ki;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-void
.end method
