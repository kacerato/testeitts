.class public abstract Lcom/android/tools/r8/internal/sb0;
.super Lcom/android/tools/r8/tracereferences/j;
.source "SourceFile"


# instance fields
.field public final k:Ljava/util/Set;

.field public final l:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/rb0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rb0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/a10;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/a10;-><init>()V

    invoke-static {p1}, Lcom/android/tools/r8/internal/sb0;->a(Lcom/android/tools/r8/graph/y;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/tools/r8/tracereferences/j;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;Lcom/android/tools/r8/DiagnosticsHandler;Ljava/util/function/Predicate;)V

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/sb0;->k:Ljava/util/Set;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/sb0;->l:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Ljava/util/function/Predicate;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Is1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Is1;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/sb0;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/shaking/c3;->a()Lcom/android/tools/r8/shaking/c3$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/sb0;->l:Ljava/util/Set;

    new-instance v2, Lcom/android/tools/r8/internal/Jo1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Jo1;-><init>()V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-static {v5}, Lcom/android/tools/r8/shaking/q3$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/shaking/q3$a;

    move-result-object v5

    sget-object v6, Lcom/android/tools/r8/shaking/i4$a;->b:Lcom/android/tools/r8/shaking/i4$a;

    iget-object v7, p0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    .line 7
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    .line 8
    invoke-static {v5, v6, v7}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/shaking/q3$a;Lcom/android/tools/r8/shaking/i4$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object v5

    .line 9
    invoke-virtual {v0, v3, v5}, Lcom/android/tools/r8/shaking/c3$a;->a(ZLcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/c3$a;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/j;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/android/tools/r8/shaking/b3;->a()Lcom/android/tools/r8/shaking/b3$a;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/c3$a;->a()Lcom/android/tools/r8/shaking/c3;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/b3$a;->a(Lcom/android/tools/r8/shaking/c3;)Lcom/android/tools/r8/shaking/b3$a;

    move-result-object v0

    .line 13
    iget-object v2, v1, Lcom/android/tools/r8/shaking/o3;->t:Lcom/android/tools/r8/shaking/b3;

    .line 14
    iget-object v2, v2, Lcom/android/tools/r8/shaking/b3;->a:Lcom/android/tools/r8/internal/hC;

    .line 15
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/b3$a;->a(Ljava/util/Collection;)Lcom/android/tools/r8/shaking/b3$a;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/b3$a;->a()Lcom/android/tools/r8/shaking/b3;

    move-result-object v0

    .line 17
    iput-object v0, v1, Lcom/android/tools/r8/shaking/o3;->t:Lcom/android/tools/r8/shaking/b3;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/diagnostic/DefinitionContext;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/sb0;->b(Lcom/android/tools/r8/graph/o0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/o0;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/sb0;->l:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/sb0;->b(Lcom/android/tools/r8/graph/o0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/diagnostic/DefinitionContext;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/sb0;->b(Lcom/android/tools/r8/graph/o0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/o0;)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/sb0;->k:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/shaking/F4;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-boolean v1, Lcom/android/tools/r8/shaking/F4;->p:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/shaking/F4;->o:Lcom/android/tools/r8/shaking/I4;

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->g()Lcom/android/tools/r8/graph/D5;

    move-result-object v2

    iget-object v5, v0, Lcom/android/tools/r8/shaking/F4;->m:Lcom/android/tools/r8/shaking/M3;

    .line 8
    sget-object v6, Lcom/android/tools/r8/internal/b2;->a:Lcom/android/tools/r8/internal/b2;

    .line 9
    iget-object v7, v0, Lcom/android/tools/r8/shaking/F4;->n:Lcom/android/tools/r8/internal/be0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 10
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/H3;Lcom/android/tools/r8/shaking/M3;Lcom/android/tools/r8/internal/b2;Lcom/android/tools/r8/shaking/L3;)V

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 12
    :goto_1
    monitor-exit v0

    throw p1

    :cond_2
    return-void
.end method
