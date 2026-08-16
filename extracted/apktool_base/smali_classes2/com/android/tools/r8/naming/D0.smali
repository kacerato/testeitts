.class public final Lcom/android/tools/r8/naming/D0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/naming/S0;

.field public final d:Lcom/android/tools/r8/internal/eA;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Ljava/util/IdentityHashMap;

.field public final h:Ljava/util/IdentityHashMap;

.field public final i:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/eA;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/eA;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/naming/D0;->d:Lcom/android/tools/r8/internal/eA;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/naming/D0;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/D0;->f:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/D0;->g:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/D0;->h:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/D0;->i:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->N:Lcom/android/tools/r8/naming/S0;

    iput-object p1, p0, Lcom/android/tools/r8/naming/D0;->c:Lcom/android/tools/r8/naming/S0;

    sget-boolean v0, Lcom/android/tools/r8/naming/D0;->j:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/naming/C0;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v1}, Lcom/android/tools/r8/naming/o0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Y5;

    move-result-object v1

    .line 4
    const-string v2, "MappingInterfaces"

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Y5;->a()Ljava/util/List;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/android/tools/r8/naming/j1;

    invoke-direct {v3, p0, v0, v6, v1}, Lcom/android/tools/r8/naming/j1;-><init>(Lcom/android/tools/r8/naming/D0;Ljava/util/ArrayDeque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;)V

    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 8
    const-string v3, "MappingClasses"

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 9
    iget-object v3, p0, Lcom/android/tools/r8/naming/D0;->e:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v3, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    new-instance v4, Lcom/android/tools/r8/naming/k1;

    invoke-direct {v4, p0, v0, v6, v1}, Lcom/android/tools/r8/naming/k1;-><init>(Lcom/android/tools/r8/naming/D0;Ljava/util/ArrayDeque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;)V

    .line 11
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    sget-boolean v3, Lcom/android/tools/r8/naming/D0;->j:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 14
    const-string v0, "MappingDefaultInterfaceMethods"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/naming/D0;->c:Lcom/android/tools/r8/naming/S0;

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/naming/S0;->a:Lcom/android/tools/r8/internal/nC;

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 19
    iget-object v4, p0, Lcom/android/tools/r8/naming/D0;->c:Lcom/android/tools/r8/naming/S0;

    .line 20
    iget-object v4, v4, Lcom/android/tools/r8/naming/S0;->a:Lcom/android/tools/r8/internal/nC;

    .line 21
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/j;

    .line 22
    iget-object v5, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 23
    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    if-nez v3, :cond_3

    goto :goto_1

    .line 25
    :cond_3
    iget-object v5, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 26
    instance-of v5, v5, Lcom/android/tools/r8/graph/I0;

    if-eqz v5, :cond_2

    .line 27
    :cond_4
    iget-object v5, p0, Lcom/android/tools/r8/naming/D0;->g:Ljava/util/IdentityHashMap;

    .line 28
    sget-object v7, Lcom/android/tools/r8/internal/yI;->c:Lcom/android/tools/r8/internal/Ib;

    .line 29
    iget-object v7, v3, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "$-CC;"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 30
    :cond_5
    iget-object v7, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v8, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {v8, v3}, Lcom/android/tools/r8/internal/yI;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 31
    instance-of v8, v7, Lcom/android/tools/r8/graph/I0;

    if-nez v8, :cond_6

    goto :goto_1

    .line 32
    :cond_6
    iget-object v4, v4, Lcom/android/tools/r8/naming/j;->d:Lcom/android/tools/r8/internal/nC;

    .line 33
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 34
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    .line 35
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/naming/V;

    .line 36
    invoke-virtual {v8}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/naming/V$b;

    .line 37
    iget-object v10, v9, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    iget-object v11, v7, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 38
    invoke-virtual {v9}, Lcom/android/tools/r8/naming/V$b;->i()Lcom/android/tools/r8/naming/V$b;

    move-result-object v9

    iget-object v10, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v11, v7, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v9, v10, v11}, Lcom/android/tools/r8/naming/V$b;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    .line 39
    invoke-virtual {v7, v9}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v10

    if-nez v10, :cond_a

    .line 40
    sget-boolean v8, Lcom/android/tools/r8/naming/D0;->j:Z

    if-eqz v8, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_a
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 42
    iget-object v10, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    .line 43
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 44
    invoke-virtual {v9, v11, v10}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    goto :goto_3

    .line 45
    :cond_b
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 46
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v10, v10, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v10

    if-nez v10, :cond_7

    .line 47
    iget-object v10, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    .line 48
    const-string v11, "$default$"

    invoke-static {v9, v11, v10}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/A2;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    .line 49
    :goto_3
    sget-boolean v10, Lcom/android/tools/r8/naming/D0;->j:Z

    if-nez v10, :cond_d

    iget-object v10, v9, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v10}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_4

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_d
    :goto_4
    iget-object v10, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v8}, Lcom/android/tools/r8/naming/V;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    .line 51
    invoke-virtual {v5, v9, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 52
    :cond_e
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ef0;->a()V

    .line 54
    const-string v0, "MinifyClasses"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 55
    new-instance v0, Lcom/android/tools/r8/naming/f;

    iget-object v3, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/naming/A0;

    iget-object v5, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v7, p0, Lcom/android/tools/r8/naming/D0;->d:Lcom/android/tools/r8/internal/eA;

    iget-object v8, p0, Lcom/android/tools/r8/naming/D0;->c:Lcom/android/tools/r8/naming/S0;

    .line 56
    iget-object v8, v8, Lcom/android/tools/r8/naming/S0;->b:Ljava/util/HashSet;

    .line 57
    invoke-direct {v4, v5, v7, v8}, Lcom/android/tools/r8/naming/A0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/eA;Ljava/util/HashSet;)V

    iget-object v5, p0, Lcom/android/tools/r8/naming/D0;->e:Ljava/util/Set;

    .line 58
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Lcom/android/tools/r8/graph/x0;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v5

    .line 59
    invoke-direct {v0, v3, v4, v5}, Lcom/android/tools/r8/naming/f;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/j0;Ljava/util/Collection;)V

    .line 60
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/naming/f;->a(Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/naming/d;

    move-result-object v3

    .line 61
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 62
    new-instance v0, Lcom/android/tools/r8/naming/B0;

    iget-object v4, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, p0, Lcom/android/tools/r8/naming/D0;->f:Ljava/util/IdentityHashMap;

    invoke-direct {v0, v4, v5}, Lcom/android/tools/r8/naming/B0;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)V

    .line 63
    const-string v4, "MinifyMethods"

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 64
    new-instance v4, Lcom/android/tools/r8/naming/Z;

    iget-object v5, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v4, v5, v0}, Lcom/android/tools/r8/naming/Z;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/m0;)V

    .line 65
    const-string v5, "Phase 1"

    invoke-virtual {p2, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 66
    invoke-virtual {v4}, Lcom/android/tools/r8/naming/Z;->e()V

    .line 67
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 68
    const-string v5, "Phase 2"

    invoke-virtual {p2, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 69
    new-instance v5, Lcom/android/tools/r8/naming/K;

    iget-object v7, v4, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v8, v4, Lcom/android/tools/r8/naming/Z;->d:Lcom/android/tools/r8/naming/Y;

    invoke-direct {v5, v7, v8, v1}, Lcom/android/tools/r8/naming/K;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/Y;Lcom/android/tools/r8/graph/Y5;)V

    .line 70
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 71
    const-string v7, "Phase 3"

    invoke-virtual {p2, v7}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 72
    invoke-virtual {v5, p2, v2}, Lcom/android/tools/r8/naming/K;->a(Lcom/android/tools/r8/internal/ns0;Ljava/util/List;)V

    .line 73
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 74
    const-string v5, "Phase 4"

    invoke-virtual {p2, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 75
    invoke-virtual {v4}, Lcom/android/tools/r8/naming/Z;->a()V

    .line 76
    invoke-virtual {v4}, Lcom/android/tools/r8/naming/Z;->d()V

    .line 77
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 78
    new-instance v5, Lcom/android/tools/r8/naming/X;

    iget-object v4, v4, Lcom/android/tools/r8/naming/Z;->c:Ljava/util/IdentityHashMap;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/naming/X;-><init>(Ljava/util/Map;)V

    .line 79
    iget-object v7, p0, Lcom/android/tools/r8/naming/D0;->g:Ljava/util/IdentityHashMap;

    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 80
    iget-object v7, p0, Lcom/android/tools/r8/naming/D0;->h:Ljava/util/IdentityHashMap;

    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 81
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 82
    const-string v7, "MinifyFields"

    invoke-virtual {p2, v7}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 83
    new-instance v7, Lcom/android/tools/r8/naming/z;

    iget-object v8, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v7, v8, v1, v0}, Lcom/android/tools/r8/naming/z;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/naming/m0;)V

    .line 84
    invoke-virtual {v7, p2, v2}, Lcom/android/tools/r8/naming/z;->a(Lcom/android/tools/r8/internal/ns0;Ljava/util/List;)Lcom/android/tools/r8/naming/x;

    move-result-object v0

    .line 85
    iget-object v1, v0, Lcom/android/tools/r8/naming/x;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/naming/D0;->i:Ljava/util/IdentityHashMap;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 86
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 87
    const-string v1, "non-rebound-references"

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 88
    iget-object v1, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    sget-boolean v2, Lcom/android/tools/r8/naming/n0;->b:Z

    .line 89
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, v0, Lcom/android/tools/r8/naming/x;->a:Ljava/lang/Object;

    invoke-direct {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 90
    iget-object v7, v0, Lcom/android/tools/r8/naming/x;->a:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 91
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 92
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 93
    new-instance v8, Lcom/android/tools/r8/naming/g0;

    invoke-direct {v8, v2, v1, v7}, Lcom/android/tools/r8/naming/g0;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 94
    new-instance v9, Lcom/android/tools/r8/graph/R5;

    invoke-direct {v9, v1, v8}, Lcom/android/tools/r8/graph/R5;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Q5;)V

    invoke-virtual {v9, p1}, Lcom/android/tools/r8/graph/R5;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 95
    iget-object p1, v0, Lcom/android/tools/r8/naming/x;->a:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 96
    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 97
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 98
    iget-object p1, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ef0;->a()V

    .line 99
    new-instance p1, Lcom/android/tools/r8/naming/C0;

    iget-object v2, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    move-object v1, p1

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/naming/C0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/d;Lcom/android/tools/r8/naming/X;Lcom/android/tools/r8/naming/x;Ljava/util/HashSet;)V

    .line 100
    iget-object p2, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/naming/V;Ljava/util/Map;Z)V
    .locals 3

    .line 180
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v0

    .line 181
    sget-boolean v1, Lcom/android/tools/r8/naming/D0;->j:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 182
    :cond_1
    :goto_0
    instance-of v1, v0, Lcom/android/tools/r8/naming/V$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 183
    check-cast v0, Lcom/android/tools/r8/naming/V$b;

    iget-object v1, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/naming/V$b;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    if-eqz p4, :cond_2

    .line 184
    iget-object v2, p0, Lcom/android/tools/r8/naming/D0;->h:Ljava/util/IdentityHashMap;

    .line 185
    :cond_2
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/tools/r8/naming/D0;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/naming/V;Ljava/util/IdentityHashMap;)V

    .line 186
    iget-object p4, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p4, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    .line 188
    invoke-virtual {p1, p4}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/j1;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 189
    iget-object p4, p4, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result p4

    if-nez p4, :cond_6

    .line 190
    :cond_3
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 191
    :cond_4
    check-cast v0, Lcom/android/tools/r8/naming/V$a;

    iget-object v1, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/naming/V$a;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    if-eqz p4, :cond_5

    .line 192
    iget-object v2, p0, Lcom/android/tools/r8/naming/D0;->i:Ljava/util/IdentityHashMap;

    .line 193
    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/tools/r8/naming/D0;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/naming/V;Ljava/util/IdentityHashMap;)V

    .line 194
    iget-object p4, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p4, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    .line 196
    invoke-virtual {p1, p4}, Lcom/android/tools/r8/graph/l1;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/g1;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 197
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result p4

    if-nez p4, :cond_6

    goto :goto_1

    :cond_6
    return-void

    .line 198
    :cond_7
    :goto_1
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/IdentityHashMap;[Lcom/android/tools/r8/graph/M2;)V
    .locals 7

    .line 168
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p3, v1

    .line 169
    iget-object v3, p0, Lcom/android/tools/r8/naming/D0;->c:Lcom/android/tools/r8/naming/S0;

    .line 170
    iget-object v3, v3, Lcom/android/tools/r8/naming/S0;->a:Lcom/android/tools/r8/internal/nC;

    .line 171
    iget-object v4, v2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/j;

    if-eqz v3, :cond_1

    .line 172
    new-instance v4, Lcom/android/tools/r8/naming/l1;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/tools/r8/naming/l1;-><init>(Lcom/android/tools/r8/naming/D0;Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)V

    .line 173
    iget-object v5, v3, Lcom/android/tools/r8/naming/j;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/naming/V;

    .line 174
    invoke-interface {v4, v6}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 175
    :cond_0
    iget-object v3, v3, Lcom/android/tools/r8/naming/j;->e:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/V;

    .line 176
    invoke-interface {v4, v5}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/tools/r8/naming/D0;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/IdentityHashMap;[Lcom/android/tools/r8/graph/M2;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;Lcom/android/tools/r8/naming/V;)V
    .locals 1

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/tools/r8/naming/D0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/naming/V;Ljava/util/Map;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/naming/V;Ljava/util/IdentityHashMap;)V
    .locals 2

    .line 199
    sget-boolean v0, Lcom/android/tools/r8/naming/D0;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/naming/D0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/naming/D0;->f:Ljava/util/IdentityHashMap;

    .line 200
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/V;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 202
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/D0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 204
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final synthetic a(Ljava/util/ArrayDeque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 101
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/naming/D0;->a(Ljava/util/Deque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/ArrayDeque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/naming/D0;->a(Ljava/util/Deque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/graph/M2;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Deque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/graph/M2;)V
    .locals 10

    .line 105
    iget-object v0, p0, Lcom/android/tools/r8/naming/D0;->c:Lcom/android/tools/r8/naming/S0;

    .line 106
    iget-object v0, v0, Lcom/android/tools/r8/naming/S0;->a:Lcom/android/tools/r8/internal/nC;

    .line 107
    iget-object v1, p4, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/j;

    .line 108
    iget-object v1, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    instance-of v2, v1, Lcom/android/tools/r8/graph/I0;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/tools/r8/naming/D0;->e:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->k()Lcom/android/tools/r8/graph/I0;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    if-eqz v0, :cond_4

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v3

    if-nez v3, :cond_4

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v0, Lcom/android/tools/r8/naming/j;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 114
    iget-object v4, v0, Lcom/android/tools/r8/naming/j;->c:Lcom/android/tools/r8/naming/E0;

    .line 115
    iget-object v5, p0, Lcom/android/tools/r8/naming/D0;->d:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/aA;

    .line 116
    iget-object v5, v5, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    .line 117
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    iget-object v5, p0, Lcom/android/tools/r8/naming/D0;->d:Lcom/android/tools/r8/internal/eA;

    .line 119
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/aA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p4, :cond_2

    .line 120
    iget-object v5, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    .line 121
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 122
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    new-instance v7, Lcom/android/tools/r8/naming/a;

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' cannot be mapped to \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' because it is in conflict with an existing class with the same name. This usually happens when compiling a test application against a source application and there are used classes in the test that was not given a -keep rule when compiling the app. Try either renaming \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' such that it will not collide or add a keep rule to keep \'"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3, v4}, Lcom/android/tools/r8/naming/a;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/Position;)V

    .line 125
    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v4, p0, Lcom/android/tools/r8/naming/D0;->d:Lcom/android/tools/r8/internal/eA;

    const/4 v5, 0x0

    .line 127
    invoke-virtual {v4, p4, v3, v5}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 128
    :goto_0
    new-instance v3, Lcom/android/tools/r8/naming/g1;

    invoke-direct {v3, p0, p4, v2}, Lcom/android/tools/r8/naming/g1;-><init>(Lcom/android/tools/r8/naming/D0;Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)V

    .line 129
    iget-object v4, v0, Lcom/android/tools/r8/naming/j;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/V;

    .line 130
    invoke-interface {v3, v5}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 131
    :cond_3
    iget-object v0, v0, Lcom/android/tools/r8/naming/j;->e:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/V;

    .line 132
    invoke-interface {v3, v4}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 133
    :cond_4
    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 134
    iget-object v3, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    .line 135
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v3

    .line 136
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v0

    .line 137
    iget-object v3, p0, Lcom/android/tools/r8/naming/D0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 138
    :cond_5
    invoke-interface {p2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_6
    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 140
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/J2;

    .line 141
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 142
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 143
    iget-object v7, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v6, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 144
    invoke-virtual {v7, p4, v8, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 145
    iget-object v7, p0, Lcom/android/tools/r8/naming/D0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v7, v6}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 146
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/V;

    iget-object v7, p0, Lcom/android/tools/r8/naming/D0;->h:Ljava/util/IdentityHashMap;

    .line 147
    invoke-virtual {p0, v6, v5, v7}, Lcom/android/tools/r8/naming/D0;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/naming/V;Ljava/util/IdentityHashMap;)V

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_8

    .line 148
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v7

    .line 149
    sget-boolean v8, Lcom/android/tools/r8/naming/D0;->j:Z

    if-nez v8, :cond_8

    if-eqz v7, :cond_8

    .line 150
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/tools/r8/naming/D0;->f:Ljava/util/IdentityHashMap;

    .line 151
    invoke-virtual {v7, v6}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/naming/V;

    .line 152
    invoke-virtual {v6}, Lcom/android/tools/r8/naming/V;->c()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/V;

    invoke-virtual {v5}, Lcom/android/tools/r8/naming/V;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_3

    .line 154
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 155
    :cond_b
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v6

    .line 156
    iget-object v7, p0, Lcom/android/tools/r8/naming/D0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v6, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 157
    invoke-virtual {v7, p4, v8, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v6

    .line 158
    iget-object v7, p0, Lcom/android/tools/r8/naming/D0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v7, v6}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 159
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/V;

    iget-object v7, p0, Lcom/android/tools/r8/naming/D0;->i:Ljava/util/IdentityHashMap;

    .line 160
    invoke-virtual {p0, v6, v5, v7}, Lcom/android/tools/r8/naming/D0;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/naming/V;Ljava/util/IdentityHashMap;)V

    goto/16 :goto_3

    :cond_c
    if-eqz v1, :cond_e

    .line 161
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->l1()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 162
    :cond_d
    iget-object v0, v1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p4, v2, v0}, Lcom/android/tools/r8/naming/D0;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/IdentityHashMap;[Lcom/android/tools/r8/graph/M2;)V

    .line 163
    :cond_e
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 164
    invoke-interface {p1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 165
    new-instance v0, Lcom/android/tools/r8/naming/h1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/naming/h1;-><init>(Lcom/android/tools/r8/naming/D0;Ljava/util/Deque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;)V

    invoke-virtual {p3, p4, v0}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    .line 166
    invoke-interface {p1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    return-void

    .line 167
    :cond_f
    new-instance v0, Lcom/android/tools/r8/naming/i1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/naming/i1;-><init>(Lcom/android/tools/r8/naming/D0;Ljava/util/Deque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;)V

    invoke-virtual {p3, p4, v0}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;Lcom/android/tools/r8/naming/V;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/tools/r8/naming/D0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/naming/V;Ljava/util/Map;Z)V

    return-void
.end method

.method public final synthetic b(Ljava/util/Deque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/naming/D0;->a(Ljava/util/Deque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final synthetic c(Ljava/util/Deque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/naming/D0;->a(Ljava/util/Deque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
