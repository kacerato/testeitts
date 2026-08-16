.class public final Lcom/android/tools/r8/ir/optimize/J0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/L2;

.field public final c:Lcom/android/tools/r8/graph/L2;

.field public final d:Lcom/android/tools/r8/graph/M2;

.field public final e:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/J0;->e:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/J0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    const-string v0, "$SwitchMap$"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/J0;->b:Lcom/android/tools/r8/graph/L2;

    const-string v0, "$EnumSwitchMapping$"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/J0;->c:Lcom/android/tools/r8/graph/L2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->S1:Lcom/android/tools/r8/graph/M2;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/J0;->d:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    instance-of v0, p1, Lcom/android/tools/r8/internal/Mo0;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/shaking/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/J0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/ir/optimize/J0;->a(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/J0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/J0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/J0;->e:Ljava/util/IdentityHashMap;

    .line 5
    sget-boolean v2, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_1
    if-nez v2, :cond_3

    .line 7
    iget-object v2, v0, Lcom/android/tools/r8/shaking/i;->G:Ljava/util/Map;

    .line 8
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :goto_1
    new-instance v2, Lcom/android/tools/r8/shaking/i;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/shaking/i;-><init>(Lcom/android/tools/r8/shaking/i;Ljava/util/IdentityHashMap;)V

    return-object v2

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/J0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lv/l;

    invoke-direct {v1, p0}, Lv/l;-><init>(Lcom/android/tools/r8/ir/optimize/J0;)V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/J0;->a:Lcom/android/tools/r8/graph/y;

    .line 18
    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    .line 19
    new-instance v1, Lv/m;

    invoke-direct {v1, p0, p1}, Lv/m;-><init>(Lcom/android/tools/r8/ir/optimize/J0;Lcom/android/tools/r8/internal/fB;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/g1;)V
    .locals 7

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/GG;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GG;-><init>()V

    .line 22
    new-instance v1, Lv/k;

    invoke-direct {v1, p2}, Lv/k;-><init>(Lcom/android/tools/r8/graph/l1;)V

    .line 23
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    instance-of v2, v1, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 27
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 28
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 29
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v4, :cond_9

    .line 30
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_1

    .line 31
    :cond_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v4

    .line 32
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v3

    .line 33
    iget-object v3, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v5, 0x1

    .line 34
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 35
    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v3, :cond_9

    .line 36
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 37
    :cond_4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v3

    .line 38
    iget-object v5, p0, Lcom/android/tools/r8/ir/optimize/J0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 39
    iget-object v6, v5, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 40
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v5, v5, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/J0;->a:Lcom/android/tools/r8/graph/y;

    .line 41
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    if-eq v5, v6, :cond_5

    goto :goto_1

    .line 42
    :cond_5
    iget-object v3, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 43
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v3, :cond_9

    .line 44
    instance-of v5, v3, Lcom/android/tools/r8/internal/Mo0;

    if-nez v5, :cond_6

    goto :goto_1

    .line 45
    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    .line 46
    iget-object v5, p0, Lcom/android/tools/r8/ir/optimize/J0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v6, v3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 47
    iget-object v5, v5, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 48
    :cond_7
    invoke-virtual {v0, v4, v3}, Lcom/android/tools/r8/internal/GG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_8
    if-eq v3, v1, :cond_2

    :cond_9
    :goto_1
    return-void

    .line 49
    :cond_a
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/J0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)Z
    .locals 2

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 54
    iget-object p1, p1, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/J0;->b:Lcom/android/tools/r8/graph/L2;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    iget-object v1, v1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    if-nez p1, :cond_0

    .line 57
    iget-object p1, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/J0;->c:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    iget-object v1, v1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    :cond_0
    iget-object p1, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/J0;->d:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/ir/optimize/J0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/g1;)V

    return-void
.end method
