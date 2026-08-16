.class public abstract Lcom/android/tools/r8/internal/Gc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/t70;

.field public final c:Lcom/android/tools/r8/internal/Ki;

.field public final d:Lcom/android/tools/r8/internal/JI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/t70;Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/JI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gc;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Gc;->b:Lcom/android/tools/r8/internal/t70;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Gc;->c:Lcom/android/tools/r8/internal/Ki;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Gc;->d:Lcom/android/tools/r8/internal/JI;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/List;
    .locals 0

    .line 9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Nm;)V
    .locals 1

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    new-instance p0, Lcom/android/tools/r8/errors/q;

    invoke-direct {p0}, Lcom/android/tools/r8/errors/q;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 107
    new-instance p0, Lcom/android/tools/r8/internal/TF0;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/TF0;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Nm;->a(Lcom/android/tools/r8/internal/Wr0;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/internal/Km;)V
    .locals 1

    .line 108
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 109
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/Km;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/List;ILcom/android/tools/r8/graph/M2;Ljava/util/List;)Z
    .locals 0

    .line 10
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    add-int/2addr p1, p0

    .line 11
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/util/Collection;)Ljava/util/ArrayDeque;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/OF0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/OF0;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 6
    new-array p0, v1, [Ljava/util/List;

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/YB;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/YB;-><init>(Ljava/util/List;)V

    const/4 p0, 0x1

    .line 8
    iput-boolean p0, v0, Lcom/android/tools/r8/internal/YB;->b:Z

    return-object v0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 11
    new-instance v4, Lcom/android/tools/r8/errors/q;

    invoke-direct {v4}, Lcom/android/tools/r8/errors/q;-><init>()V

    invoke-static {v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_1

    .line 12
    :cond_3
    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    :goto_2
    if-ge v1, v2, :cond_4

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    new-instance v4, Lcom/android/tools/r8/internal/PF0;

    invoke-direct {v4, v3, v1}, Lcom/android/tools/r8/internal/PF0;-><init>(Ljava/util/List;I)V

    invoke-static {v0, v4}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Vr0;)V

    .line 15
    invoke-virtual {p0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Ic;
    .locals 2

    .line 1
    const-string v0, "Convert classes"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/android/tools/r8/internal/Hc;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Hc;-><init>()V

    .line 3
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/tools/r8/internal/Gc;->a(Lcom/android/tools/r8/internal/Hc;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Gc;->a()V

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/Ic;

    iget-object p2, v1, Lcom/android/tools/r8/internal/Hc;->a:Ljava/util/IdentityHashMap;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Ic;-><init>(Ljava/util/IdentityHashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/ns0;
.end method

.method public abstract a()V
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/ns0;)V
    .locals 7

    .line 110
    const-string v0, "Process methods"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Gc;->b:Lcom/android/tools/r8/internal/t70;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Gc;->c:Lcom/android/tools/r8/internal/Ki;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Gc;->d:Lcom/android/tools/r8/internal/JI;

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/t70;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/JI;Lcom/android/tools/r8/internal/ns0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    :catchall_0
    move-exception p1

    .line 113
    :try_start_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hc;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 10

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/Gc;->c:Lcom/android/tools/r8/internal/Ki;

    .line 14
    iget-object v1, v1, Lcom/android/tools/r8/internal/Ki;->a:Lcom/android/tools/r8/internal/M70;

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/Gc;->a:Lcom/android/tools/r8/graph/y;

    .line 16
    new-instance v3, Lcom/android/tools/r8/internal/n9;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/n9;-><init>()V

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    instance-of v4, v1, Lcom/android/tools/r8/internal/b10;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance v5, Lcom/android/tools/r8/internal/P70;

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v6

    .line 21
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v2

    invoke-direct {v5, v6, v2, v3}, Lcom/android/tools/r8/internal/P70;-><init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/s4;Lcom/android/tools/r8/internal/n9;)V

    move-object v3, v5

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Gc;->b:Lcom/android/tools/r8/internal/t70;

    .line 23
    iget-object v5, v2, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 24
    invoke-static {v5}, Lcom/android/tools/r8/internal/m9;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/m9;

    move-result-object v5

    iget-object v2, v2, Lcom/android/tools/r8/internal/t70;->I:Lcom/android/tools/r8/internal/ns0;

    .line 25
    invoke-virtual {v5, p2, v3, v2}, Lcom/android/tools/r8/internal/m9;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/ns0;)V

    .line 26
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o9;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 27
    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 28
    new-instance v2, Lcom/android/tools/r8/internal/eC;

    .line 29
    invoke-direct {v2}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 30
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 31
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o9;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/Gc;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Gc;->c:Lcom/android/tools/r8/internal/Ki;

    .line 34
    new-instance v5, Lcom/android/tools/r8/internal/ca;

    invoke-direct {v5, v2, p1, v3}, Lcom/android/tools/r8/internal/ca;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hc;Lcom/android/tools/r8/internal/Ki;)V

    if-eqz v4, :cond_2

    move-object v3, v5

    goto :goto_1

    .line 35
    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/Q70;

    .line 36
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v6

    invoke-direct {v3, v2, v6, v5}, Lcom/android/tools/r8/internal/Q70;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/ea;)V

    .line 37
    :goto_1
    iput-object v3, v5, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/internal/Gc;->b:Lcom/android/tools/r8/internal/t70;

    invoke-virtual {v2, v3, p2}, Lcom/android/tools/r8/internal/t70;->a(Lcom/android/tools/r8/internal/ea;Ljava/util/concurrent/ExecutorService;)V

    .line 39
    sget-boolean v2, Lcom/android/tools/r8/internal/Gc;->e:Z

    if-nez v2, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ea;->b()V

    .line 40
    :cond_3
    invoke-static {v0}, Lcom/android/tools/r8/internal/Gc;->b(Ljava/util/Collection;)Ljava/util/ArrayDeque;

    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 42
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 44
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v6

    if-nez v6, :cond_5

    .line 45
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 46
    :cond_6
    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v3

    :goto_3
    const/4 v3, 0x1

    .line 47
    :goto_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    add-int/lit8 v5, v3, 0x1

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wave "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 49
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H2;

    .line 50
    iget-object v7, p0, Lcom/android/tools/r8/internal/Gc;->c:Lcom/android/tools/r8/internal/Ki;

    .line 51
    iget-object v7, v7, Lcom/android/tools/r8/internal/Ki;->d:Ljava/util/Set;

    .line 52
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 53
    sget-boolean v7, Lcom/android/tools/r8/internal/Ki;->h:Z

    if-nez v7, :cond_7

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 54
    :cond_9
    iget-object v3, p0, Lcom/android/tools/r8/internal/Gc;->a:Lcom/android/tools/r8/graph/y;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Gc;->c:Lcom/android/tools/r8/internal/Ki;

    .line 55
    new-instance v7, Lcom/android/tools/r8/internal/ca;

    invoke-direct {v7, v3, p1, v6}, Lcom/android/tools/r8/internal/ca;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hc;Lcom/android/tools/r8/internal/Ki;)V

    if-eqz v4, :cond_a

    move-object v6, v7

    goto :goto_6

    .line 56
    :cond_a
    new-instance v6, Lcom/android/tools/r8/internal/Q70;

    .line 57
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v8

    invoke-direct {v6, v3, v8, v7}, Lcom/android/tools/r8/internal/Q70;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/ea;)V

    .line 58
    :goto_6
    iput-object v6, v7, Lcom/android/tools/r8/internal/ca;->i:Lcom/android/tools/r8/internal/ea;

    .line 59
    iget-object v3, p0, Lcom/android/tools/r8/internal/Gc;->c:Lcom/android/tools/r8/internal/Ki;

    .line 60
    iget-object v7, v3, Lcom/android/tools/r8/internal/Ki;->b:Lcom/android/tools/r8/internal/t70;

    .line 61
    iget-object v7, v7, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v7

    iput-object v7, v3, Lcom/android/tools/r8/internal/Ki;->g:Lcom/android/tools/r8/internal/Ef;

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Gc;->a(Ljava/util/Collection;)V

    .line 63
    const-string v3, "Class conversion"

    .line 64
    invoke-static {p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/concurrent/ExecutorService;)I

    move-result v7

    invoke-virtual {p3, v7, v3}, Lcom/android/tools/r8/internal/ns0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/ls0;

    move-result-object v3

    .line 65
    new-instance v7, Lcom/android/tools/r8/internal/RF0;

    invoke-direct {v7, p0, v6}, Lcom/android/tools/r8/internal/RF0;-><init>(Lcom/android/tools/r8/internal/Gc;Lcom/android/tools/r8/internal/ea;)V

    iget-object v8, p0, Lcom/android/tools/r8/internal/Gc;->a:Lcom/android/tools/r8/graph/y;

    .line 66
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v8

    .line 67
    invoke-static {v0, v7, v8, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    iget-object v7, p0, Lcom/android/tools/r8/internal/Gc;->c:Lcom/android/tools/r8/internal/Ki;

    .line 69
    iget-object v8, v7, Lcom/android/tools/r8/internal/Ki;->f:Lcom/android/tools/r8/internal/lr0;

    const/4 v9, 0x0

    .line 70
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/lr0;->a(Ljava/util/function/Consumer;)V

    .line 71
    iget-object v7, v7, Lcom/android/tools/r8/internal/Ki;->e:Lcom/android/tools/r8/internal/lr0;

    .line 72
    invoke-virtual {v7, v9}, Lcom/android/tools/r8/internal/lr0;->a(Ljava/util/function/Consumer;)V

    .line 73
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/ls0;->a(Ljava/util/Collection;)V

    .line 74
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ls0;->a()V

    .line 75
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/ea;->a()Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 77
    iget-object v3, p0, Lcom/android/tools/r8/internal/Gc;->c:Lcom/android/tools/r8/internal/Ki;

    .line 78
    iget-object v7, v3, Lcom/android/tools/r8/internal/Ki;->b:Lcom/android/tools/r8/internal/t70;

    .line 79
    iget-object v7, v7, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v7

    iput-object v7, v3, Lcom/android/tools/r8/internal/Ki;->g:Lcom/android/tools/r8/internal/Ef;

    .line 80
    new-instance v3, Lcom/android/tools/r8/internal/SF0;

    invoke-direct {v3, p0, v6}, Lcom/android/tools/r8/internal/SF0;-><init>(Lcom/android/tools/r8/internal/Gc;Lcom/android/tools/r8/internal/ea;)V

    iget-object v7, p0, Lcom/android/tools/r8/internal/Gc;->a:Lcom/android/tools/r8/graph/y;

    .line 81
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v7

    .line 82
    invoke-static {v0, v3, v7, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 83
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gc;->c:Lcom/android/tools/r8/internal/Ki;

    .line 84
    iget-object v3, v0, Lcom/android/tools/r8/internal/Ki;->f:Lcom/android/tools/r8/internal/lr0;

    .line 85
    invoke-virtual {v3, v9}, Lcom/android/tools/r8/internal/lr0;->a(Ljava/util/function/Consumer;)V

    .line 86
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ki;->e:Lcom/android/tools/r8/internal/lr0;

    .line 87
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/lr0;->a(Ljava/util/function/Consumer;)V

    .line 88
    sget-boolean v0, Lcom/android/tools/r8/internal/Gc;->e:Z

    if-nez v0, :cond_b

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/ea;->b()V

    .line 89
    :cond_b
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 90
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 91
    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    move v3, v5

    goto/16 :goto_4

    :cond_c
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 92
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 93
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->o1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 95
    sget-object v1, Lcom/android/tools/r8/graph/k1;->b:Lcom/android/tools/r8/graph/k1;

    iput-object v1, v0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gc;->c:Lcom/android/tools/r8/internal/Ki;

    .line 97
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    .line 98
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/tools/r8/internal/Ki;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/ns0;)V

    .line 99
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gc;->d:Lcom/android/tools/r8/internal/JI;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gc;->a:Lcom/android/tools/r8/graph/y;

    .line 102
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    new-instance v1, Lcom/android/tools/r8/internal/QF0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/QF0;-><init>(Ljava/util/Collection;)V

    .line 103
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$p;->a()Lcom/android/tools/r8/internal/Nm;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/Wr0;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/ns0;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Gc;->a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method
