.class public final Lcom/android/tools/r8/shaking/U0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/shaking/N;

.field public final d:Lcom/android/tools/r8/shaking/A4;

.field public final e:Lcom/android/tools/r8/internal/xr0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/A4;Lcom/android/tools/r8/internal/xr0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/shaking/U0;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p4, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/shaking/U0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/U0;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/U0;->c:Lcom/android/tools/r8/shaking/N;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/U0;->d:Lcom/android/tools/r8/shaking/A4;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/U0;->e:Lcom/android/tools/r8/internal/xr0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;
    .locals 0

    .line 174
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/G3;Lcom/android/tools/r8/graph/E0;Ljava/util/function/BiPredicate;)V
    .locals 11

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/shaking/U0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->b1:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/tools/r8/shaking/U0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$p;->c1:Lcom/android/tools/r8/internal/nJ$p$b;

    iget v2, v0, Lcom/android/tools/r8/internal/nJ$p$b;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/tools/r8/internal/nJ$p$b;->b:I

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v0

    .line 70
    sget-boolean v2, Lcom/android/tools/r8/shaking/U0;->f:Z

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 71
    :cond_2
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    .line 73
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 74
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_3

    .line 75
    :cond_3
    new-instance v4, Lcom/android/tools/r8/shaking/bb;

    invoke-direct {v4, p0, v2, p2}, Lcom/android/tools/r8/shaking/bb;-><init>(Lcom/android/tools/r8/shaking/U0;Ljava/util/List;Lcom/android/tools/r8/graph/E0;)V

    .line 76
    iget-object v6, p2, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 77
    iget-object v6, v6, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 78
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/graph/s3;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v4

    .line 79
    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 80
    new-instance v4, Lcom/android/tools/r8/shaking/cb;

    invoke-direct {v4, p0, p2}, Lcom/android/tools/r8/shaking/cb;-><init>(Lcom/android/tools/r8/shaking/U0;Lcom/android/tools/r8/graph/E0;)V

    .line 81
    invoke-virtual {p2, v4}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v4

    .line 82
    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 84
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/R3;

    .line 85
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/shaking/U3;->a()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 86
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :cond_6
    :goto_2
    if-ge v8, v7, :cond_4

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/graph/F0;

    .line 87
    iget-object v10, p0, Lcom/android/tools/r8/shaking/U0;->d:Lcom/android/tools/r8/shaking/A4;

    invoke-virtual {v10, v6, v9}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/F0;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 88
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/l1;

    .line 89
    iget-object v10, p1, Lcom/android/tools/r8/shaking/G3;->v:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v10, :cond_6

    .line 90
    invoke-virtual {v10, v9, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 91
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    goto/16 :goto_6

    .line 92
    :cond_8
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 93
    new-instance v4, Lcom/android/tools/r8/internal/kC;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v4, v6}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 94
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v5

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move v6, v8

    goto :goto_4

    .line 96
    :cond_9
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v3

    .line 97
    const-string v4, "size"

    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    .line 98
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-gt v2, v4, :cond_a

    move v5, v1

    :cond_a
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v5, :cond_f

    if-nez v2, :cond_b

    .line 99
    sget v2, Lcom/android/tools/r8/internal/QC;->c:I

    .line 100
    sget-object v2, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    .line 101
    new-instance v3, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    .line 102
    :cond_b
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v2, v4, :cond_c

    .line 103
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v2

    sget v3, Lcom/android/tools/r8/internal/QC;->c:I

    .line 104
    new-instance v3, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    .line 105
    :cond_c
    new-instance v4, Lcom/android/tools/r8/internal/Il0;

    invoke-direct {v4, v2, v3}, Lcom/android/tools/r8/internal/Il0;-><init>(ILcom/android/tools/r8/internal/nC;)V

    move-object v3, v4

    .line 106
    :goto_5
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 107
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/shaking/db;

    invoke-direct {v5, p2}, Lcom/android/tools/r8/shaking/db;-><init>(Lcom/android/tools/r8/graph/E0;)V

    .line 108
    invoke-static {v4, v5}, Lcom/android/tools/r8/graph/b1;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 109
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 110
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/android/tools/r8/shaking/eb;

    invoke-direct {v5, p2}, Lcom/android/tools/r8/shaking/eb;-><init>(Lcom/android/tools/r8/graph/E0;)V

    .line 111
    invoke-static {v3, v5}, Lcom/android/tools/r8/graph/b1;->b(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 112
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 113
    sget-object v5, Lcom/android/tools/r8/internal/Un;->d:Lcom/android/tools/r8/internal/Sn;

    .line 114
    new-instance v5, Lcom/android/tools/r8/internal/Tn;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/Tn;-><init>()V

    .line 115
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/tools/r8/shaking/fb;

    invoke-direct {v7, p0, v4, v3, v5}, Lcom/android/tools/r8/shaking/fb;-><init>(Lcom/android/tools/r8/shaking/U0;Ljava/util/Collection;Ljava/util/Collection;Lcom/android/tools/r8/internal/Un;)V

    .line 116
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 117
    new-instance v3, Lcom/android/tools/r8/shaking/H3;

    invoke-direct {v3, p1, p2, v5}, Lcom/android/tools/r8/shaking/H3;-><init>(Lcom/android/tools/r8/shaking/G3;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Tn;)V

    .line 118
    iget-object v4, p0, Lcom/android/tools/r8/shaking/U0;->c:Lcom/android/tools/r8/shaking/N;

    iget-object v5, p0, Lcom/android/tools/r8/shaking/U0;->d:Lcom/android/tools/r8/shaking/A4;

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/shaking/H3;->a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/A4;)V

    .line 119
    iget-object v4, p0, Lcom/android/tools/r8/shaking/U0;->b:Lcom/android/tools/r8/graph/u1;

    .line 120
    iput-boolean v1, p1, Lcom/android/tools/r8/shaking/v3;->o:Z

    .line 121
    iget-object v5, p1, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/shaking/K3;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/K3;

    move-result-object v4

    .line 122
    invoke-interface {p3, v3, v4}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_e
    :goto_6
    return-void

    .line 123
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "size (%s) must be <= set.size() (%s)"

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/G3;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/v3;->u()Ljava/lang/Iterable;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/android/tools/r8/internal/Ux;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_2
    if-ne v2, v1, :cond_3

    .line 5
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/BV;->a(Lcom/android/tools/r8/shaking/G3;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p2

    .line 6
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/o50;

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/H3;

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/K3;

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/U0;->d:Lcom/android/tools/r8/shaking/A4;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/U0;->e:Lcom/android/tools/r8/internal/xr0;

    invoke-virtual {v1, v2, p2, v0}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/internal/xr0;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lcom/android/tools/r8/internal/Uu0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Uu0;-><init>(Ljava/util/concurrent/ExecutionException;)V

    throw p2

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/G3;Ljava/util/Set;Lcom/android/tools/r8/graph/E0;Ljava/util/ArrayList;)V
    .locals 2

    .line 33
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/shaking/U0;->a(Lcom/android/tools/r8/shaking/G3;Lcom/android/tools/r8/graph/E0;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_3

    .line 34
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/G3;

    .line 35
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v0

    iget-object v1, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/c3;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    .line 36
    sget-boolean v1, Lcom/android/tools/r8/shaking/U0;->f:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 37
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/shaking/U0;->d:Lcom/android/tools/r8/shaking/A4;

    invoke-virtual {v0, p3, p2}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;)Z

    move-result v0

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 39
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_4
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v1, Lcom/android/tools/r8/shaking/hb;

    invoke-direct {v1, p0, v0, p2, p4}, Lcom/android/tools/r8/shaking/hb;-><init>(Lcom/android/tools/r8/shaking/U0;Ljava/util/List;Lcom/android/tools/r8/shaking/G3;Ljava/util/List;)V

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/tools/r8/shaking/U0;->a(Lcom/android/tools/r8/shaking/G3;Lcom/android/tools/r8/graph/E0;Ljava/util/function/BiPredicate;)V

    .line 42
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/shaking/U0;->a(Lcom/android/tools/r8/shaking/G3;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public final a(Ljava/util/HashMap;Lcom/android/tools/r8/graph/V;Ljava/lang/Iterable;Ljava/util/function/Predicate;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/android/tools/r8/shaking/ib;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/tools/r8/shaking/ib;-><init>(Lcom/android/tools/r8/shaking/U0;Lcom/android/tools/r8/graph/V;Ljava/lang/Iterable;Ljava/util/function/Predicate;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Vr0;)V

    .line 31
    iget-object p1, p0, Lcom/android/tools/r8/shaking/U0;->e:Lcom/android/tools/r8/internal/xr0;

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/HashMap;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    new-instance v1, Lcom/android/tools/r8/shaking/jb;

    invoke-direct {v1, p0, p2, v0, p3}, Lcom/android/tools/r8/shaking/jb;-><init>(Lcom/android/tools/r8/shaking/U0;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/ns0;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Vr0;)V

    .line 52
    iget-object p1, p0, Lcom/android/tools/r8/shaking/U0;->e:Lcom/android/tools/r8/internal/xr0;

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Z
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/tools/r8/shaking/U0;->c:Lcom/android/tools/r8/shaking/N;

    .line 157
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    .line 158
    iget-object v0, v0, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 159
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/tools/r8/shaking/U0;->c:Lcom/android/tools/r8/shaking/N;

    .line 161
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->K:Lcom/android/tools/r8/shaking/M;

    .line 162
    iget-object v0, v0, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 163
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 165
    iget-object v0, p2, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 166
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/U0;->a:Lcom/android/tools/r8/graph/y;

    .line 168
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 169
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 172
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 173
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/V;Ljava/lang/Iterable;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/fv;Ljava/util/Set;)Z
    .locals 2

    .line 124
    iget-object p4, p4, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 125
    check-cast p4, Lcom/android/tools/r8/shaking/G3;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    sget-object v1, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne p1, v1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/android/tools/r8/shaking/U0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/U0;->c:Lcom/android/tools/r8/shaking/N;

    .line 129
    iget-object v1, v1, Lcom/android/tools/r8/shaking/N;->i:Lcom/android/tools/r8/graph/Y5;

    .line 130
    invoke-virtual {p4, p1, v1, p2, p3}, Lcom/android/tools/r8/shaking/v3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p2

    .line 131
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/E0;

    .line 132
    sget-boolean v1, Lcom/android/tools/r8/shaking/U0;->f:Z

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 133
    :cond_2
    :goto_1
    invoke-virtual {p0, p4, p5, p2, v0}, Lcom/android/tools/r8/shaking/U0;->a(Lcom/android/tools/r8/shaking/G3;Ljava/util/Set;Lcom/android/tools/r8/graph/E0;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 134
    :cond_3
    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    return p1

    .line 135
    :cond_4
    new-instance p1, Lcom/android/tools/r8/shaking/gb;

    invoke-direct {p1, p5}, Lcom/android/tools/r8/shaking/gb;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/G3;Lcom/android/tools/r8/graph/E0;)Z
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/shaking/U0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->b1:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/shaking/U0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$p;->c1:Lcom/android/tools/r8/internal/nJ$p$b;

    iget v2, v0, Lcom/android/tools/r8/internal/nJ$p$b;->a:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/tools/r8/internal/nJ$p$b;->a:I

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/l3;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    .line 57
    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/f3;->g:Z

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->a()Lcom/android/tools/r8/shaking/S2;

    move-result-object v0

    iget-object v2, p2, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/S2;->a(Lcom/android/tools/r8/graph/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->h()Lcom/android/tools/r8/shaking/S2;

    move-result-object v0

    iget-object v2, p2, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/S2;->b(Lcom/android/tools/r8/graph/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->b()Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v2

    sget-object v4, Lcom/android/tools/r8/graph/p0;->d:Lcom/android/tools/r8/graph/p0;

    .line 62
    invoke-static {v0, p2, v2, v4}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/List;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/p0;)Lcom/android/tools/r8/shaking/f;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/shaking/U0;->d:Lcom/android/tools/r8/shaking/A4;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/A4;->a(Lcom/android/tools/r8/shaking/f;)V

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v0

    iget-object v2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/c3;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f3;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/shaking/U0;->d:Lcom/android/tools/r8/shaking/A4;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;)Z

    move-result p1

    return p1

    :cond_3
    return v1

    :cond_4
    return v3
.end method

.method public final synthetic a(Ljava/util/Collection;Ljava/util/Collection;Lcom/android/tools/r8/internal/Un;Lcom/android/tools/r8/shaking/R3;)Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/tools/r8/shaking/U0;->d:Lcom/android/tools/r8/shaking/A4;

    invoke-virtual {v0, p4, p1}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/shaking/R3;Ljava/lang/Iterable;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/U0;->d:Lcom/android/tools/r8/shaking/A4;

    .line 177
    invoke-virtual {p1, p4, p2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/R3;Ljava/lang/Iterable;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/tools/r8/shaking/U0;->c:Lcom/android/tools/r8/shaking/N;

    .line 180
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 181
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-boolean v0, p3, Lcom/android/tools/r8/graph/g1;->n:Z

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/U0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 184
    invoke-static {p2, p3}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/shaking/U0;->c:Lcom/android/tools/r8/shaking/N;

    .line 186
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->R:Lcom/android/tools/r8/shaking/L;

    .line 187
    iget-object p1, p1, Lcom/android/tools/r8/shaking/L;->a:Ljava/util/Set;

    .line 188
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/android/tools/r8/shaking/U0;->c:Lcom/android/tools/r8/shaking/N;

    .line 190
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/g1;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 191
    iget-object p1, p3, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 192
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vw;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/shaking/U0;->a:Lcom/android/tools/r8/graph/y;

    .line 194
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    .line 195
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0, p3}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 199
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/shaking/G3;)Z
    .locals 6

    .line 11
    iget-object v0, p2, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/v3;->u()Ljava/lang/Iterable;

    move-result-object v0

    .line 13
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 14
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 15
    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/Ux;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 16
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/E0;

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v4

    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/shaking/c3;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    .line 19
    sget-boolean v5, Lcom/android/tools/r8/shaking/U0;->f:Z

    if-nez v5, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f3;->k()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    iget-object v4, p0, Lcom/android/tools/r8/shaking/U0;->d:Lcom/android/tools/r8/shaking/A4;

    invoke-virtual {v4, v3, p2}, Lcom/android/tools/r8/shaking/I4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/shaking/v3;)Z

    move-result v4

    if-nez v5, :cond_5

    if-eqz v4, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_5
    :goto_2
    new-instance v4, Lcom/android/tools/r8/shaking/H3;

    invoke-direct {v4, p2, v3}, Lcom/android/tools/r8/shaking/H3;-><init>(Lcom/android/tools/r8/shaking/G3;Lcom/android/tools/r8/graph/E0;)V

    .line 24
    iget-object v3, p0, Lcom/android/tools/r8/shaking/U0;->c:Lcom/android/tools/r8/shaking/N;

    iget-object v5, p0, Lcom/android/tools/r8/shaking/U0;->d:Lcom/android/tools/r8/shaking/A4;

    invoke-virtual {v4, v3, v5}, Lcom/android/tools/r8/shaking/H3;->a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/A4;)V

    .line 25
    iget-object v3, p0, Lcom/android/tools/r8/shaking/U0;->b:Lcom/android/tools/r8/graph/u1;

    .line 26
    iput-boolean v2, p2, Lcom/android/tools/r8/shaking/v3;->o:Z

    .line 27
    iget-object v5, p2, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/shaking/K3;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/K3;

    move-result-object v3

    .line 28
    new-instance v5, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v5, v4, v3}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 29
    :goto_3
    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/shaking/U0;->a(Lcom/android/tools/r8/shaking/G3;Ljava/util/ArrayList;)V

    return v2
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/shaking/G3;Ljava/util/List;Lcom/android/tools/r8/shaking/H3;Lcom/android/tools/r8/shaking/K3;)Z
    .locals 1

    .line 43
    new-instance v0, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v0, p4, p5}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p2, Lcom/android/tools/r8/shaking/G3;->u:Lcom/android/tools/r8/shaking/K3;

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/v3;->u()Ljava/lang/Iterable;

    move-result-object p1

    .line 46
    instance-of p4, p1, Ljava/util/Collection;

    const/4 p5, 0x1

    if-eqz p4, :cond_0

    .line 47
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    goto :goto_0

    .line 48
    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/Ux;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result p1

    xor-int/2addr p1, p5

    :goto_0
    if-eqz p1, :cond_1

    .line 49
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p5

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/fv;Ljava/util/Set;)Z
    .locals 2

    .line 136
    iget-object p4, p4, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 137
    check-cast p4, Lcom/android/tools/r8/shaking/G3;

    .line 138
    const-string v0, "Evaluate precondition"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 139
    invoke-virtual {p4}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/c3;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "Evaluate single class"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 141
    invoke-virtual {p4}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/c3;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 142
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/shaking/U0;->a(Lcom/android/tools/r8/shaking/G3;Lcom/android/tools/r8/graph/E0;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 144
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_1

    .line 146
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 147
    const-string v1, "Evaluate class"

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 148
    invoke-virtual {p0, p4, v0}, Lcom/android/tools/r8/shaking/U0;->a(Lcom/android/tools/r8/shaking/G3;Lcom/android/tools/r8/graph/E0;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_0

    .line 151
    :cond_3
    :goto_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 152
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 153
    new-instance p1, Lcom/android/tools/r8/shaking/kb;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/shaking/kb;-><init>(Lcom/android/tools/r8/shaking/U0;Ljava/util/List;)V

    invoke-interface {p5, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 154
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 155
    :cond_4
    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    return p1
.end method
