.class public final Lcom/android/tools/r8/internal/zz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/M3;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/zz;->b:Lcom/android/tools/r8/graph/M3;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/internal/zz;->b:Lcom/android/tools/r8/graph/M3;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/X3;Lcom/android/tools/r8/graph/U3;Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->J0()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/U3;->b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->J0()Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1

    .line 43
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/X3;->a(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p0

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    sget-boolean p1, Lcom/android/tools/r8/graph/g1;->p:Z

    if-nez p1, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 46
    :cond_2
    :goto_1
    iput-object p0, p2, Lcom/android/tools/r8/graph/g1;->k:Lcom/android/tools/r8/graph/H3$e;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/X3;Lcom/android/tools/r8/graph/U3;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$g;->c()Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/U3;->f(Ljava/util/List;)Lcom/android/tools/r8/graph/U3;

    move-result-object p1

    .line 49
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/U3;->a(Lcom/android/tools/r8/graph/H3$g;)Lcom/android/tools/r8/graph/H3$g;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object p1

    .line 51
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/X3;->a(Lcom/android/tools/r8/graph/H3$g;)Lcom/android/tools/r8/graph/H3$g;

    move-result-object p0

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    sget-boolean p1, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez p1, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 54
    :cond_2
    :goto_1
    iput-object p0, p2, Lcom/android/tools/r8/graph/j1;->q:Lcom/android/tools/r8/graph/H3$g;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, v0, Lcom/android/tools/r8/naming/p0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/Sb;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/Sb;-><init>(Lcom/android/tools/r8/shaking/i;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    .line 10
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/PF1;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/PF1;-><init>(Lcom/android/tools/r8/internal/zz;Ljava/util/function/Predicate;)V

    .line 11
    new-instance v2, Lcom/android/tools/r8/internal/QF1;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/QF1;-><init>(Lcom/android/tools/r8/internal/zz;Ljava/util/function/Predicate;)V

    .line 12
    new-instance v3, Lcom/android/tools/r8/internal/RF1;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/RF1;-><init>(Ljava/util/function/Predicate;)V

    .line 13
    invoke-static {p1, v3}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    new-instance v3, Lcom/android/tools/r8/internal/SF1;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/android/tools/r8/internal/SF1;-><init>(Lcom/android/tools/r8/internal/zz;Ljava/util/function/Predicate;Ljava/util/function/BiPredicate;Ljava/util/function/Predicate;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v0

    .line 15
    invoke-static {p1, v3, v0, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 16
    iget-object p1, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p2

    .line 17
    iput-object p2, p1, Lcom/android/tools/r8/graph/y;->i:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method

.method public final a(Ljava/util/function/Predicate;Ljava/util/function/BiPredicate;Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/zz;->b:Lcom/android/tools/r8/graph/M3;

    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    .line 23
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/M3$a;

    move-result-object p1

    .line 25
    invoke-static {v1, p1, p2, p3}, Lcom/android/tools/r8/graph/U3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3$a;Ljava/util/function/BiPredicate;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/U3;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    new-instance p2, Lcom/android/tools/r8/graph/X3;

    iget-object v0, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p2, v0, p4, p3}, Lcom/android/tools/r8/graph/X3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Ljava/util/function/Predicate;)V

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object p3

    .line 28
    invoke-interface {p3}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 29
    iget-object v0, p1, Lcom/android/tools/r8/graph/U3;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/graph/H3$b;->a(Lcom/android/tools/r8/graph/b4;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H3$b;

    move-result-object p3

    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object p3

    .line 31
    :cond_2
    :goto_1
    invoke-interface {p3}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 32
    new-instance v0, Lcom/android/tools/r8/graph/W3;

    iget-object v1, p2, Lcom/android/tools/r8/graph/X3;->a:Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0, p2, v1}, Lcom/android/tools/r8/graph/W3;-><init>(Lcom/android/tools/r8/graph/X3;Lcom/android/tools/r8/graph/u1;)V

    .line 33
    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/graph/H3$b;->a(Lcom/android/tools/r8/graph/b4;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H3$b;

    move-result-object p3

    .line 34
    :cond_3
    invoke-virtual {p4, p3}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/H3$b;)V

    .line 35
    new-instance p3, Lcom/android/tools/r8/internal/TF1;

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/internal/TF1;-><init>(Lcom/android/tools/r8/graph/X3;Lcom/android/tools/r8/graph/U3;)V

    .line 36
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p4, p3, v0}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 37
    new-instance p3, Lcom/android/tools/r8/internal/UF1;

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/internal/UF1;-><init>(Lcom/android/tools/r8/graph/X3;Lcom/android/tools/r8/graph/U3;)V

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/graph/E0;->g(Ljava/util/function/Consumer;)V

    .line 38
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->X0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/P5;

    .line 39
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/P5;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/X3;->a(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, p2, p1}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/zz;->b:Lcom/android/tools/r8/graph/M3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zz;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2, p3, p1}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method
