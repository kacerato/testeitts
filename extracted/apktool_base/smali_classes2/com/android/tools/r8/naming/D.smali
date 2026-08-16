.class public final Lcom/android/tools/r8/naming/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/shaking/b3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/o3;->a()Lcom/android/tools/r8/shaking/b3;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/D;->b:Lcom/android/tools/r8/shaking/b3;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->E(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/g1;)Z
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    instance-of p0, p0, Lcom/android/tools/r8/graph/Q2;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 3

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->l0()Lcom/android/tools/r8/graph/Q2;

    move-result-object v0

    .line 26
    iget-object v1, v0, Lcom/android/tools/r8/graph/Q2;->e:Lcom/android/tools/r8/internal/ZY;

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/J2;

    iget-object v2, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/internal/ZY;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    new-instance v1, Lcom/android/tools/r8/graph/R2$k;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/R2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/naming/D;->b:Lcom/android/tools/r8/shaking/b3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/b3;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 9
    sget-boolean v1, Lcom/android/tools/r8/naming/D;->c:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    new-instance v2, Lcom/android/tools/r8/graph/R2$k;

    iget-object v3, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/L2;

    invoke-static {v3, v1}, Lcom/android/tools/r8/naming/D;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    .line 13
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/R2;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/D;->b:Lcom/android/tools/r8/shaking/b3;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/shaking/b3;->a:Lcom/android/tools/r8/internal/hC;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/naming/a1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/a1;-><init>(Lcom/android/tools/r8/naming/D;)V

    iget-object v2, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/F5;)V
    .locals 4

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->l0()Lcom/android/tools/r8/graph/Q2;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/J2;

    iget-object v3, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    iget-object v3, v3, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/graph/Q2;->e:Lcom/android/tools/r8/internal/ZY;

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    .line 13
    iget-object v3, v3, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 14
    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/ZY;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/ZY;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    new-instance v2, Lcom/android/tools/r8/graph/Q2;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/graph/Q2;-><init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    .line 16
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/R2;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/android/tools/r8/naming/d1;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/d1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/naming/e1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/e1;-><init>(Lcom/android/tools/r8/naming/D;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->i(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final b(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/naming/b1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/b1;-><init>(Lcom/android/tools/r8/naming/D;)V

    iget-object v2, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/android/tools/r8/naming/d1;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/d1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/naming/f1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/f1;-><init>(Lcom/android/tools/r8/naming/D;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->i(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final c(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/naming/c1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/c1;-><init>(Lcom/android/tools/r8/naming/D;)V

    iget-object v2, p0, Lcom/android/tools/r8/naming/D;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final d(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/D;->a(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/D;->b(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
