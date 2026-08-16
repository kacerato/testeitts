.class public abstract Lcom/android/tools/r8/internal/L70;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/m1;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/Set;

.field public final e:Lcom/android/tools/r8/internal/J70;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/m1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/L70;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/L70;->d:Ljava/util/Set;

    new-instance v0, Lcom/android/tools/r8/internal/J70;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J70;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/L70;->e:Lcom/android/tools/r8/internal/J70;

    iput-object p1, p0, Lcom/android/tools/r8/internal/L70;->a:Lcom/android/tools/r8/internal/m1;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/internal/n1;)V
    .locals 0

    .line 21
    invoke-interface {p1}, Lcom/android/tools/r8/internal/n1;->build()Lcom/android/tools/r8/internal/o1;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/L70;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/p1;)V
    .locals 0

    .line 29
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    invoke-interface {p3, p0}, Lcom/android/tools/r8/internal/p1;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/p1;

    move-result-object p2

    .line 32
    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/p1;

    .line 33
    sget-boolean p1, Lcom/android/tools/r8/internal/L70;->f:Z

    if-nez p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/internal/L70;
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/L70;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/QL0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/QL0;-><init>(Lcom/android/tools/r8/internal/L70;)V

    .line 6
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/p1;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/L70;->f()Lcom/android/tools/r8/internal/L70;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    .line 11
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/L70;
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/L70;->a()Lcom/android/tools/r8/internal/L70;

    move-result-object v0

    .line 26
    sget-boolean v1, Lcom/android/tools/r8/internal/L70;->f:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/L70;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/L70;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/tools/r8/internal/L70;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/RL0;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/internal/RL0;-><init>(Ljava/util/function/Function;Lcom/android/tools/r8/internal/L70;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/p1;
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/L70;->f:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/L70;->a:Lcom/android/tools/r8/internal/m1;

    invoke-interface {v1, p2}, Lcom/android/tools/r8/internal/m1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

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

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/L70;->d:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->a:Lcom/android/tools/r8/internal/m1;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/m1;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/PL0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/PL0;-><init>(Lcom/android/tools/r8/internal/L70;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->a:Lcom/android/tools/r8/internal/m1;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/m1;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/tools/r8/internal/F70;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/F70;-><init>(Lcom/android/tools/r8/internal/L70;)V

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/l1;Lcom/android/tools/r8/internal/q1;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->d:Ljava/util/Set;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/q1;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    invoke-interface {p2}, Lcom/android/tools/r8/internal/q1;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/p1;

    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v0, p2}, Lcom/android/tools/r8/internal/p1;->a(Lcom/android/tools/r8/internal/q1;)Lcom/android/tools/r8/internal/p1;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/tools/r8/internal/p1;->build()Lcom/android/tools/r8/internal/q1;

    move-result-object p2

    .line 19
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/l1;->a(Lcom/android/tools/r8/internal/q1;)Lcom/android/tools/r8/internal/l1;

    return-void

    .line 20
    :cond_1
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/l1;->a(Lcom/android/tools/r8/internal/q1;)Lcom/android/tools/r8/internal/l1;

    return-void
.end method

.method public final synthetic a(Ljava/util/List;Lcom/android/tools/r8/internal/p1;)V
    .locals 2

    .line 22
    invoke-interface {p2}, Lcom/android/tools/r8/internal/p1;->build()Lcom/android/tools/r8/internal/q1;

    move-result-object p2

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->d:Ljava/util/Set;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/q1;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/m1;
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/L70;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/L70;->f:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->a:Lcom/android/tools/r8/internal/m1;

    return-object v0

    .line 10
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/L70;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->e:Lcom/android/tools/r8/internal/J70;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/J70;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 11
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->e:Lcom/android/tools/r8/internal/J70;

    iget-object v1, p0, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/J70;->a(Ljava/util/Map;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/L70;->c()Lcom/android/tools/r8/internal/l1;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/L70;->a:Lcom/android/tools/r8/internal/m1;

    .line 14
    new-instance v2, Lcom/android/tools/r8/internal/KL0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/KL0;-><init>(Lcom/android/tools/r8/internal/l1;)V

    new-instance v3, Lcom/android/tools/r8/internal/LL0;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/internal/LL0;-><init>(Lcom/android/tools/r8/internal/L70;Lcom/android/tools/r8/internal/l1;)V

    .line 15
    invoke-interface {v1, v2, v3}, Lcom/android/tools/r8/internal/m1;->a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/L70;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    iget-object v2, p0, Lcom/android/tools/r8/internal/L70;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/ML0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/ML0;-><init>(Ljava/util/List;)V

    .line 20
    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 21
    iget-object v2, p0, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/NL0;

    invoke-direct {v3, p0, v1}, Lcom/android/tools/r8/internal/NL0;-><init>(Lcom/android/tools/r8/internal/L70;Ljava/util/List;)V

    .line 23
    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/L70;->d()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 25
    new-instance v2, Lcom/android/tools/r8/internal/OL0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/OL0;-><init>(Lcom/android/tools/r8/internal/l1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 26
    invoke-interface {v0}, Lcom/android/tools/r8/internal/l1;->build()Lcom/android/tools/r8/internal/m1;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/n1;
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->a:Lcom/android/tools/r8/internal/m1;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/m1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/q1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/G70;

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/internal/G70;-><init>(Lcom/android/tools/r8/internal/L70;Lcom/android/tools/r8/internal/q1;)V

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/H70;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/H70;-><init>(Lcom/android/tools/r8/internal/L70;Lcom/android/tools/r8/graph/A2;)V

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public abstract c()Lcom/android/tools/r8/internal/l1;
.end method

.method public abstract d()Ljava/util/Comparator;
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract f()Lcom/android/tools/r8/internal/L70;
.end method
