.class public final Lcom/android/tools/r8/dex/l0;
.super Lcom/android/tools/r8/dex/j0;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final i:Ljava/util/concurrent/ExecutorService;

.field public final j:Lcom/android/tools/r8/internal/qo0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/dex/k;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/qo0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/tools/r8/dex/j0;-><init>(Lcom/android/tools/r8/dex/k;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/qo0;)V

    iput-object p4, p0, Lcom/android/tools/r8/dex/l0;->i:Ljava/util/concurrent/ExecutorService;

    iput-object p5, p0, Lcom/android/tools/r8/dex/l0;->j:Lcom/android/tools/r8/internal/qo0;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/dex/t0;)I
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object p0, p0, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 14

    sget-boolean v0, Lcom/android/tools/r8/dex/l0;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/dex/t0;

    iget-object v3, v3, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v3, v3, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/dex/j0;->d:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/tools/r8/dex/j0;->d:Ljava/util/Set;

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/dex/j0;->a(Ljava/util/Set;)V

    iget-object v4, p0, Lcom/android/tools/r8/dex/j0;->d:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    return-object v0

    :cond_4
    iget-object v4, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/tools/r8/dex/j0;->f:Lcom/android/tools/r8/dex/t0;

    iget-object v5, v5, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v5, v5, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    iget-object v6, p0, Lcom/android/tools/r8/dex/j0;->g:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v6, v6, Lcom/android/tools/r8/internal/nJ;->H1:Z

    if-eqz v6, :cond_9

    if-nez v5, :cond_9

    if-nez v0, :cond_6

    iget-object v4, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_2
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/dex/t0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_3
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/j0;->b()Ljava/util/Map;

    move-result-object v0

    new-instance v13, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v13, v1}, Lcom/android/tools/r8/internal/IH;-><init>(I)V

    if-nez v5, :cond_14

    iget-object v1, p0, Lcom/android/tools/r8/dex/j0;->g:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->I1:Z

    if-eqz v1, :cond_14

    new-instance v1, Lcom/android/tools/r8/dex/Q;

    iget-object v7, p0, Lcom/android/tools/r8/dex/j0;->f:Lcom/android/tools/r8/dex/t0;

    iget-object v8, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/tools/r8/dex/j0;->d:Ljava/util/Set;

    iget-object v12, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, p0, Lcom/android/tools/r8/dex/l0;->i:Ljava/util/concurrent/ExecutorService;

    move-object v6, v1

    move-object v9, v4

    move-object v11, v13

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/android/tools/r8/dex/Q;-><init>(Lcom/android/tools/r8/dex/t0;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/Set;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v1, Lcom/android/tools/r8/dex/Q;->f:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    :cond_a
    :goto_4
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H2;

    new-instance v7, Lcom/android/tools/r8/dex/O;

    invoke-direct {v7, v1}, Lcom/android/tools/r8/dex/O;-><init>(Lcom/android/tools/r8/dex/Q;)V

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4, v7, v6}, Lcom/android/tools/r8/dex/Q;->a(Ljava/util/HashSet;Lcom/android/tools/r8/dex/O;Lcom/android/tools/r8/graph/H2;)V

    sget-boolean v6, Lcom/android/tools/r8/dex/Q;->k:Z

    if-nez v6, :cond_a

    iget-object v6, v7, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/dex/Q;->a(Ljava/util/AbstractList;)V

    sget-boolean v4, Lcom/android/tools/r8/dex/Q;->k:Z

    if-nez v4, :cond_f

    iget-object v4, v1, Lcom/android/tools/r8/dex/Q;->f:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/dex/O;

    iget-object v7, v7, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_5

    :cond_d
    if-ne v4, v2, :cond_e

    goto :goto_6

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    :goto_6
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v2, Lcom/android/tools/r8/dex/r0;

    iget-object v4, v1, Lcom/android/tools/r8/dex/Q;->c:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/tools/r8/dex/Q;->d:Ljava/util/List;

    iget-object v7, v1, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    iget-object v8, v1, Lcom/android/tools/r8/dex/Q;->h:Lcom/android/tools/r8/internal/IH;

    invoke-direct {v2, v4, v6, v7, v8}, Lcom/android/tools/r8/dex/r0;-><init>(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/IH;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/dex/O;

    iget-boolean v7, v6, Lcom/android/tools/r8/dex/O;->e:Z

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    iget v7, v6, Lcom/android/tools/r8/dex/O;->c:I

    const/high16 v8, 0x10000

    if-ge v7, v8, :cond_11

    iget v7, v6, Lcom/android/tools/r8/dex/O;->d:I

    if-ge v7, v8, :cond_11

    iget-object v7, v1, Lcom/android/tools/r8/dex/Q;->b:Lcom/android/tools/r8/dex/t0;

    iget-object v8, v1, Lcom/android/tools/r8/dex/Q;->e:Ljava/util/BitSet;

    invoke-virtual {v7}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, v1, Lcom/android/tools/r8/dex/Q;->b:Lcom/android/tools/r8/dex/t0;

    iget-object v8, v6, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v8, v7}, Lcom/android/tools/r8/dex/Q;->a(Ljava/util/Set;Lcom/android/tools/r8/dex/t0;)Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_7

    :cond_11
    new-instance v7, Lcom/android/tools/r8/dex/N;

    invoke-direct {v7, v1, v6}, Lcom/android/tools/r8/dex/N;-><init>(Lcom/android/tools/r8/dex/Q;Lcom/android/tools/r8/dex/O;)V

    iget-object v6, v1, Lcom/android/tools/r8/dex/Q;->b:Lcom/android/tools/r8/dex/t0;

    iget-object v8, v7, Lcom/android/tools/r8/dex/N;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v8, v6}, Lcom/android/tools/r8/dex/Q;->b(Ljava/util/Set;Lcom/android/tools/r8/dex/t0;)Ljava/util/HashSet;

    move-result-object v6

    new-instance v8, Lcom/android/tools/r8/dex/O;

    iget-object v9, v7, Lcom/android/tools/r8/dex/N;->a:Ljava/util/HashSet;

    invoke-direct {v8, v1, v9}, Lcom/android/tools/r8/dex/O;-><init>(Lcom/android/tools/r8/dex/Q;Ljava/util/HashSet;)V

    iget-object v9, v1, Lcom/android/tools/r8/dex/Q;->b:Lcom/android/tools/r8/dex/t0;

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v8, v2, v9}, Lcom/android/tools/r8/dex/Q;->a(Lcom/android/tools/r8/dex/O;Lcom/android/tools/r8/dex/r0;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    iget-object v7, v7, Lcom/android/tools/r8/dex/N;->c:Ljava/util/HashSet;

    invoke-direct {v9, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v9, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v9, v2, v8}, Lcom/android/tools/r8/dex/Q;->a(Ljava/util/HashSet;Lcom/android/tools/r8/dex/r0;Ljava/util/Collection;)Ljava/util/ArrayList;

    goto :goto_7

    :cond_12
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/dex/O;

    iget-boolean v6, v5, Lcom/android/tools/r8/dex/O;->e:Z

    if-nez v6, :cond_13

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v1, v5, v2, v6}, Lcom/android/tools/r8/dex/Q;->a(Lcom/android/tools/r8/dex/O;Lcom/android/tools/r8/dex/r0;Ljava/util/List;)Ljava/util/List;

    goto :goto_8

    :cond_14
    new-instance v1, Lcom/android/tools/r8/dex/q0;

    iget-object v7, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, p0, Lcom/android/tools/r8/dex/j0;->d:Ljava/util/Set;

    iget-object v11, p0, Lcom/android/tools/r8/dex/j0;->e:Ljava/util/IdentityHashMap;

    iget-object v12, p0, Lcom/android/tools/r8/dex/l0;->j:Lcom/android/tools/r8/internal/qo0;

    move-object v6, v1

    move-object v8, v4

    invoke-direct/range {v6 .. v13}, Lcom/android/tools/r8/dex/q0;-><init>(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/qo0;Lcom/android/tools/r8/internal/IH;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/q0;->a()V

    iget-object v2, v1, Lcom/android/tools/r8/dex/q0;->a:Lcom/android/tools/r8/dex/p0;

    iget-object v2, v2, Lcom/android/tools/r8/dex/p0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/q0;->a(Ljava/util/ArrayList;)V

    :cond_15
    iget-object v1, p0, Lcom/android/tools/r8/dex/l0;->j:Lcom/android/tools/r8/internal/qo0;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/dex/j0;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/qo0;)V

    sget-boolean v0, Lcom/android/tools/r8/dex/l0;->k:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lu/g1;

    invoke-direct {v1}, Lu/g1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    if-ne v3, v0, :cond_16

    goto :goto_9

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_17
    :goto_9
    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    return-object v0
.end method
