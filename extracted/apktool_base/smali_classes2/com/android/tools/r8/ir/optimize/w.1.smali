.class public final Lcom/android/tools/r8/ir/optimize/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/kB;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public d:Lcom/android/tools/r8/ir/optimize/v;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->d:Lcom/android/tools/r8/ir/optimize/v;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/w;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/w;->b:Lcom/android/tools/r8/internal/kB;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/w;->c:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/graph/l1;
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/l1;

    return-object p0
.end method

.method public static a(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)Ljava/util/Map;
    .locals 1

    .line 265
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance v0, Lv/F1;

    invoke-direct {v0, p0}, Lv/F1;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/l1;)Ljava/util/Set;
    .locals 0

    .line 264
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/shaking/j;)V
    .locals 1

    .line 172
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lv/E1;

    invoke-direct {v0, p1}, Lv/E1;-><init>(Lcom/android/tools/r8/shaking/j;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;)Lcom/android/tools/r8/ir/optimize/u;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/tools/r8/ir/optimize/u;->b:Lcom/android/tools/r8/ir/optimize/u;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object p1, Lcom/android/tools/r8/ir/optimize/u;->b:Lcom/android/tools/r8/ir/optimize/u;

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    sget-object p1, Lcom/android/tools/r8/ir/optimize/u;->b:Lcom/android/tools/r8/ir/optimize/u;

    return-object p1

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 10
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/ir/optimize/w;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/w;->e:Z

    if-nez p1, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_4
    :goto_0
    sget-object p1, Lcom/android/tools/r8/ir/optimize/u;->b:Lcom/android/tools/r8/ir/optimize/u;

    return-object p1

    .line 14
    :cond_5
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 15
    new-instance v4, Lv/G1;

    invoke-direct {v4, p0, v1, v3, v0}, Lv/G1;-><init>(Lcom/android/tools/r8/ir/optimize/w;Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v2, v4}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 17
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v4

    .line 19
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 20
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 21
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 22
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 24
    invoke-interface {v4}, Lcom/android/tools/r8/internal/EE;->i()V

    .line 25
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v6

    if-lez v6, :cond_8

    goto :goto_1

    .line 26
    :cond_8
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 27
    iget-object v5, v5, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 28
    :cond_9
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v5, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 29
    iget-object v5, v5, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_a
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v4

    new-instance v5, Lv/H1;

    invoke-direct {v5, v0}, Lv/H1;-><init>(Ljava/util/Set;)V

    .line 32
    :cond_b
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 34
    invoke-interface {v5, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 35
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 36
    :cond_c
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->b:Lcom/android/tools/r8/internal/kB;

    .line 37
    iget-object v0, v0, Lcom/android/tools/r8/internal/kB;->B:Ljava/util/List;

    if-eqz v0, :cond_14

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 41
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 42
    new-instance v4, Lv/I1;

    invoke-direct {v4, v1}, Lv/I1;-><init>(Ljava/util/Set;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lv/J1;

    invoke-direct {v2}, Lv/J1;-><init>()V

    .line 43
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 44
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lv/K1;

    invoke-direct {v2, v0}, Lv/K1;-><init>(Lcom/android/tools/r8/shaking/i;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lv/L1;

    invoke-direct {v2}, Lv/L1;-><init>()V

    .line 45
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 46
    new-instance v2, Lv/M1;

    invoke-direct {v2, v0}, Lv/M1;-><init>(Lcom/android/tools/r8/shaking/i;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lv/N1;

    invoke-direct {v2}, Lv/N1;-><init>()V

    .line 47
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 48
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 50
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 51
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v4

    .line 52
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    .line 53
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 54
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 55
    :cond_e
    new-instance v0, Lv/C1;

    invoke-direct {v0, v1}, Lv/C1;-><init>(Ljava/util/Set;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/k40;->a(Ljava/util/function/Consumer;)V

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/w;->d:Lcom/android/tools/r8/ir/optimize/v;

    if-nez p2, :cond_11

    .line 58
    new-instance p2, Lcom/android/tools/r8/ir/optimize/v;

    invoke-direct {p2, v3}, Lcom/android/tools/r8/ir/optimize/v;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/w;->d:Lcom/android/tools/r8/ir/optimize/v;

    .line 59
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/w;->b:Lcom/android/tools/r8/internal/kB;

    new-instance v0, Lv/D1;

    invoke-direct {v0, p0}, Lv/D1;-><init>(Lcom/android/tools/r8/ir/optimize/w;)V

    .line 60
    iget-object v1, p2, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 61
    iget-object p2, p2, Lcom/android/tools/r8/internal/kB;->B:Ljava/util/List;

    if-eqz p2, :cond_f

    .line 62
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 63
    :cond_f
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Attempt to call addWaveDoneAction() outside of wave."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_10
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "addWaveDoneAction() should never be used in D8."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_11
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/ir/optimize/v;->a(Ljava/util/IdentityHashMap;)V

    .line 66
    :goto_4
    monitor-exit p0

    goto :goto_6

    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 67
    :cond_12
    sget-boolean p2, Lcom/android/tools/r8/ir/optimize/w;->e:Z

    if-eqz p2, :cond_13

    goto :goto_6

    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 68
    :cond_14
    new-instance p2, Lv/x1;

    invoke-direct {p2}, Lv/x1;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 69
    :goto_6
    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_15

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 71
    :cond_15
    new-instance p1, Lcom/android/tools/r8/ir/optimize/u;

    invoke-direct {p1, v3}, Lcom/android/tools/r8/ir/optimize/u;-><init>(Ljava/util/IdentityHashMap;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Ljava/util/Set;)Ljava/util/Map;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 175
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 176
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    .line 177
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v6

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->y()I

    move-result v7

    .line 179
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    .line 180
    :goto_0
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v9

    if-nez v9, :cond_16

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_16

    .line 181
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/W5;->c(I)V

    .line 182
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/zE;

    .line 183
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 184
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v10

    .line 185
    iget-object v11, v1, Lcom/android/tools/r8/ir/optimize/w;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    invoke-static {v11, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v12

    .line 187
    sget-object v13, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v10, v11, v0, v12, v13}, Lcom/android/tools/r8/internal/T3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 188
    invoke-static {v4, v5}, Lcom/android/tools/r8/ir/optimize/w;->a(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/fB;->a(I)V

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 190
    :cond_1
    :try_start_1
    instance-of v11, v10, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v11, :cond_3

    .line 191
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v10

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v11

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v10

    .line 193
    iget-object v11, v11, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 194
    iget-object v11, v11, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 195
    invoke-virtual {v11, v10}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 196
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 197
    :cond_2
    invoke-static {v4, v5}, Lcom/android/tools/r8/ir/optimize/w;->a(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/fB;->a(I)V

    return-object v0

    .line 199
    :cond_3
    :try_start_2
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 200
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v10

    .line 201
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v11

    iget-object v11, v11, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    if-eq v11, v12, :cond_4

    .line 202
    invoke-static {v4, v5}, Lcom/android/tools/r8/ir/optimize/w;->a(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)Ljava/util/Map;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/fB;->a(I)V

    return-object v0

    .line 204
    :cond_4
    :try_start_3
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v11

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v12

    .line 206
    iget-object v12, v12, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 207
    iget-object v12, v12, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 208
    invoke-virtual {v12, v11}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v12

    .line 209
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    .line 210
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v14

    if-eqz v12, :cond_10

    .line 211
    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    goto/16 :goto_1

    .line 212
    :cond_5
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->N()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 213
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v15

    .line 214
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object v15

    .line 215
    iget-object v15, v15, Lcom/android/tools/r8/internal/uq;->m:Lcom/android/tools/r8/internal/ZY;

    .line 216
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/ZY;->d()Z

    move-result v15

    if-eqz v15, :cond_6

    goto/16 :goto_1

    .line 217
    :cond_6
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 218
    iget-object v14, v11, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->R()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 219
    invoke-virtual {v4, v12, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v5, v11}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 222
    invoke-virtual {v5, v11}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v3, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 223
    invoke-virtual {v5, v11}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object/from16 v16, v6

    goto/16 :goto_6

    .line 224
    :cond_7
    iget-object v13, v11, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v13

    if-nez v13, :cond_9

    iget-object v13, v11, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v14, v1, Lcom/android/tools/r8/ir/optimize/w;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-ne v13, v14, :cond_8

    goto :goto_3

    :cond_8
    move-object/from16 v16, v6

    goto/16 :goto_7

    .line 225
    :cond_9
    :goto_3
    invoke-virtual {v4, v12, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {v5, v11}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 228
    invoke-virtual {v5, v11}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v3, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 229
    invoke-virtual {v5, v11}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 230
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v13

    .line 231
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v15

    iget-object v15, v15, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v16, v6

    iget-object v6, v1, Lcom/android/tools/r8/ir/optimize/w;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-eq v15, v6, :cond_b

    goto :goto_4

    .line 232
    :cond_b
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 233
    invoke-interface {v6}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v15

    if-eqz v15, :cond_c

    :goto_4
    const/4 v6, 0x0

    goto :goto_5

    .line 234
    :cond_c
    iget-object v6, v6, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1, v13, v6}, Lcom/android/tools/r8/ir/optimize/w;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/zE;)Z

    move-result v6

    :goto_5
    if-eqz v6, :cond_e

    .line 235
    invoke-virtual {v4, v12, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v5, v11}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 238
    invoke-virtual {v5, v11}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v3, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-virtual {v5, v11}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_6
    move-object/from16 v6, v16

    goto/16 :goto_1

    .line 240
    :cond_e
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 241
    invoke-virtual {v4, v12, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 242
    :cond_f
    :goto_7
    new-instance v6, Lv/B1;

    invoke-direct {v6}, Lv/B1;-><init>()V

    .line 243
    invoke-interface {v5, v11, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 244
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 245
    :cond_10
    invoke-static {v4, v5}, Lcom/android/tools/r8/ir/optimize/w;->a(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)Ljava/util/Map;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/fB;->a(I)V

    return-object v0

    :cond_11
    move-object/from16 v16, v6

    .line 247
    :try_start_4
    iget-object v6, v1, Lcom/android/tools/r8/ir/optimize/w;->a:Lcom/android/tools/r8/graph/y;

    .line 248
    invoke-static {v6, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v11

    .line 249
    sget-object v12, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v10, v6, v0, v11, v12}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 250
    invoke-static {v4, v5}, Lcom/android/tools/r8/ir/optimize/w;->a(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)Ljava/util/Map;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/fB;->a(I)V

    return-object v0

    .line 252
    :cond_12
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    invoke-virtual {v1, v6, v10}, Lcom/android/tools/r8/ir/optimize/w;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/zE;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_6

    .line 253
    :cond_13
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 254
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 255
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->A()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 256
    invoke-static {v4, v5}, Lcom/android/tools/r8/ir/optimize/w;->a(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 257
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/fB;->a(I)V

    return-object v0

    :cond_14
    move-object/from16 v16, v6

    .line 258
    :try_start_6
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 259
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_15
    move-object/from16 v6, v16

    goto/16 :goto_0

    .line 260
    :cond_16
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/fB;->a(I)V

    .line 261
    invoke-static {v4, v5}, Lcom/android/tools/r8/ir/optimize/w;->a(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 262
    :goto_8
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/fB;->a(I)V

    .line 263
    throw v0
.end method

.method public final synthetic a()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->d:Lcom/android/tools/r8/ir/optimize/v;

    invoke-virtual {v0}, Lcom/android/tools/r8/ir/optimize/v;->a()V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->d:Lcom/android/tools/r8/ir/optimize/v;

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/No0;)V
    .locals 3

    .line 72
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 73
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 74
    invoke-interface {p1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 75
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/w;->c:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_15

    .line 76
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 77
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p3

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    goto/16 :goto_3

    .line 78
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 79
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 80
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/w;->e:Z

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->R()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 81
    :cond_2
    :goto_0
    sget-object p5, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    goto/16 :goto_3

    .line 82
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 83
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p1

    .line 84
    new-instance p5, Lcom/android/tools/r8/graph/R2$k;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-direct {p5, p1}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    goto/16 :goto_3

    .line 85
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->N()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 86
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object p1

    .line 87
    sget-boolean p3, Lcom/android/tools/r8/ir/optimize/w;->e:Z

    if-nez p3, :cond_6

    .line 88
    iget-object p3, p1, Lcom/android/tools/r8/internal/uq;->m:Lcom/android/tools/r8/internal/ZY;

    .line 89
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ZY;->d()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 90
    :cond_6
    :goto_1
    new-instance p5, Lcom/android/tools/r8/graph/Q2;

    .line 91
    iget-object p3, p1, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 92
    iget-object p1, p1, Lcom/android/tools/r8/internal/uq;->m:Lcom/android/tools/r8/internal/ZY;

    .line 93
    invoke-direct {p5, p3, p1}, Lcom/android/tools/r8/graph/Q2;-><init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    goto/16 :goto_3

    .line 94
    :cond_7
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/w;->e:Z

    if-eqz p1, :cond_8

    goto/16 :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 95
    :cond_9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p3

    .line 96
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 97
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->a:Lcom/android/tools/r8/graph/y;

    .line 98
    sget-object v1, Lcom/android/tools/r8/shaking/l1;->s:Lcom/android/tools/r8/shaking/l1;

    .line 99
    iget-object v2, v0, Lcom/android/tools/r8/graph/y;->r:Lcom/android/tools/r8/shaking/y1;

    if-eqz v2, :cond_a

    .line 100
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v1

    .line 101
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->a:Lcom/android/tools/r8/graph/y;

    .line 102
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 103
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/G1;->e:Lcom/android/tools/r8/graph/A2;

    if-ne p3, v1, :cond_b

    .line 104
    new-instance p5, Lcom/android/tools/r8/graph/Q2;

    .line 105
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    sget-object p3, Lcom/android/tools/r8/internal/vd;->c:Lcom/android/tools/r8/internal/vd;

    invoke-static {p3}, Lcom/android/tools/r8/internal/wd;->a(Lcom/android/tools/r8/internal/vd;)Lcom/android/tools/r8/internal/wd;

    move-result-object p3

    invoke-direct {p5, p1, p3}, Lcom/android/tools/r8/graph/Q2;-><init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    goto/16 :goto_3

    .line 106
    :cond_b
    iget-object v1, v0, Lcom/android/tools/r8/graph/G1;->f:Lcom/android/tools/r8/graph/A2;

    if-ne p3, v1, :cond_c

    .line 107
    new-instance p5, Lcom/android/tools/r8/graph/Q2;

    .line 108
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    sget-object p3, Lcom/android/tools/r8/internal/vd;->e:Lcom/android/tools/r8/internal/vd;

    invoke-static {p3}, Lcom/android/tools/r8/internal/wd;->a(Lcom/android/tools/r8/internal/vd;)Lcom/android/tools/r8/internal/wd;

    move-result-object p3

    invoke-direct {p5, p1, p3}, Lcom/android/tools/r8/graph/Q2;-><init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    goto :goto_3

    .line 109
    :cond_c
    iget-object v0, v0, Lcom/android/tools/r8/graph/G1;->g:Lcom/android/tools/r8/graph/A2;

    if-ne p3, v0, :cond_d

    .line 110
    new-instance p5, Lcom/android/tools/r8/graph/Q2;

    .line 111
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    sget-object p3, Lcom/android/tools/r8/internal/vd;->f:Lcom/android/tools/r8/internal/vd;

    invoke-static {p3}, Lcom/android/tools/r8/internal/wd;->a(Lcom/android/tools/r8/internal/vd;)Lcom/android/tools/r8/internal/wd;

    move-result-object p3

    invoke-direct {p5, p1, p3}, Lcom/android/tools/r8/graph/Q2;-><init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    goto :goto_3

    .line 112
    :cond_d
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/w;->e:Z

    if-eqz p1, :cond_e

    goto :goto_3

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 113
    :cond_f
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/G1;->e:Lcom/android/tools/r8/graph/A2;

    if-ne p3, v1, :cond_10

    .line 114
    sget-object p3, Lcom/android/tools/r8/internal/vd;->c:Lcom/android/tools/r8/internal/vd;

    goto :goto_2

    .line 115
    :cond_10
    iget-object v1, v0, Lcom/android/tools/r8/graph/G1;->f:Lcom/android/tools/r8/graph/A2;

    if-ne p3, v1, :cond_11

    .line 116
    sget-object p3, Lcom/android/tools/r8/internal/vd;->e:Lcom/android/tools/r8/internal/vd;

    goto :goto_2

    .line 117
    :cond_11
    iget-object v0, v0, Lcom/android/tools/r8/graph/G1;->g:Lcom/android/tools/r8/graph/A2;

    if-ne p3, v0, :cond_12

    .line 118
    sget-object p3, Lcom/android/tools/r8/internal/vd;->f:Lcom/android/tools/r8/internal/vd;

    goto :goto_2

    :cond_12
    move-object p3, p5

    :goto_2
    if-eqz p3, :cond_13

    .line 119
    new-instance p5, Lcom/android/tools/r8/graph/R2$k;

    .line 120
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/w;->c:Lcom/android/tools/r8/graph/u1;

    const/4 v2, 0x0

    .line 121
    invoke-virtual {p3, v0, p1, v1, v2}, Lcom/android/tools/r8/internal/vd;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/u1;I)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 122
    invoke-direct {p5, p1}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    goto :goto_3

    .line 123
    :cond_13
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/w;->e:Z

    if-eqz p1, :cond_14

    .line 124
    :goto_3
    invoke-interface {p2, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 125
    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 126
    :cond_15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p1

    const-string p3, "."

    if-nez p1, :cond_27

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p1

    if-eqz p1, :cond_16

    goto/16 :goto_9

    .line 127
    :cond_16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 128
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    instance-of p1, p1, Lcom/android/tools/r8/internal/Pf0;

    if-eqz p1, :cond_17

    .line 130
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->F0()Lcom/android/tools/r8/internal/Pf0;

    move-result-object p1

    .line 131
    iget p1, p1, Lcom/android/tools/r8/internal/Pf0;->l:I

    .line 132
    new-instance p3, Lcom/android/tools/r8/graph/b3;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/graph/b3;-><init>(I)V

    .line 133
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 134
    :cond_17
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 135
    iget-object p5, p0, Lcom/android/tools/r8/ir/optimize/w;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, p5, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_19

    .line 136
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->A2()Z

    move-result p1

    if-nez p1, :cond_18

    .line 137
    sget-object p1, Lcom/android/tools/r8/graph/R2$c;->e:Lcom/android/tools/r8/graph/R2$c;

    goto :goto_4

    :cond_18
    sget-object p1, Lcom/android/tools/r8/graph/R2$c;->f:Lcom/android/tools/r8/graph/R2$c;

    .line 138
    :goto_4
    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 139
    :cond_19
    iget-object v1, p5, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_1a

    .line 140
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/R2$d;->a(B)Lcom/android/tools/r8/graph/R2$d;

    move-result-object p1

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 141
    :cond_1a
    iget-object v1, p5, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_1c

    .line 142
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result p1

    int-to-short p1, p1

    .line 143
    sget-object p3, Lcom/android/tools/r8/graph/R2$j;->e:Lcom/android/tools/r8/graph/R2$j;

    if-nez p1, :cond_1b

    goto :goto_5

    :cond_1b
    new-instance p3, Lcom/android/tools/r8/graph/R2$j;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/graph/R2$j;-><init>(S)V

    .line 144
    :goto_5
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 145
    :cond_1c
    iget-object v1, p5, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_1d

    .line 146
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object p1

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 147
    :cond_1d
    iget-object v1, p5, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_1e

    .line 148
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->v2()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/R2$i;->a(J)Lcom/android/tools/r8/graph/R2$i;

    move-result-object p1

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 149
    :cond_1e
    iget-object v1, p5, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_21

    .line 150
    sget-boolean p3, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez p3, :cond_20

    .line 151
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p3

    .line 152
    sget-object p5, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    if-ne p3, p5, :cond_1f

    goto :goto_6

    :cond_1f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 153
    :cond_20
    :goto_6
    iget-wide v0, p1, Lcom/android/tools/r8/internal/qh;->l:J

    long-to-int p1, v0

    .line 154
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 155
    invoke-static {p1}, Lcom/android/tools/r8/graph/R2$g;->a(F)Lcom/android/tools/r8/graph/R2$g;

    move-result-object p1

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 156
    :cond_21
    iget-object v1, p5, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_24

    .line 157
    sget-boolean p3, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez p3, :cond_23

    .line 158
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p3

    .line 159
    sget-object p5, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    if-ne p3, p5, :cond_22

    goto :goto_7

    :cond_22
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 160
    :cond_23
    :goto_7
    iget-wide v0, p1, Lcom/android/tools/r8/internal/qh;->l:J

    .line 161
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 162
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/R2$f;->a(D)Lcom/android/tools/r8/graph/R2$f;

    move-result-object p1

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 163
    :cond_24
    iget-object p5, p5, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p5, :cond_26

    .line 164
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result p1

    int-to-char p1, p1

    .line 165
    sget-object p3, Lcom/android/tools/r8/graph/R2$e;->e:Lcom/android/tools/r8/graph/R2$e;

    if-nez p1, :cond_25

    goto :goto_8

    :cond_25
    new-instance p3, Lcom/android/tools/r8/graph/R2$e;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/graph/R2$e;-><init>(C)V

    .line 166
    :goto_8
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 167
    :cond_26
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected field type "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_27
    :goto_9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->R()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 169
    sget-object p1, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 170
    :cond_28
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected default value for field type "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    .line 266
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p2

    .line 268
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/w;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 269
    iget-object v0, v0, Lcom/android/tools/r8/graph/G1;->p:Lcom/android/tools/r8/internal/QC;

    .line 270
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 271
    :cond_0
    iget-object p2, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 272
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 273
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    instance-of v0, v0, Lcom/android/tools/r8/internal/jh;

    if-eqz v0, :cond_1

    .line 276
    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 277
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p2

    .line 278
    iget-object p2, p2, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 279
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
