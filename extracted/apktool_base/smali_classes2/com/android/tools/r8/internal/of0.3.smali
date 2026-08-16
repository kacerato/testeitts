.class public final Lcom/android/tools/r8/internal/of0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/shaking/o3;

.field public final c:Lcom/android/tools/r8/internal/mf0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/of0;->b:Lcom/android/tools/r8/shaking/o3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$p;->y:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/mf0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/of0;->c:Lcom/android/tools/r8/internal/mf0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/kf0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/kf0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/bt0;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/tf0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/tf0;-><init>()V

    .line 13
    new-instance v1, Lcom/android/tools/r8/internal/sf0;

    .line 14
    sget-boolean v2, Lcom/android/tools/r8/internal/uf0;->p:Z

    sget-object v2, Lcom/android/tools/r8/internal/lZ;->j:Lcom/android/tools/r8/internal/Jt;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/sf0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g3;->j()Lcom/android/tools/r8/graph/g3$a;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/w0;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/graph/w0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g3$a;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g3$a;->d()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v2

    .line 22
    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 130
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/g3$a;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/uf0;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 23
    iget-object v3, v0, Lcom/android/tools/r8/internal/of0;->b:Lcom/android/tools/r8/shaking/o3;

    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/o3;->j()Lcom/android/tools/r8/internal/nJ$m;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    sget-object v4, Lcom/android/tools/r8/internal/nJ$m;->b:Lcom/android/tools/r8/internal/nJ$m;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    return-object v5

    .line 25
    :cond_0
    new-instance v3, Lcom/android/tools/r8/internal/eA;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/eA;-><init>(I)V

    .line 26
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 28
    iget-object v6, v0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    .line 29
    sget-boolean v7, Lcom/android/tools/r8/graph/W5;->c:Z

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 30
    :cond_2
    :goto_0
    new-instance v7, Lcom/android/tools/r8/graph/W5;

    invoke-direct {v7}, Lcom/android/tools/r8/graph/W5;-><init>()V

    .line 31
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/H2;

    .line 32
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/W5;->a(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_1

    .line 33
    :cond_3
    iget-object v6, v7, Lcom/android/tools/r8/graph/L5;->b:Ljava/util/TreeMap;

    .line 34
    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 35
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    .line 36
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/K5;

    .line 37
    iget-object v10, v0, Lcom/android/tools/r8/internal/of0;->c:Lcom/android/tools/r8/internal/mf0;

    check-cast v10, Lcom/android/tools/r8/internal/lf0;

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/internal/lf0;->a(Lcom/android/tools/r8/graph/K5;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 38
    iget-object v10, v8, Lcom/android/tools/r8/graph/K5;->c:Ljava/util/Set;

    .line 39
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 40
    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/H2;

    .line 41
    iget-object v13, v0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/shaking/i;

    iget-object v14, v0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v13, v12, v14}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 42
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 43
    invoke-virtual {v3, v13, v12, v9}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_3

    .line 44
    :cond_6
    iget-object v9, v8, Lcom/android/tools/r8/graph/K5;->c:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 45
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/H2;

    .line 46
    iget-object v12, v8, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v10, v8, v12, v3}, Lcom/android/tools/r8/internal/of0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/K5;Ljava/lang/String;Lcom/android/tools/r8/internal/eA;)V

    goto :goto_4

    .line 48
    :cond_7
    iget-object v9, v8, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {v11, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v8, v8, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    .line 51
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 53
    :cond_8
    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    .line 54
    iget-object v8, v7, Lcom/android/tools/r8/graph/L5;->b:Ljava/util/TreeMap;

    .line 55
    invoke-virtual {v8}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 56
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/K5;

    .line 57
    new-instance v12, Lcom/android/tools/r8/internal/rf0;

    iget-object v13, v0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v12, v13, v10}, Lcom/android/tools/r8/internal/rf0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/K5;)V

    .line 58
    iget-object v13, v12, Lcom/android/tools/r8/internal/rf0;->b:Lcom/android/tools/r8/graph/K5;

    .line 59
    iget-object v13, v13, Lcom/android/tools/r8/graph/K5;->c:Ljava/util/Set;

    .line 60
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v9

    .line 61
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/graph/H2;

    .line 62
    iget-object v9, v12, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/shaking/i;

    iget-object v5, v12, Lcom/android/tools/r8/internal/rf0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9, v15, v5}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z

    move-result v5

    xor-int/lit8 v9, v5, 0x1

    move-object/from16 v16, v8

    .line 63
    new-instance v8, Lcom/android/tools/r8/internal/qf0;

    invoke-direct {v8, v15}, Lcom/android/tools/r8/internal/qf0;-><init>(Lcom/android/tools/r8/graph/b1;)V

    move-object/from16 v17, v13

    .line 64
    iget-object v13, v12, Lcom/android/tools/r8/internal/rf0;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v13, v15, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_9

    .line 65
    iget-object v5, v12, Lcom/android/tools/r8/internal/rf0;->d:Ljava/util/Set;

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_9
    invoke-virtual {v15}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    move-object v13, v5

    check-cast v13, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/h1;

    .line 67
    new-instance v15, Lcom/android/tools/r8/internal/qf0;

    invoke-direct {v15, v13}, Lcom/android/tools/r8/internal/qf0;-><init>(Lcom/android/tools/r8/graph/b1;)V

    move-object/from16 v18, v5

    .line 68
    iget-object v5, v12, Lcom/android/tools/r8/internal/rf0;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v13, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v5, v8, Lcom/android/tools/r8/internal/qf0;->b:Ljava/util/Set;

    invoke-interface {v5, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v5, v15, Lcom/android/tools/r8/internal/qf0;->b:Ljava/util/Set;

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v18

    goto :goto_7

    :cond_a
    or-int/2addr v14, v9

    move-object/from16 v8, v16

    move-object/from16 v13, v17

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto :goto_6

    :cond_b
    move-object/from16 v16, v8

    if-nez v14, :cond_c

    .line 71
    iget-object v5, v10, Lcom/android/tools/r8/graph/K5;->c:Ljava/util/Set;

    .line 72
    invoke-static {v5}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v5

    goto :goto_a

    .line 73
    :cond_c
    invoke-virtual {v12, v2}, Lcom/android/tools/r8/internal/rf0;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 74
    iget-object v5, v12, Lcom/android/tools/r8/internal/rf0;->d:Ljava/util/Set;

    .line 75
    new-instance v8, Lcom/android/tools/r8/internal/Yx0;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 76
    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 77
    :cond_d
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 78
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/qf0;

    .line 79
    iget-object v5, v5, Lcom/android/tools/r8/internal/qf0;->b:Ljava/util/Set;

    .line 80
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/qf0;

    .line 81
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_8

    .line 82
    :cond_e
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object v5

    .line 83
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v9, v12, Lcom/android/tools/r8/internal/rf0;->b:Lcom/android/tools/r8/graph/K5;

    .line 85
    iget-object v9, v9, Lcom/android/tools/r8/graph/K5;->c:Ljava/util/Set;

    .line 86
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 87
    :cond_f
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/H2;

    .line 88
    invoke-virtual {v12, v13}, Lcom/android/tools/r8/internal/rf0;->a(Lcom/android/tools/r8/graph/b1;)Lcom/android/tools/r8/internal/qf0;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 89
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    move-object v5, v8

    .line 90
    :goto_a
    invoke-virtual {v6, v10, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    .line 92
    iget-object v8, v10, Lcom/android/tools/r8/graph/K5;->c:Ljava/util/Set;

    .line 93
    invoke-static {v8}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v8

    .line 94
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-eq v5, v8, :cond_11

    .line 95
    iget-object v5, v10, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    .line 96
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    move-object/from16 v8, v16

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_5

    .line 97
    :cond_12
    iget-object v5, v7, Lcom/android/tools/r8/graph/L5;->b:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 98
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/K5;

    .line 99
    invoke-virtual {v6, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    .line 100
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_13

    goto :goto_b

    .line 101
    :cond_13
    sget-boolean v9, Lcom/android/tools/r8/internal/of0;->d:Z

    if-nez v9, :cond_15

    iget-object v9, v0, Lcom/android/tools/r8/internal/of0;->c:Lcom/android/tools/r8/internal/mf0;

    check-cast v9, Lcom/android/tools/r8/internal/lf0;

    invoke-virtual {v9, v7}, Lcom/android/tools/r8/internal/lf0;->a(Lcom/android/tools/r8/graph/K5;)Z

    move-result v9

    if-nez v9, :cond_14

    goto :goto_c

    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 102
    :cond_15
    :goto_c
    iget-object v9, v0, Lcom/android/tools/r8/internal/of0;->c:Lcom/android/tools/r8/internal/mf0;

    .line 103
    check-cast v9, Lcom/android/tools/r8/internal/lf0;

    invoke-virtual {v9, v7, v4}, Lcom/android/tools/r8/internal/lf0;->a(Lcom/android/tools/r8/graph/K5;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v9

    .line 104
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/H2;

    .line 105
    invoke-virtual {v0, v12, v7, v9, v3}, Lcom/android/tools/r8/internal/of0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/K5;Ljava/lang/String;Lcom/android/tools/r8/internal/eA;)V

    goto :goto_d

    .line 106
    :cond_16
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v10, v7, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    .line 108
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    .line 109
    iget-object v12, v7, Lcom/android/tools/r8/graph/K5;->c:Ljava/util/Set;

    invoke-static {v12}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v12

    .line 110
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    if-ne v8, v12, :cond_17

    goto :goto_e

    .line 111
    :cond_17
    iget-object v9, v7, Lcom/android/tools/r8/graph/K5;->b:Ljava/lang/String;

    .line 112
    :goto_e
    invoke-virtual {v11, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 113
    :cond_18
    new-instance v4, Lcom/android/tools/r8/internal/oV;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/oV;-><init>(Lcom/android/tools/r8/internal/pV;)V

    .line 114
    new-instance v5, Lcom/android/tools/r8/internal/Ko1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/Ko1;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 115
    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    return-object v4

    .line 116
    :cond_19
    new-instance v4, Lcom/android/tools/r8/internal/tf0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/tf0;-><init>()V

    .line 117
    new-instance v5, Lcom/android/tools/r8/internal/nf0;

    iget-object v6, v0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v5, v6, v3, v4}, Lcom/android/tools/r8/internal/nf0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/eA;Lcom/android/tools/r8/internal/tf0;)V

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    .line 119
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/bt0;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/w0;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/graph/w0;

    .line 121
    iget-object v7, v0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    .line 122
    sget-boolean v3, Lcom/android/tools/r8/internal/tf0;->d:Z

    if-nez v3, :cond_1b

    iget-object v3, v4, Lcom/android/tools/r8/internal/tf0;->a:Lcom/android/tools/r8/internal/r6;

    .line 123
    iget-object v3, v3, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 124
    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_f

    .line 125
    :cond_1a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 126
    :cond_1b
    :goto_f
    new-instance v3, Lcom/android/tools/r8/internal/uf0;

    iget-object v8, v4, Lcom/android/tools/r8/internal/tf0;->b:Lcom/android/tools/r8/internal/r6;

    iget-object v9, v4, Lcom/android/tools/r8/internal/tf0;->c:Lcom/android/tools/r8/internal/r6;

    iget-object v10, v4, Lcom/android/tools/r8/internal/tf0;->a:Lcom/android/tools/r8/internal/r6;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/android/tools/r8/internal/uf0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/s6;Lcom/android/tools/r8/internal/s6;Lcom/android/tools/r8/internal/s6;Ljava/util/Map;)V

    .line 127
    new-instance v4, Lcom/android/tools/r8/shaking/b;

    iget-object v5, v0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v4, v5, v3}, Lcom/android/tools/r8/shaking/b;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/lZ;)V

    .line 128
    iget-object v1, v1, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v4, v1, v2}, Lcom/android/tools/r8/shaking/b;->a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V

    return-object v3
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/K5;Ljava/lang/String;Lcom/android/tools/r8/internal/eA;)V
    .locals 4

    .line 131
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/eA;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->d1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v0

    .line 134
    iget-object v0, v0, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 136
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 138
    iget-object v0, p0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 139
    iget-object v2, p2, Lcom/android/tools/r8/graph/K5;->c:Ljava/util/Set;

    .line 140
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/tools/r8/internal/of0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/K5;Ljava/lang/String;Lcom/android/tools/r8/internal/eA;)V

    :cond_3
    move-object v1, v0

    .line 142
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/of0;->c:Lcom/android/tools/r8/internal/mf0;

    .line 143
    check-cast v0, Lcom/android/tools/r8/internal/lf0;

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/android/tools/r8/internal/lf0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Ljava/lang/String;Lcom/android/tools/r8/internal/eA;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    const/4 p3, 0x0

    .line 144
    invoke-virtual {p4, p2, p1, p3}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    .line 1
    const-string v0, "Repackage classes"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g3;->j()Lcom/android/tools/r8/graph/g3$a;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/of0;->a(Lcom/android/tools/r8/graph/g3$a;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/uf0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g3$a;->d()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    invoke-virtual {v2, v1, v0, p1, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$p;->D:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/zz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/zz;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/zz;->a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V

    .line 7
    new-instance v0, Lcom/android/tools/r8/naming/D;

    iget-object v1, p0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/naming/D;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/D;->c(Ljava/util/concurrent/ExecutorService;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/of0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method
