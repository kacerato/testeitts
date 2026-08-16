.class public final Lcom/android/tools/r8/internal/Ha;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/zb;

.field public final c:Lcom/android/tools/r8/internal/nJ;

.field public final d:Ljava/util/Set;

.field public final e:Lcom/android/tools/r8/internal/h80;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ha;->d:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/h80;->l()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ha;->e:Lcom/android/tools/r8/internal/h80;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ha;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/zb;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/zb;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ha;->b:Lcom/android/tools/r8/internal/zb;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ha;->c:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;)V
    .locals 0

    .line 85
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/util/Set;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ha;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Al0;->b(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 4
    new-instance v0, Lu/P0;

    invoke-direct {v0}, Lu/P0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/jH0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/jH0;-><init>(Lcom/android/tools/r8/internal/Ha;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 5
    iget-object v8, v0, Lcom/android/tools/r8/internal/Ha;->d:Ljava/util/Set;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    sget-boolean v2, Lcom/android/tools/r8/internal/Ha;->f:Z

    if-nez v2, :cond_1

    .line 9
    instance-of v2, v1, Lcom/android/tools/r8/graph/l0;

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    instance-of v1, v1, Lcom/android/tools/r8/graph/c6;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 13
    :cond_1
    :goto_0
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto/16 :goto_a

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v9

    .line 15
    new-instance v10, Lcom/android/tools/r8/internal/Da;

    invoke-direct {v10, v0, v7, v9}, Lcom/android/tools/r8/internal/Da;-><init>(Lcom/android/tools/r8/internal/Ha;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/G;)V

    .line 16
    new-instance v11, Lcom/android/tools/r8/internal/Ia;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Ha;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Ha;->e:Lcom/android/tools/r8/internal/h80;

    invoke-direct {v11, v1, v7, v2}, Lcom/android/tools/r8/internal/Ia;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/h80;)V

    .line 17
    new-instance v5, Lcom/android/tools/r8/internal/Ea;

    invoke-direct {v5, v11}, Lcom/android/tools/r8/internal/Ea;-><init>(Lcom/android/tools/r8/internal/Ia;)V

    .line 18
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ha;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    new-instance v12, Lcom/android/tools/r8/internal/J9;

    move-object v1, v12

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/J9;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/L9;Lcom/android/tools/r8/graph/H5;)V

    .line 20
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/J9;->a()I

    move-result v1

    .line 21
    sget-boolean v2, Lcom/android/tools/r8/internal/Ha;->f:Z

    const/4 v3, 0x4

    if-nez v2, :cond_5

    if-ne v1, v3, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    iget-object v4, v11, Lcom/android/tools/r8/internal/Ia;->e:Ljava/util/Set;

    .line 23
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    :goto_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_14

    .line 24
    iget-object v3, v0, Lcom/android/tools/r8/internal/Ha;->c:Lcom/android/tools/r8/internal/nJ;

    .line 25
    new-instance v4, Lcom/android/tools/r8/internal/B9;

    invoke-direct {v4, v9}, Lcom/android/tools/r8/internal/B9;-><init>(Lcom/android/tools/r8/graph/G;)V

    .line 26
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/B9;->a(Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/C9;

    move-result-object v3

    .line 27
    new-instance v4, Lcom/android/tools/r8/internal/Ga;

    invoke-direct {v4, v0, v10, v7}, Lcom/android/tools/r8/internal/Ga;-><init>(Lcom/android/tools/r8/internal/Ha;Lcom/android/tools/r8/internal/Da;Lcom/android/tools/r8/graph/H5;)V

    .line 28
    new-instance v5, Lcom/android/tools/r8/internal/fa;

    iget-object v6, v0, Lcom/android/tools/r8/internal/Ha;->a:Lcom/android/tools/r8/graph/y;

    .line 29
    sget-object v10, Lcom/android/tools/r8/internal/q7;->c:Lcom/android/tools/r8/internal/q7;

    .line 30
    invoke-direct {v5, v6, v10, v3, v4}, Lcom/android/tools/r8/internal/fa;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/q7;Lcom/android/tools/r8/internal/C9;Lcom/android/tools/r8/internal/Ga;)V

    .line 31
    iget-object v6, v3, Lcom/android/tools/r8/internal/C9;->b:Lcom/android/tools/r8/graph/G;

    .line 32
    iget-object v6, v6, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    const/4 v10, 0x0

    .line 33
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W9;

    .line 34
    sget-boolean v12, Lcom/android/tools/r8/internal/C9;->c:Z

    if-nez v12, :cond_7

    iget-object v12, v3, Lcom/android/tools/r8/internal/C9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v6}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 35
    :cond_7
    :goto_2
    iget-object v12, v3, Lcom/android/tools/r8/internal/C9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v6}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/f9;

    .line 36
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/CJ;->d(Ljava/lang/Object;)Lcom/android/tools/r8/internal/Yi;

    move-result-object v6

    .line 37
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Yi;->b()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 38
    check-cast v6, Lcom/android/tools/r8/internal/Fa;

    .line 39
    iget-object v2, v6, Lcom/android/tools/r8/internal/Fa;->a:Lcom/android/tools/r8/internal/W9;

    if-nez v2, :cond_8

    goto :goto_3

    .line 40
    :cond_8
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v2

    iget-object v3, v6, Lcom/android/tools/r8/internal/Fa;->a:Lcom/android/tools/r8/internal/W9;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 41
    :goto_3
    iget-object v2, v6, Lcom/android/tools/r8/internal/Fa;->b:Lcom/android/tools/r8/internal/hv;

    invoke-virtual {v11, v7, v10, v2}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/hv;)V

    goto/16 :goto_8

    :cond_9
    if-nez v2, :cond_b

    .line 42
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Yi;->c()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 43
    :cond_b
    :goto_4
    iget-object v2, v3, Lcom/android/tools/r8/internal/C9;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/f9;

    .line 45
    iget-object v12, v5, Lcom/android/tools/r8/internal/CJ;->h:Lcom/android/tools/r8/internal/DJ;

    .line 46
    iget-boolean v12, v12, Lcom/android/tools/r8/internal/DJ;->a:Z

    if-eqz v12, :cond_c

    .line 47
    iget-object v12, v5, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    .line 48
    invoke-interface {v12, v6}, Lcom/android/tools/r8/internal/hi;->c(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 49
    invoke-interface {v12, v6}, Lcom/android/tools/r8/internal/hi;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 50
    iget-object v12, v5, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    .line 51
    invoke-interface {v12}, Lcom/android/tools/r8/internal/hi;->a()Ljava/lang/Object;

    move-result-object v12

    if-eq v6, v12, :cond_c

    iget-object v12, v5, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    .line 52
    invoke-interface {v12, v6}, Lcom/android/tools/r8/internal/hi;->e(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_5

    .line 53
    :cond_c
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/CJ;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/D1;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/H9;

    .line 54
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    instance-of v13, v12, Lcom/android/tools/r8/internal/hv;

    if-eqz v13, :cond_e

    .line 56
    sget-boolean v2, Lcom/android/tools/r8/internal/Ha;->f:Z

    if-eqz v2, :cond_d

    .line 57
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/H9;->e()Lcom/android/tools/r8/internal/hv;

    move-result-object v2

    invoke-virtual {v11, v7, v10, v2}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/hv;)V

    goto/16 :goto_8

    .line 58
    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 59
    :cond_e
    iget v13, v6, Lcom/android/tools/r8/internal/f9;->a:I

    .line 60
    :goto_6
    iget v14, v6, Lcom/android/tools/r8/internal/f9;->c:I

    if-gt v13, v14, :cond_11

    .line 61
    iget-object v14, v9, Lcom/android/tools/r8/graph/G;->h:Ljava/util/List;

    .line 62
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/W9;

    .line 63
    invoke-virtual {v11, v14, v12}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)V

    .line 64
    iget-object v15, v4, Lcom/android/tools/r8/internal/Ga;->c:Lcom/android/tools/r8/internal/Ha;

    iget-object v15, v15, Lcom/android/tools/r8/internal/Ha;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, v4, Lcom/android/tools/r8/internal/Ga;->a:Lcom/android/tools/r8/internal/Da;

    invoke-virtual {v14, v12, v15, v10}, Lcom/android/tools/r8/internal/W9;->a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;

    move-result-object v12

    .line 65
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    instance-of v10, v12, Lcom/android/tools/r8/internal/hv;

    if-eqz v10, :cond_10

    .line 67
    sget-boolean v2, Lcom/android/tools/r8/internal/Ha;->f:Z

    if-eqz v2, :cond_f

    .line 68
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/H9;->e()Lcom/android/tools/r8/internal/hv;

    move-result-object v2

    invoke-virtual {v11, v7, v13, v2}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/hv;)V

    goto :goto_8

    .line 69
    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_10
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    goto :goto_6

    .line 70
    :cond_11
    iget-object v10, v5, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    invoke-interface {v10, v6}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, v5, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    invoke-interface {v10, v6}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 71
    iget-object v13, v5, Lcom/android/tools/r8/internal/CJ;->h:Lcom/android/tools/r8/internal/DJ;

    .line 72
    iget-boolean v13, v13, Lcom/android/tools/r8/internal/DJ;->a:Z

    if-eqz v13, :cond_12

    .line 73
    iget-object v13, v5, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    .line 74
    invoke-interface {v13, v10}, Lcom/android/tools/r8/internal/hi;->c(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 75
    invoke-interface {v13, v10}, Lcom/android/tools/r8/internal/hi;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 76
    iget-object v13, v5, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    .line 77
    invoke-interface {v13}, Lcom/android/tools/r8/internal/hi;->a()Ljava/lang/Object;

    move-result-object v13

    if-eq v10, v13, :cond_12

    iget-object v13, v5, Lcom/android/tools/r8/internal/CJ;->c:Lcom/android/tools/r8/internal/hi;

    .line 78
    invoke-interface {v13, v10}, Lcom/android/tools/r8/internal/hi;->e(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 79
    invoke-interface {v3, v6}, Lcom/android/tools/r8/internal/hi;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/f9;

    goto :goto_7

    :cond_12
    const/4 v6, 0x0

    :goto_7
    const/4 v10, 0x0

    if-nez v6, :cond_e

    goto/16 :goto_5

    .line 80
    :cond_13
    :goto_8
    iput v1, v9, Lcom/android/tools/r8/graph/G;->k:I

    goto :goto_9

    :cond_14
    if-ne v1, v3, :cond_15

    .line 81
    iput v1, v9, Lcom/android/tools/r8/graph/G;->k:I

    .line 82
    :cond_15
    :goto_9
    iget-object v1, v11, Lcom/android/tools/r8/internal/Ia;->e:Ljava/util/Set;

    .line 83
    :goto_a
    invoke-interface {v8, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ha;->e:Lcom/android/tools/r8/internal/h80;

    .line 87
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 88
    sget-object v1, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 89
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 90
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 91
    check-cast p2, Lcom/android/tools/r8/Diagnostic;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ha;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/mH0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/mH0;-><init>(Lcom/android/tools/r8/internal/Ha;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ha;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ha;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ha;->e:Lcom/android/tools/r8/internal/h80;

    .line 8
    iget-object v2, v2, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 9
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 10
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ha;->e:Lcom/android/tools/r8/internal/h80;

    new-instance v3, Lcom/android/tools/r8/internal/gH0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/gH0;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 12
    new-instance v2, Lcom/android/tools/r8/internal/hH0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/hH0;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 13
    new-instance v2, Lcom/android/tools/r8/internal/iH0;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/iH0;-><init>(Lcom/android/tools/r8/internal/Ha;Lcom/android/tools/r8/internal/Ef0;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ha;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ha;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ha;->b()V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ha;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->A()Lcom/android/tools/r8/internal/nJ$k;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/internal/Ha;->f:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/nJ$k;->a:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ha;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected to find at least one open interface"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ha;->d:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ha;->d:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/lang/Iterable;)V

    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ha;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ha;->a:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/internal/L00;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ha;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/kH0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/kH0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/lH0;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/lH0;-><init>(Lcom/android/tools/r8/internal/Ha;)V

    invoke-static {v3}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/L00;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/i40;)V

    return-void
.end method
