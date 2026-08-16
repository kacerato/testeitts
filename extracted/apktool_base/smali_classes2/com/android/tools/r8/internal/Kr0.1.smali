.class public Lcom/android/tools/r8/internal/Kr0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/Kr0$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/concurrent/ExecutorService;)I
    .locals 1

    .line 42
    instance-of v0, p0, Ljava/util/concurrent/ForkJoinPool;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->getParallelism()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Tr0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/Tr0;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Ur0;Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/android/tools/r8/internal/Ur0;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Xr0;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Xr0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/bs0;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/bs0;->accept(Ljava/lang/Object;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/cs0;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/cs0;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/cs0;Ljava/util/function/Predicate;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;
    .locals 2

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/xr0;

    const/4 v1, -0x1

    .line 9
    invoke-direct {v0, p3, p4, v1}, Lcom/android/tools/r8/internal/xr0;-><init>(Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;I)V

    .line 10
    :try_start_0
    new-instance p3, Lcom/android/tools/r8/internal/jL0;

    invoke-direct {p3, v0, p1}, Lcom/android/tools/r8/internal/jL0;-><init>(Lcom/android/tools/r8/internal/xr0;Lcom/android/tools/r8/internal/cs0;)V

    invoke-interface {p0, p3}, Lcom/android/tools/r8/internal/Yx;->a(Lcom/android/tools/r8/internal/ZH;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/Uu0; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    iget-object p0, p0, Lcom/android/tools/r8/internal/Uu0;->b:Ljava/util/concurrent/ExecutionException;

    throw p0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/gL0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/gL0;-><init>(Lcom/android/tools/r8/internal/Xr0;)V

    invoke-static {p0, v0, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/cs0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Ljava/util/function/Predicate;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/iL0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/iL0;-><init>(Lcom/android/tools/r8/internal/Xr0;)V

    invoke-static {p0, v0, p2, p3, p4}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/cs0;Ljava/util/function/Predicate;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/cs0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;
    .locals 1

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/pL0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pL0;-><init>(Ljava/lang/Iterable;)V

    const/4 p0, 0x0

    .line 5
    invoke-static {v0, p1, p0, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/cs0;Ljava/util/function/Predicate;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/cs0;Ljava/util/function/Predicate;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;
    .locals 1

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/pL0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pL0;-><init>(Ljava/lang/Iterable;)V

    .line 7
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/cs0;Ljava/util/function/Predicate;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;
    .locals 6

    .line 36
    iget v0, p0, Lcom/android/tools/r8/internal/nJ;->k0:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x10

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    add-int/2addr v0, v1

    const/16 v1, 0x30

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 40
    :goto_0
    invoke-interface {p0, v0}, Lcom/android/tools/r8/threading/ThreadingModule;->createThreadedExecutorService(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0

    .line 41
    :cond_1
    invoke-interface {p0, v0}, Lcom/android/tools/r8/threading/ThreadingModule;->createThreadedExecutorService(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/mL0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/mL0;-><init>(Lcom/android/tools/r8/internal/Wr0;)V

    .line 34
    invoke-static {p0, v0, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 35
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/tL0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/tL0;-><init>(Lcom/android/tools/r8/internal/Wr0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Wr0;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/nL0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/nL0;-><init>(Lcom/android/tools/r8/internal/Wr0;)V

    invoke-static {p0, v0, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/bs0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/bs0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/kL0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/kL0;-><init>(Lcom/android/tools/r8/internal/bs0;)V

    const/4 p1, 0x0

    .line 26
    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/cs0;Ljava/util/function/Predicate;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xr0;Lcom/android/tools/r8/internal/cs0;ILjava/lang/Object;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/oL0;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/tools/r8/internal/oL0;-><init>(Lcom/android/tools/r8/internal/cs0;Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/concurrent/Callable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Lcom/android/tools/r8/internal/Uu0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Uu0;-><init>(Ljava/util/concurrent/ExecutionException;)V

    throw p1
.end method

.method public static a(Ljava/util/Collection;Lcom/android/tools/r8/internal/zT;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Kr0$a;)V
    .locals 1

    .line 19
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Kr0$a;->a()I

    move-result p4

    if-lt v0, p4, :cond_0

    .line 20
    new-instance p4, Lcom/android/tools/r8/internal/qL0;

    invoke-direct {p4, p0}, Lcom/android/tools/r8/internal/qL0;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/tools/r8/internal/rL0;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/rL0;-><init>(Lcom/android/tools/r8/internal/zT;)V

    invoke-static {p4, p0, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/bs0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void

    .line 21
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 p4, p2, 0x1

    .line 22
    invoke-interface {p1, p3, p2}, Lcom/android/tools/r8/internal/zT;->accept(Ljava/lang/Object;I)V

    move p2, p4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/lL0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/lL0;-><init>(Ljava/util/function/Consumer;)V

    sget-object p1, Lcom/android/tools/r8/internal/Kr0$a;->d:Lcom/android/tools/r8/internal/Kr0$a;

    invoke-static {p0, v0, p2, p3, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/zT;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Kr0$a;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/internal/Tr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/sL0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/sL0;-><init>(Lcom/android/tools/r8/internal/Tr0;)V

    invoke-static {p0, v0, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Ur0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/internal/Ur0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 30
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/hL0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hL0;-><init>(Lcom/android/tools/r8/internal/Ur0;)V

    .line 31
    invoke-static {p0, v0, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Xr0;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Xr0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
