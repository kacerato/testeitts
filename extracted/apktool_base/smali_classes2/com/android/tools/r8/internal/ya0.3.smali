.class public final Lcom/android/tools/r8/internal/ya0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ya0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ya0;->c:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/F2;)Lcom/android/tools/r8/graph/F2;
    .locals 0

    .line 118
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/Dq;)Lcom/android/tools/r8/graph/F2;
    .locals 0

    .line 149
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 150
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 151
    :goto_0
    check-cast p0, Lcom/android/tools/r8/graph/F2;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/O2;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/android/tools/r8/internal/iJ0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/iJ0;-><init>()V

    .line 108
    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 109
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 110
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    .line 111
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p1, p3, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 113
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Aa0;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->d1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v0

    .line 60
    iget-object v0, v0, Lcom/android/tools/r8/graph/i3;->b:Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 62
    iget-object p0, p0, Lcom/android/tools/r8/internal/Aa0;->f:Lcom/android/tools/r8/internal/UY;

    .line 63
    check-cast p0, Lcom/android/tools/r8/internal/r6;

    invoke-virtual {p0, v0, v0}, Lcom/android/tools/r8/internal/r6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/tools/r8/graph/i3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/i3;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 66
    iput-object v0, p1, Lcom/android/tools/r8/graph/E0;->m:Lcom/android/tools/r8/graph/i3;

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/Dq;)V
    .locals 1

    .line 52
    iget-object p2, p2, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 53
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/HashMap;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 2
    new-instance v2, Lcom/android/tools/r8/internal/KA1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/KA1;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    check-cast v2, Lcom/android/tools/r8/graph/F2;

    .line 7
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Dq;

    .line 8
    sget-boolean v4, Lcom/android/tools/r8/internal/ya0;->d:Z

    if-nez v4, :cond_1

    .line 9
    iget-object v4, v3, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 10
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_1
    :goto_1
    iget-object v4, v3, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 13
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 14
    :cond_2
    new-instance v2, Lcom/android/tools/r8/internal/LA1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/LA1;-><init>()V

    .line 15
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Dq;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_4

    .line 16
    invoke-interface {v2, v6, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_3

    :cond_4
    move-object v5, v6

    goto :goto_2

    .line 17
    :cond_5
    move-object v2, v5

    check-cast v2, Lcom/android/tools/r8/graph/F2;

    .line 18
    :goto_3
    iget-object v4, v3, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 19
    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/F2;

    .line 20
    invoke-virtual {v5, v2}, Lcom/android/tools/r8/graph/F2;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 21
    new-instance v6, Lcom/android/tools/r8/internal/X11;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/X11;-><init>()V

    .line 22
    invoke-static {v6}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v6

    .line 23
    invoke-virtual {p0, v5, v6}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Dq;

    .line 24
    iget-object v7, v6, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 25
    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v6, v6, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-le v6, v1, :cond_6

    .line 27
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28
    :cond_7
    iget-object v4, v3, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 29
    iget-object v3, v3, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/util/Set;Lcom/android/tools/r8/graph/O2;Ljava/util/Set;)V
    .locals 2

    .line 101
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 102
    sget-boolean p0, Lcom/android/tools/r8/internal/ya0;->d:Z

    if-nez p0, :cond_2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 103
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/O2;

    .line 104
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 105
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 106
    :cond_3
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/Dq;)Lcom/android/tools/r8/graph/F2;
    .locals 0

    .line 1
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/wa0;
    .locals 6

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 68
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 69
    new-instance v2, Lcom/android/tools/r8/internal/Dq;

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 70
    iget-object v3, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    .line 71
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/yA1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/tools/r8/internal/yA1;-><init>(Lcom/android/tools/r8/internal/ya0;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;)V

    iget-object v5, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    .line 72
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v5

    .line 73
    invoke-static {v3, v4, v5, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 74
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 75
    new-instance v4, Lcom/android/tools/r8/internal/DA1;

    invoke-direct {v4, v1, v3}, Lcom/android/tools/r8/internal/DA1;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/EA1;

    invoke-direct {v4, p0, v3, v2}, Lcom/android/tools/r8/internal/EA1;-><init>(Lcom/android/tools/r8/internal/ya0;Ljava/util/Set;Lcom/android/tools/r8/internal/Dq;)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    .line 77
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v3

    .line 78
    invoke-static {v0, v4, v3, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 79
    new-instance p1, Lcom/android/tools/r8/internal/wa0;

    invoke-direct {p1, v1, v2}, Lcom/android/tools/r8/internal/wa0;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/internal/Dq;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/xa0;Lcom/android/tools/r8/internal/wa0;)Ljava/util/HashMap;
    .locals 2

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    new-instance v1, Lcom/android/tools/r8/internal/CA1;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/tools/r8/internal/CA1;-><init>(Lcom/android/tools/r8/internal/ya0;Lcom/android/tools/r8/internal/xa0;Lcom/android/tools/r8/internal/wa0;Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    sget-object p2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v1, p2}, Lcom/android/tools/r8/graph/H2;->g(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/F2;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/F2;)V
    .locals 0

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    .line 32
    invoke-static {p4, p1, p2, p3}, Lcom/android/tools/r8/internal/ya0;->a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/O2;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/O2;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/tools/r8/internal/ya0;->c:Lcom/android/tools/r8/internal/nJ;

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/I1;->t:Z

    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 139
    iget-object v2, v0, Lcom/android/tools/r8/shaking/i;->p:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 143
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/t5;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 144
    :cond_2
    new-instance p4, Lcom/android/tools/r8/internal/iJ0;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/iJ0;-><init>()V

    .line 145
    invoke-static {p4}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p4

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 146
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 147
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    .line 148
    invoke-static {p1, p2, p4, p5}, Lcom/android/tools/r8/internal/ya0;->a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/O2;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xa0;Lcom/android/tools/r8/internal/wa0;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 122
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p4

    .line 123
    iget-object v0, p0, Lcom/android/tools/r8/internal/ya0;->b:Lcom/android/tools/r8/graph/u1;

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p1, p4, v0, p2, v1}, Lcom/android/tools/r8/internal/xa0;->a(Lcom/android/tools/r8/graph/D2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/wa0;Z)Lcom/android/tools/r8/graph/F2;

    move-result-object p1

    .line 125
    new-instance p2, Lcom/android/tools/r8/internal/X11;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/X11;-><init>()V

    .line 126
    invoke-static {p2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Dq;

    .line 127
    iget-object p1, p1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 128
    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/Dq;)V
    .locals 2

    .line 49
    iget-object v0, p4, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 50
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/zA1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/tools/r8/internal/zA1;-><init>(Lcom/android/tools/r8/internal/ya0;Lcom/android/tools/r8/graph/F2;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;)V

    invoke-interface {p4, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H2;)V
    .locals 8

    .line 80
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 81
    new-instance v7, Lcom/android/tools/r8/internal/FA1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/FA1;-><init>(Lcom/android/tools/r8/internal/ya0;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;Ljava/util/Map;)V

    invoke-virtual {p4, v7}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    .line 82
    new-instance p1, Lcom/android/tools/r8/internal/GA1;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/GA1;-><init>(Lcom/android/tools/r8/internal/ya0;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V
    .locals 8

    .line 83
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    .line 84
    iget-object v1, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 85
    array-length v2, v1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v1}, [Lcom/android/tools/r8/graph/M2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/M2;

    .line 87
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 88
    new-instance v1, Lcom/android/tools/r8/graph/O2;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    move-object v0, v1

    :goto_0
    move-object v2, p0

    move-object v3, p5

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 89
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/ya0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/O2;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;)V

    .line 90
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/android/tools/r8/internal/ya0;->b:Lcom/android/tools/r8/graph/u1;

    .line 92
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 93
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    .line 94
    invoke-virtual {p2, p5, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    .line 95
    new-instance p5, Lcom/android/tools/r8/graph/E2;

    invoke-direct {p5, p2, p3}, Lcom/android/tools/r8/graph/E2;-><init>(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)V

    .line 96
    new-instance p2, Lcom/android/tools/r8/internal/AA1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/AA1;-><init>()V

    .line 97
    invoke-static {p2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p2

    .line 98
    invoke-interface {p4, p5, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Dq;

    .line 99
    iget-object p2, p2, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 100
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/Set;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 114
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    .line 116
    iget-object p2, p2, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 117
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Aa0;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/BA1;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/BA1;-><init>(Lcom/android/tools/r8/internal/Aa0;)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    .line 57
    invoke-static {p2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 33
    const-string v0, "Proto normalization"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ya0;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/wa0;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    sget-boolean v2, Lcom/android/tools/r8/internal/Aa0;->h:Z

    .line 36
    new-instance v2, Lcom/android/tools/r8/internal/za0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/za0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 37
    new-instance v1, Lcom/android/tools/r8/internal/va0;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/tools/r8/internal/va0;-><init>(Lcom/android/tools/r8/internal/ya0;Lcom/android/tools/r8/internal/wa0;Lcom/android/tools/r8/internal/za0;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Uj;->b(Ljava/util/Collection;)Lcom/android/tools/r8/internal/Zs0;

    .line 39
    iget-object v0, v2, Lcom/android/tools/r8/internal/za0;->b:Lcom/android/tools/r8/internal/r6;

    .line 40
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 41
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/tools/r8/internal/Aa0;

    iget-object v1, v2, Lcom/android/tools/r8/internal/za0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, v2, Lcom/android/tools/r8/internal/za0;->b:Lcom/android/tools/r8/internal/r6;

    iget-object v2, v2, Lcom/android/tools/r8/internal/za0;->c:Ljava/util/IdentityHashMap;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/tools/r8/internal/Aa0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/UY;Ljava/util/IdentityHashMap;)V

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/ya0;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Aa0;)V

    .line 44
    iget-object v1, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, p2, p1}, Lcom/android/tools/r8/internal/ZS;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 48
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/xa0;Lcom/android/tools/r8/internal/wa0;)Ljava/util/Map;
    .locals 2

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/ya0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/xa0;Lcom/android/tools/r8/internal/wa0;)Ljava/util/HashMap;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/android/tools/r8/internal/ya0;->a(Ljava/util/HashMap;)V

    .line 4
    new-instance p2, Lcom/android/tools/r8/internal/Yr1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Yr1;-><init>()V

    new-instance p3, Lcom/android/tools/r8/internal/HA1;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/HA1;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/IA1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IA1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/JA1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/JA1;-><init>()V

    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Ljava/util/function/IntFunction;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/gt0;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
