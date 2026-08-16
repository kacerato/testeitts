.class public final Lcom/android/tools/r8/dex/o0;
.super Lcom/android/tools/r8/dex/j0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/k;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/dex/j0;-><init>(Lcom/android/tools/r8/dex/k;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/qo0;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 9

    invoke-virtual {p0}, Lcom/android/tools/r8/dex/j0;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/j0;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    iget-object v3, p0, Lcom/android/tools/r8/dex/j0;->f:Lcom/android/tools/r8/dex/t0;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/dex/j0;->f:Lcom/android/tools/r8/dex/t0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/n0;->a()V

    iget-object v1, p0, Lcom/android/tools/r8/dex/j0;->f:Lcom/android/tools/r8/dex/t0;

    iget-object v2, p0, Lcom/android/tools/r8/dex/j0;->g:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/dex/j0;->g:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/dex/j0;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/qo0;)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/dex/i0;->c:Ljava/util/ArrayList;

    return-object v0

    :cond_2
    new-instance v0, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;

    iget-object v3, v1, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    iget-object v4, v3, Lcom/android/tools/r8/dex/n0;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    iget-object v3, v3, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v3, v3, Lcom/android/tools/r8/dex/s0;->f:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v3, v4

    int-to-long v5, v3

    iget-object v1, v1, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    iget-object v3, v1, Lcom/android/tools/r8/dex/n0;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v1, v1, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v1, v3

    int-to-long v7, v1

    const/4 v4, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/errors/DexFileOverflowDiagnostic;-><init>(ZJJ)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    iget-object v0, v2, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw v0
.end method
