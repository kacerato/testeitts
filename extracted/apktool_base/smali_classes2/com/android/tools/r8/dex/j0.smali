.class public abstract Lcom/android/tools/r8/dex/j0;
.super Lcom/android/tools/r8/dex/i0;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/IdentityHashMap;

.field public final f:Lcom/android/tools/r8/dex/t0;

.field public final g:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/dex/k;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/qo0;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/tools/r8/dex/i0;-><init>(Lcom/android/tools/r8/dex/k;)V

    iput-object p3, p0, Lcom/android/tools/r8/dex/j0;->g:Lcom/android/tools/r8/internal/nJ;

    invoke-static {p2}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/j0;->d:Ljava/util/Set;

    new-instance p1, Lcom/android/tools/r8/dex/t0;

    iget-object v2, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/dex/t0;-><init>(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/internal/qo0;)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/j0;->f:Lcom/android/tools/r8/dex/t0;

    sget-boolean p3, Lcom/android/tools/r8/dex/j0;->h:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/i0;->a(Lcom/android/tools/r8/dex/t0;)V

    iget-object p1, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    iget-object p3, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/android/tools/r8/dex/t0;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/b;)Ljava/util/IdentityHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/j0;->e:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/dex/t0;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 25
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 26
    invoke-interface {p2, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/n0;->a()V

    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/internal/qo0;)V
    .locals 10

    .line 29
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    new-instance v8, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 32
    new-instance v7, Lcom/android/tools/r8/dex/t0;

    .line 33
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/IH;->b()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/tools/r8/FeatureSplit;

    .line 35
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/dex/t0;-><init>(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/internal/qo0;)V

    .line 36
    iget-object v1, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p0, v7}, Lcom/android/tools/r8/dex/i0;->a(Lcom/android/tools/r8/dex/t0;)V

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    .line 39
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 40
    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v3, v7}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 41
    new-instance v9, Lcom/android/tools/r8/dex/q0;

    iget-object v4, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    .line 42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    iget-object v6, p0, Lcom/android/tools/r8/dex/j0;->e:Ljava/util/IdentityHashMap;

    move-object v1, v9

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/dex/q0;-><init>(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/qo0;Lcom/android/tools/r8/internal/IH;)V

    .line 43
    invoke-virtual {v9}, Lcom/android/tools/r8/dex/q0;->a()V

    .line 44
    iget-object v0, v9, Lcom/android/tools/r8/dex/q0;->a:Lcom/android/tools/r8/dex/p0;

    .line 45
    iget-object v0, v0, Lcom/android/tools/r8/dex/p0;->b:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v9, v0}, Lcom/android/tools/r8/dex/q0;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v0

    .line 2
    sget-boolean v1, Lcom/android/tools/r8/shaking/o2;->g:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o2;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/dex/t0;

    .line 8
    new-instance v2, Lu/x0;

    invoke-direct {v2, p0, v1, p1}, Lu/x0;-><init>(Lcom/android/tools/r8/dex/j0;Lcom/android/tools/r8/dex/t0;Ljava/util/Set;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/o2;->a(Ljava/util/function/Consumer;)V

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/dex/j0;->g:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    const/high16 v0, 0x10000

    .line 10
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 11
    :cond_3
    new-instance v0, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;

    iget-object v2, v1, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 12
    iget-object v3, v2, Lcom/android/tools/r8/dex/n0;->f:Ljava/util/LinkedHashSet;

    .line 13
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v2, v2, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    .line 14
    iget-object v2, v2, Lcom/android/tools/r8/dex/s0;->f:Ljava/util/Set;

    .line 15
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v2, v3

    int-to-long v4, v2

    .line 16
    iget-object v1, v1, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 17
    iget-object v2, v1, Lcom/android/tools/r8/dex/n0;->e:Ljava/util/LinkedHashSet;

    .line 18
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v1, v1, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    .line 19
    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->g:Ljava/util/Set;

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v1, v2

    int-to-long v6, v1

    const/4 v3, 0x1

    move-object v2, v0

    .line 21
    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;-><init>(ZJJ)V

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final b()Ljava/util/Map;
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/dex/j0;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    iget-object v1, v1, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    iget-object v2, v1, Lcom/android/tools/r8/internal/Zd;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    return-object v0

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/dex/j0;->d:Ljava/util/Set;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Zd;->a(Ljava/util/Set;Lcom/android/tools/r8/synthesis/J;)Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/dex/j0;->d:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method
