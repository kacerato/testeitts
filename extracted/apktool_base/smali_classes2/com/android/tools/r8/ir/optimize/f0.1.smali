.class public final Lcom/android/tools/r8/ir/optimize/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/f0;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 3

    .line 26
    new-instance v0, Lv/B0;

    invoke-direct {v0}, Lv/B0;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 28
    iget-object v1, v1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 29
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/s3;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 5

    .line 11
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/f0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 14
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/f0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 19
    new-instance v3, Lv/E0;

    invoke-direct {v3, p0}, Lv/E0;-><init>(Lcom/android/tools/r8/ir/optimize/f0;)V

    invoke-static {v0, v3, v2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 20
    new-instance v0, Lv/F0;

    invoke-direct {v0, p0}, Lv/F0;-><init>(Lcom/android/tools/r8/ir/optimize/f0;)V

    invoke-static {v1, v0, v2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 1
    const-string v0, "NestReduction"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/f0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/f0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/android/tools/r8/graph/E0;->o:Lcom/android/tools/r8/graph/o5;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ir/optimize/f0;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 10
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/p5;)Z
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/f0;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 23
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 24
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 25
    :cond_1
    new-instance p3, Lv/D0;

    invoke-direct {p3, p1}, Lv/D0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/U6;->a(Ljava/util/function/BooleanSupplier;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/U6;

    new-instance v1, Lv/B0;

    invoke-direct {v1}, Lv/B0;-><init>()V

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    iget-object v2, v2, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/s3;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Iterable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lv/C0;

    invoke-direct {v2, p0, p1, v0}, Lv/C0;-><init>(Lcom/android/tools/r8/ir/optimize/f0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/U6;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/f0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->P0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/f0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/tools/r8/graph/E0;->o:Lcom/android/tools/r8/graph/o5;

    return-void
.end method
