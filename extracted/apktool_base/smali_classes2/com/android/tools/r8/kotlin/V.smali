.class public final Lcom/android/tools/r8/kotlin/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/fx;


# static fields
.field public static final e:Lcom/android/tools/r8/internal/o40;

.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/shaking/I;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    sput-object v0, Lcom/android/tools/r8/kotlin/V;->e:Lcom/android/tools/r8/internal/o40;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/I;Ljava/util/Set;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/V;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/V;->b:Lcom/android/tools/r8/shaking/I;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/V;->c:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 69
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Boolean;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/V;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/G5;)V
    .locals 4

    .line 71
    invoke-interface {p1}, Lcom/android/tools/r8/graph/G5;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->c0()Lcom/android/tools/r8/kotlin/Q;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/android/tools/r8/kotlin/U;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/V;->b:Lcom/android/tools/r8/shaking/I;

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/V;->c:Ljava/util/Set;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/tools/r8/kotlin/U;-><init>(Lcom/android/tools/r8/kotlin/V;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/I;Ljava/util/Set;)V

    .line 73
    invoke-interface {v0, v1}, Lcom/android/tools/r8/shaking/f0;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 74
    iget-object v0, p1, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 75
    new-instance v1, Lcom/android/tools/r8/kotlin/U;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/V;->b:Lcom/android/tools/r8/shaking/I;

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/V;->c:Ljava/util/Set;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/tools/r8/kotlin/U;-><init>(Lcom/android/tools/r8/kotlin/V;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/I;Ljava/util/Set;)V

    .line 76
    invoke-interface {v0, v1}, Lcom/android/tools/r8/shaking/f0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 77
    new-instance v0, Lcom/android/tools/r8/kotlin/w1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/w1;-><init>(Lcom/android/tools/r8/kotlin/V;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lu/O0;

    invoke-direct {v3, v2}, Lu/O0;-><init>(Lcom/android/tools/r8/graph/h;)V

    .line 5
    new-instance v2, Lcom/android/tools/r8/kotlin/l1;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/kotlin/l1;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 6
    invoke-static {v0, v1, v3, v2}, Lcom/android/tools/r8/shaking/l1;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Function;Ljava/util/function/Function;)Z

    move-result v7

    .line 7
    iget-object v0, p1, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/android/tools/r8/kotlin/o1;

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move-object v8, v0

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/r8/kotlin/o1;-><init>(Lcom/android/tools/r8/kotlin/V;Lcom/android/tools/r8/shaking/N;ZLjava/util/Set;Ljava/util/Set;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/function/Consumer;)V

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v3

    .line 14
    new-instance v4, Lcom/android/tools/r8/kotlin/U;

    iget-object v5, p0, Lcom/android/tools/r8/kotlin/V;->b:Lcom/android/tools/r8/shaking/I;

    iget-object v6, p0, Lcom/android/tools/r8/kotlin/V;->c:Ljava/util/Set;

    invoke-direct {v4, p0, v2, v5, v6}, Lcom/android/tools/r8/kotlin/U;-><init>(Lcom/android/tools/r8/kotlin/V;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/I;Ljava/util/Set;)V

    .line 15
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 16
    iget-object v5, v5, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/kotlin/U;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 18
    iget-object v4, v3, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    .line 19
    invoke-interface {v4}, Lcom/android/tools/r8/kotlin/Q;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    .line 21
    invoke-interface {v3}, Lcom/android/tools/r8/kotlin/Q;->d()Lcom/android/tools/r8/kotlin/K;

    move-result-object v3

    .line 22
    iget-boolean v3, v3, Lcom/android/tools/r8/kotlin/K;->i:Z

    if-eqz v3, :cond_0

    .line 23
    :cond_2
    new-instance v3, Lcom/android/tools/r8/kotlin/p1;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/kotlin/p1;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 24
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->o0:Z

    if-eqz v1, :cond_9

    .line 25
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    .line 26
    sget-boolean v2, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v2, :cond_5

    .line 27
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 28
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->o0:Z

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_5
    :goto_1
    iput-object v0, v1, Lcom/android/tools/r8/graph/y;->K:Ljava/util/Set;

    goto :goto_3

    .line 30
    :cond_6
    sget-boolean v0, Lcom/android/tools/r8/kotlin/V;->f:Z

    if-nez v0, :cond_8

    .line 31
    iget-object v0, p1, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_8
    :goto_2
    new-instance v0, Lcom/android/tools/r8/kotlin/q1;

    invoke-direct {v0, p0, p1, v7}, Lcom/android/tools/r8/kotlin/q1;-><init>(Lcom/android/tools/r8/kotlin/V;Lcom/android/tools/r8/shaking/N;Z)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/function/Consumer;)V

    .line 34
    :cond_9
    :goto_3
    new-instance v0, Lcom/android/tools/r8/kotlin/r1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/r1;-><init>(Lcom/android/tools/r8/kotlin/V;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;ZLcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 78
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 79
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    .line 81
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/shaking/l1;->a(Lcom/android/tools/r8/internal/nJ;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    sget-object p1, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    .line 83
    iput-object p1, p3, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 84
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/kotlin/m1;

    invoke-direct {p2}, Lcom/android/tools/r8/kotlin/m1;-><init>()V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 85
    new-instance p1, Lcom/android/tools/r8/kotlin/n1;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/kotlin/n1;-><init>(Lcom/android/tools/r8/kotlin/V;)V

    .line 86
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/u0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    .line 87
    iput-object p1, p3, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    return-void

    .line 88
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/kotlin/V;->f:Z

    if-nez p1, :cond_3

    .line 89
    new-instance p1, Lcom/android/tools/r8/kotlin/U;

    .line 90
    sget-boolean p1, Lcom/android/tools/r8/kotlin/r;->a:Z

    .line 91
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    .line 93
    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u0;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    .line 94
    iget-object p2, p3, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 95
    sget-object v0, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    if-eq p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eq p1, p2, :cond_3

    .line 96
    new-instance p1, Ljava/lang/AssertionError;

    .line 97
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H2;->j0()Ljava/lang/String;

    move-result-object p2

    .line 98
    iget-object p3, p3, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    if-ne p3, v0, :cond_2

    .line 99
    const-string p3, "no info"

    goto :goto_1

    :cond_2
    const-string p3, "has info"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;ZLjava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 35
    sget-boolean v0, Lcom/android/tools/r8/kotlin/V;->f:Z

    if-nez v0, :cond_1

    .line 36
    iget-object v0, p5, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 37
    invoke-interface {v0}, Lcom/android/tools/r8/kotlin/p;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 39
    invoke-virtual {p1, p5}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/shaking/l1;->a(Lcom/android/tools/r8/internal/nJ;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 42
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    new-instance p2, Lcom/android/tools/r8/kotlin/s1;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/kotlin/s1;-><init>(Lcom/android/tools/r8/kotlin/V;)V

    invoke-static {p1, p5, p2}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Ljava/util/function/Supplier;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 43
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 44
    sget-object p1, Lcom/android/tools/r8/kotlin/V;->e:Lcom/android/tools/r8/internal/o40;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 46
    iget p2, p1, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit8 p2, p2, 0x2

    .line 47
    iput p2, p1, Lcom/android/tools/r8/internal/WY;->u:I

    .line 48
    :cond_2
    sget-object p1, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    .line 49
    iput-object p1, p5, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 50
    new-instance p1, Lcom/android/tools/r8/kotlin/t1;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/kotlin/t1;-><init>(Lcom/android/tools/r8/kotlin/V;)V

    .line 51
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/u0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    .line 52
    iput-object p1, p5, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    return-void

    .line 53
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    new-instance p2, Lcom/android/tools/r8/kotlin/u1;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/kotlin/u1;-><init>(Ljava/util/Set;)V

    new-instance p3, Lcom/android/tools/r8/kotlin/v1;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/kotlin/v1;-><init>(Lcom/android/tools/r8/kotlin/V;)V

    .line 54
    sget-boolean v0, Lcom/android/tools/r8/kotlin/r;->a:Z

    .line 55
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v0

    if-nez v0, :cond_4

    .line 56
    sget-object p1, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    goto :goto_1

    .line 57
    :cond_4
    invoke-static {p1, p5, v0, p2, p3}, Lcom/android/tools/r8/kotlin/r;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/r0;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)Lcom/android/tools/r8/kotlin/p;

    move-result-object p1

    .line 58
    :goto_1
    sget-boolean p2, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez p2, :cond_6

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    if-nez p2, :cond_8

    .line 59
    iget-object p2, p5, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 60
    sget-object p3, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    if-ne p2, p3, :cond_7

    goto :goto_3

    .line 61
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 62
    :cond_8
    :goto_3
    iput-object p1, p5, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 63
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 64
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 65
    invoke-interface {p4, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/r0;)Z
    .locals 1

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    .line 68
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic b()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/V;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/r0;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/V;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
