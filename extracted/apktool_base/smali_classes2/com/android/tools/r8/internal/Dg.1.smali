.class public final Lcom/android/tools/r8/internal/Dg;
.super Lcom/android/tools/r8/internal/V0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/V0;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    const-string v1, "the backing map (%s) must be empty"

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/U60;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 4

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v0, "count"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/tV;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    return v1

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 21
    :cond_1
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return v2
.end method

.method public final a(Ljava/lang/Object;I)I
    .locals 8

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Dg;->b(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    if-lez p2, :cond_6

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/tV;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_2

    return v1

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_4

    int-to-long v3, v2

    int-to-long v5, p2

    add-long/2addr v3, v5

    long-to-int v5, v3

    int-to-long v6, v5

    cmp-long v3, v3, v6

    if-nez v3, :cond_3

    .line 8
    :try_start_0
    invoke-virtual {v0, v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "overflow: checkedAdd("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Overflow adding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " occurrences to a count of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    iget-object v3, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-virtual {v3, p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    return v1

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string v0, "occurrences must be positive but was: "

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/zg;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/zg;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

.method public final a(ILjava/lang/Object;)Z
    .locals 4

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    const-string v0, "oldCount"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    .line 25
    const-string v0, "newCount"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/tV;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, p1, :cond_3

    if-nez v3, :cond_2

    .line 28
    iget-object p1, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return v2

    .line 29
    :cond_2
    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return v2

    :cond_3
    return v1
.end method

.method public final b(ILjava/lang/Object;)I
    .locals 5

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Dg;->b(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    if-lez p1, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/tV;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_3

    sub-int v3, v2, p1

    .line 6
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 7
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    return v2

    :cond_3
    return v1

    .line 9
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v0, "occurrences must be positive but was: "

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/tV;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    return p1
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/Cg;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Cg;-><init>(Lcom/android/tools/r8/internal/Dg;)V

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final d()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final g()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Ag;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ag;-><init>(Lcom/android/tools/r8/internal/Dg;)V

    new-instance v1, Lcom/android/tools/r8/internal/Bg;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Bg;-><init>(Lcom/android/tools/r8/internal/Dg;Lcom/android/tools/r8/internal/Ag;)V

    return-object v1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/PY;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V0;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/PY;-><init>(Lcom/android/tools/r8/internal/Dg;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dg;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/HJ;->a(J)I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Dg;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/MY;

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Dg;->size()I

    move-result v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/MY;

    .line 11
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v3

    .line 12
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    .line 13
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
