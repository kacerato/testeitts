.class public final Lcom/android/tools/r8/shaking/v0;
.super Lcom/android/tools/r8/shaking/L0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/N;)V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/shaking/L0;-><init>(Lcom/android/tools/r8/shaking/N;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/s0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/shaking/s0;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/D0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/shaking/D0;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/w0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/shaking/w0;-><init>(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/n0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/n0;-><init>(Lcom/android/tools/r8/graph/F5;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/m0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/shaking/m0;-><init>(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->a:Lcom/android/tools/r8/shaking/N;

    .line 36
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 38
    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    if-eqz v0, :cond_1

    .line 40
    iget v1, v0, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/H0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/shaking/H0;-><init>(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/shaking/v0;->c:Z

    if-nez v0, :cond_1

    .line 14
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/l0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/l0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;)V
    .locals 2

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/shaking/v0;->c:Z

    if-nez v0, :cond_1

    .line 8
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/o0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/shaking/o0;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/K0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/shaking/K0;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/x0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/x0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/t0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/shaking/t0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/y0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/shaking/y0;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/I0;

    sget-object v2, Lcom/android/tools/r8/shaking/K;->c:Lcom/android/tools/r8/shaking/K;

    invoke-direct {v1, p1, p2, v2}, Lcom/android/tools/r8/shaking/I0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/K;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/b2;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/j0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/j0;-><init>(Lcom/android/tools/r8/internal/b2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/q0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/shaking/q0;-><init>(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/k0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->a:Lcom/android/tools/r8/shaking/N;

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    invoke-virtual {v0, p3, p1}, Lcom/android/tools/r8/shaking/M;->a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 22
    iget-object p3, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/android/tools/r8/shaking/r0;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/shaking/r0;-><init>(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p2, p0, Lcom/android/tools/r8/shaking/L0;->a:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    .line 25
    iget-object p2, p2, Lcom/android/tools/r8/shaking/N;->K:Lcom/android/tools/r8/shaking/M;

    .line 26
    iget-object p2, p2, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 27
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 28
    iget-object p2, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p3, Lcom/android/tools/r8/shaking/F0;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/shaking/F0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lcom/android/tools/r8/shaking/u0;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/shaking/u0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/u0;-><init>(Lcom/android/tools/r8/shaking/v0;)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->a:Lcom/android/tools/r8/shaking/N;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    if-eqz v0, :cond_0

    .line 15
    iget v0, v0, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/H0;

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    sget-object v2, Lcom/android/tools/r8/shaking/J;->d:Lcom/android/tools/r8/shaking/J;

    goto :goto_0

    .line 19
    :cond_1
    sget-object v2, Lcom/android/tools/r8/shaking/J;->b:Lcom/android/tools/r8/shaking/J;

    :goto_0
    invoke-direct {v1, p1, p2, v2}, Lcom/android/tools/r8/shaking/H0;-><init>(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;)V

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/shaking/v0;->c:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/p0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/p0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/E0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/shaking/E0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/G0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/shaking/G0;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->a:Lcom/android/tools/r8/shaking/N;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/H0;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    sget-object v2, Lcom/android/tools/r8/shaking/J;->e:Lcom/android/tools/r8/shaking/J;

    goto :goto_1

    .line 11
    :cond_2
    sget-object v2, Lcom/android/tools/r8/shaking/J;->c:Lcom/android/tools/r8/shaking/J;

    :goto_1
    invoke-direct {v1, p1, p2, v2}, Lcom/android/tools/r8/shaking/H0;-><init>(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;)V

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/android/tools/r8/shaking/z0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/z0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
