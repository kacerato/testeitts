.class public final Lcom/android/tools/r8/internal/rB;
.super Lcom/android/tools/r8/internal/SJ;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final k:Lcom/android/tools/r8/graph/n3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D00;Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/internal/SJ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/E00;Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/function/Predicate;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    iput-object p1, p0, Lcom/android/tools/r8/internal/rB;->k:Lcom/android/tools/r8/graph/n3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D0;)V
    .locals 1

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/f6;->a(ILcom/android/tools/r8/graph/C2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/rB;->l:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/SJ;->a(ZLcom/android/tools/r8/graph/H5;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/rB;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->i:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->g:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/E00;

    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->f:Lcom/android/tools/r8/internal/E00;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/E00;->a(Lcom/android/tools/r8/internal/E00;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/SJ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rB;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rB;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v0, Lcom/android/tools/r8/internal/rB;->l:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->I()Lcom/android/tools/r8/internal/nu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-nez p1, :cond_6

    sget-boolean p1, Lcom/android/tools/r8/internal/rB;->l:Z

    if-eqz p1, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rB;->a(Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rB;->j(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/tools/r8/internal/rB;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rB;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_2
    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rB;->i(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rB;->j(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final i(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->b()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/G0;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/rB;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/rB;->k:Lcom/android/tools/r8/graph/n3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/o3;

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/graph/c;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/d;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/android/tools/r8/internal/zr1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/zr1;-><init>(Lcom/android/tools/r8/internal/rB;)V

    iget-object p1, p1, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/d;->a(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final j(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->b()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/G0;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rB;->a(Lcom/android/tools/r8/graph/H2;)V

    :cond_2
    :goto_0
    return-void
.end method
