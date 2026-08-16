.class public final Lcom/android/tools/r8/internal/xw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Lcom/android/tools/r8/graph/H5;

.field public final d:Lcom/android/tools/r8/internal/sR;

.field public final e:Ljava/util/List;

.field public f:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xw;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/xw;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/xw;->c:Lcom/android/tools/r8/graph/H5;

    new-instance p1, Lcom/android/tools/r8/internal/sR;

    new-instance v0, Lcom/android/tools/r8/internal/Qy1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Qy1;-><init>(Lcom/android/tools/r8/internal/fB;)V

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/sR;-><init>(Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xw;->d:Lcom/android/tools/r8/internal/sR;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->f()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/xw;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/dt;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/dt;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/p;
    .locals 0

    .line 83
    sget-object p0, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/IdentityHashMap;
    .locals 12

    .line 25
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/xw;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 27
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 32
    new-instance v4, Lcom/android/tools/r8/internal/Py1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/Py1;-><init>()V

    .line 33
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/p;

    .line 34
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    instance-of v5, v4, Lcom/android/tools/r8/internal/ov0;

    if-eqz v5, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    sget-boolean v5, Lcom/android/tools/r8/internal/xw;->g:Z

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/p;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/p;->b()Lcom/android/tools/r8/internal/LQ;

    move-result-object v5

    if-eqz v3, :cond_4

    .line 38
    invoke-interface {v5}, Lcom/android/tools/r8/internal/LQ;->size()I

    move-result v6

    goto :goto_2

    :cond_4
    const/4 v6, -0x1

    .line 39
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    .line 40
    sget-object v10, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/p;

    .line 41
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    instance-of v10, v8, Lcom/android/tools/r8/internal/Ot;

    if-eqz v10, :cond_5

    goto :goto_3

    .line 43
    :cond_5
    instance-of v10, v8, Lcom/android/tools/r8/internal/ov0;

    if-eqz v10, :cond_6

    move v7, v9

    goto :goto_5

    .line 44
    :cond_6
    sget-boolean v9, Lcom/android/tools/r8/internal/xw;->g:Z

    if-nez v9, :cond_8

    .line 45
    instance-of v9, v8, Lcom/android/tools/r8/internal/qg;

    if-eqz v9, :cond_7

    goto :goto_4

    .line 46
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_8
    :goto_4
    move-object v9, v5

    check-cast v9, Lcom/android/tools/r8/internal/p;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    instance-of v9, v9, Lcom/android/tools/r8/internal/qg;

    if-nez v9, :cond_9

    .line 49
    new-instance v5, Lcom/android/tools/r8/internal/qg;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/qg;-><init>()V

    .line 50
    :cond_9
    invoke-interface {v5}, Lcom/android/tools/r8/internal/LQ;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/p;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v8

    .line 51
    iget-object v9, v9, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    .line 52
    iget-object v8, v8, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_16

    if-eqz v3, :cond_12

    .line 53
    sget-boolean v3, Lcom/android/tools/r8/internal/xw;->g:Z

    if-nez v3, :cond_16

    iget-object v3, p0, Lcom/android/tools/r8/internal/xw;->c:Lcom/android/tools/r8/graph/H5;

    .line 54
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v8

    :cond_b
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    .line 55
    iget-object v10, p0, Lcom/android/tools/r8/internal/xw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9, v10, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/p;

    move-result-object v9

    .line 56
    sget-boolean v10, Lcom/android/tools/r8/internal/xw;->g:Z

    if-nez v10, :cond_d

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    instance-of v10, v9, Lcom/android/tools/r8/internal/ov0;

    if-nez v10, :cond_c

    goto :goto_7

    .line 58
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_d
    :goto_7
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    instance-of v10, v9, Lcom/android/tools/r8/internal/Ot;

    if-eqz v10, :cond_e

    goto :goto_6

    .line 61
    :cond_e
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/p;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 63
    iget-object v9, v9, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    goto :goto_8

    .line 64
    :cond_f
    iget-object v9, v9, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    .line 65
    :goto_8
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/g1;

    .line 66
    sget-boolean v11, Lcom/android/tools/r8/internal/xw;->g:Z

    if-nez v11, :cond_10

    invoke-interface {v5, v10}, Lcom/android/tools/r8/internal/LQ;->a(Lcom/android/tools/r8/graph/g1;)Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/zE;

    .line 68
    iget-object v10, p0, Lcom/android/tools/r8/internal/xw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v11, p0, Lcom/android/tools/r8/internal/xw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v8, v10, v11}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/p;

    move-result-object v8

    .line 69
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    instance-of v10, v8, Lcom/android/tools/r8/internal/Ot;

    if-eqz v10, :cond_13

    goto :goto_a

    .line 71
    :cond_13
    instance-of v10, v8, Lcom/android/tools/r8/internal/ov0;

    if-eqz v10, :cond_14

    goto :goto_b

    .line 72
    :cond_14
    move-object v10, v5

    check-cast v10, Lcom/android/tools/r8/internal/p;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    instance-of v10, v10, Lcom/android/tools/r8/internal/qg;

    if-nez v10, :cond_15

    .line 74
    new-instance v5, Lcom/android/tools/r8/internal/qg;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/qg;-><init>()V

    .line 75
    :cond_15
    invoke-interface {v5}, Lcom/android/tools/r8/internal/LQ;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/p;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v8

    .line 76
    iget-object v10, v10, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    .line 77
    iget-object v8, v8, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    :cond_16
    move v9, v7

    :goto_b
    if-eqz v9, :cond_17

    .line 78
    sget-object v3, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    invoke-virtual {v0, v1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_17
    if-eq v5, v4, :cond_18

    .line 79
    invoke-interface {v5}, Lcom/android/tools/r8/internal/LQ;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_18
    invoke-interface {v5}, Lcom/android/tools/r8/internal/LQ;->size()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 81
    sget-boolean v3, Lcom/android/tools/r8/internal/xw;->g:Z

    if-nez v3, :cond_1a

    invoke-interface {v5}, Lcom/android/tools/r8/internal/LQ;->size()I

    move-result v3

    if-le v3, v6, :cond_19

    goto :goto_c

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_1a
    :goto_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_1b
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)Z
    .locals 6

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/xw;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/xw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->m()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/uV0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/uV0;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    .line 6
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/rE;

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    return v3

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_7

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/xw;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/hw;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/tools/r8/internal/xw;->d:Lcom/android/tools/r8/internal/sR;

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/tools/r8/internal/dt;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/xw;->e:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 14
    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_2
    return v3
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/hw;)Z
    .locals 5

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 17
    iget-object v4, p0, Lcom/android/tools/r8/internal/xw;->f:Ljava/util/IdentityHashMap;

    if-nez v4, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw;->a()Ljava/util/IdentityHashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/internal/xw;->f:Ljava/util/IdentityHashMap;

    .line 19
    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/xw;->f:Ljava/util/IdentityHashMap;

    .line 20
    invoke-virtual {v4, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/p;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/p;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    .line 21
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v0

    .line 22
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    if-ne v1, p2, :cond_4

    goto :goto_0

    .line 24
    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/xw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, p0, Lcom/android/tools/r8/internal/xw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1, v2, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/p;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/F5;)Z
    .locals 6

    sget-boolean v0, Lcom/android/tools/r8/internal/xw;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/xw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw;->b:Lcom/android/tools/r8/internal/fB;

    new-instance v1, Lcom/android/tools/r8/internal/YN0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/YN0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/No0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    return v3

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_7

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/xw;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/hw;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/tools/r8/internal/xw;->d:Lcom/android/tools/r8/internal/sR;

    iget-object v0, p1, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dt;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/xw;->e:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_2
    return v3
.end method
