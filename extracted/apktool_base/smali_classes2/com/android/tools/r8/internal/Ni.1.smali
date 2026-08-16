.class public final Lcom/android/tools/r8/internal/Ni;
.super Lcom/android/tools/r8/internal/iZ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/iZ;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/eO0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/eO0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v1, Lcom/android/tools/r8/internal/fO0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/fO0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-static {v0, v1, p0}, Lcom/android/tools/r8/internal/iZ;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;)V
    .locals 3

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 13
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 14
    new-instance v0, Lcom/android/tools/r8/errors/MissingNestHostNestDesugarDiagnostic;

    .line 15
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 16
    sget-object v2, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-static {p1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/E0;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/errors/MissingNestHostNestDesugarDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 18
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/gZ;)V
    .locals 1

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/internal/gZ;->c:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/gZ;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 23
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 24
    invoke-static {p1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/gZ;)Lcom/android/tools/r8/errors/IncompleteNestNestDesugarDiagnosic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_0
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 26
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 27
    invoke-static {p1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/gZ;)Lcom/android/tools/r8/errors/IncompleteNestNestDesugarDiagnosic;

    move-result-object p1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 29
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/internal/gZ;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/gZ;->a:Lcom/android/tools/r8/graph/E0;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->p:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object p0, p0, Lcom/android/tools/r8/internal/gZ;->b:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/gO0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gO0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/internal/gZ;)V
    .locals 2

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/gZ;->a:Lcom/android/tools/r8/graph/E0;

    .line 9
    instance-of v1, v0, Lcom/android/tools/r8/graph/I0;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->k()Lcom/android/tools/r8/graph/I0;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/gZ;->a()Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Ki;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v1, Lcom/android/tools/r8/internal/hO0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/hO0;-><init>(Ljava/util/List;)V

    .line 32
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/iZ;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 33
    iget-object v1, p1, Lcom/android/tools/r8/internal/Ki;->a:Lcom/android/tools/r8/internal/M70;

    .line 34
    new-instance v2, Lcom/android/tools/r8/internal/Li;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/Li;-><init>(Lcom/android/tools/r8/internal/Ki;)V

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    instance-of p1, v1, Lcom/android/tools/r8/internal/b10;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/V70;

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v1

    invoke-direct {p1, v1, v2}, Lcom/android/tools/r8/internal/V70;-><init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/kZ;)V

    move-object v2, p1

    .line 39
    :goto_0
    new-instance p1, Lcom/android/tools/r8/internal/iO0;

    invoke-direct {p1, p0, v2}, Lcom/android/tools/r8/internal/iO0;-><init>(Lcom/android/tools/r8/internal/Ni;Lcom/android/tools/r8/internal/kZ;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    .line 40
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    .line 41
    invoke-static {v0, p1, v1, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/kZ;Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ni;->b(Lcom/android/tools/r8/internal/kZ;Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kZ;Lcom/android/tools/r8/graph/e0;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/android/tools/r8/internal/Mi;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/Mi;-><init>(Lcom/android/tools/r8/internal/Ni;Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/kZ;)V

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    .line 45
    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/aO0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/aO0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/bO0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/bO0;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/iZ;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 3
    new-instance v1, Lcom/android/tools/r8/errors/MissingNestHostNestDesugarDiagnostic;

    .line 4
    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 5
    sget-object v3, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-static {p1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/E0;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/android/tools/r8/errors/MissingNestHostNestDesugarDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 7
    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/gZ;)V
    .locals 5

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/gZ;->c:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/gZ;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 14
    invoke-static {p1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/gZ;)Lcom/android/tools/r8/errors/IncompleteNestNestDesugarDiagnosic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 15
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/gZ;->a:Lcom/android/tools/r8/graph/E0;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/gZ;->b:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/E0;

    .line 19
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v4

    if-nez v4, :cond_2

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 21
    :cond_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)V

    .line 22
    iget-object v4, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/iZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 25
    invoke-static {p1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/gZ;)Lcom/android/tools/r8/errors/IncompleteNestNestDesugarDiagnosic;

    move-result-object p1

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 27
    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/kZ;Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/jO0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/jO0;-><init>(Lcom/android/tools/r8/internal/Ni;Lcom/android/tools/r8/internal/kZ;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object p1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/I0;->i(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/cO0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/cO0;-><init>(Lcom/android/tools/r8/internal/Ni;)V

    new-instance v1, Lcom/android/tools/r8/internal/dO0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/dO0;-><init>(Lcom/android/tools/r8/internal/Ni;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/iZ;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method
