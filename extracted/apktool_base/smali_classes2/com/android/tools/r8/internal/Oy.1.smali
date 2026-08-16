.class public final Lcom/android/tools/r8/internal/Oy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/nJ;

.field public final c:Lcom/android/tools/r8/internal/La0;

.field public final d:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/La0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Oy;->d:Ljava/util/IdentityHashMap;

    sget-boolean v0, Lcom/android/tools/r8/internal/Oy;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$n;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Oy;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Oy;->b:Lcom/android/tools/r8/internal/nJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Oy;->c:Lcom/android/tools/r8/internal/La0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/Map;
    .locals 0

    .line 15
    new-instance p0, Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/kR;)V
    .locals 0

    .line 53
    sget-boolean p0, Lcom/android/tools/r8/internal/Oy;->e:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/shaking/N$a;)V
    .locals 0

    if-ne p3, p0, :cond_0

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 46
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;Ljava/util/Map;)V
    .locals 1

    .line 44
    new-instance v0, Lcom/android/tools/r8/internal/pQ0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/pQ0;-><init>(Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N$a;)Lcom/android/tools/r8/shaking/y;
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/AQ0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/AQ0;-><init>(Lcom/android/tools/r8/internal/Oy;Lcom/android/tools/r8/shaking/N$a;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Oy;->b(Ljava/util/function/Consumer;)V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oy;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/BQ0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/BQ0;-><init>(Lcom/android/tools/r8/internal/Oy;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/n3;->a(Ljava/util/function/BiPredicate;)V

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/Ny;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Ny;-><init>(Lcom/android/tools/r8/internal/Oy;)V

    return-object p1

    .line 13
    :cond_0
    sget-object p1, Lcom/android/tools/r8/shaking/y;->a:Lcom/android/tools/r8/shaking/y;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;)V
    .locals 5

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/YN0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/YN0;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/No0;

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/No0;

    .line 21
    iget-object v4, v3, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    if-eqz v4, :cond_2

    .line 22
    invoke-static {v3}, Lcom/android/tools/r8/internal/Xj;->a(Ljava/lang/Object;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/iB;->a(Ljava/util/ArrayDeque;)V

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/internal/Oy;->e:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oy;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V
    .locals 7

    .line 1
    sget-object v2, Lcom/android/tools/r8/internal/n40;->b:Lcom/android/tools/r8/internal/m40;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oy;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-static {v0}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v5

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    move-object v0, p1

    move-object v1, p3

    move-object v3, p2

    move-object v4, p4

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/gX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 28
    const-string v0, "[Proto] Post optimize generated extension registry"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/yQ0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/yQ0;-><init>(Lcom/android/tools/r8/internal/Oy;)V

    .line 30
    invoke-static {v0}, Lcom/android/tools/r8/internal/m80;->a(Lcom/android/tools/r8/internal/Yx;)Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/android/tools/r8/internal/eX;->c:Lcom/android/tools/r8/internal/eX;

    .line 32
    iget-object v2, p0, Lcom/android/tools/r8/internal/Oy;->a:Lcom/android/tools/r8/graph/y;

    .line 33
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v2

    .line 34
    new-instance v3, Lcom/android/tools/r8/internal/d40;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/tools/r8/internal/d40;-><init>(Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/m80;)V

    .line 35
    new-instance v0, Lcom/android/tools/r8/internal/zQ0;

    invoke-direct {v0, p0, p1, v3}, Lcom/android/tools/r8/internal/zQ0;-><init>(Lcom/android/tools/r8/internal/Oy;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/d40;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Oy;->a:Lcom/android/tools/r8/graph/y;

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p1

    .line 37
    invoke-virtual {v3, v0, p1, p2}, Lcom/android/tools/r8/internal/d40;->a(Lcom/android/tools/r8/internal/c40;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 38
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/N$a;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Oy;->b(Lcom/android/tools/r8/shaking/N$a;Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 4

    sget-object v0, Lcom/android/tools/r8/shaking/N$a;->c:Lcom/android/tools/r8/shaking/N$a;

    .line 39
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/android/tools/r8/internal/Oy;->d:Ljava/util/IdentityHashMap;

    .line 41
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/vQ0;

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/vQ0;-><init>(Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;)V

    .line 42
    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 43
    new-instance v0, Lcom/android/tools/r8/internal/wQ0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/wQ0;-><init>(Lcom/android/tools/r8/internal/Oy;Ljava/util/function/Consumer;)V

    invoke-interface {v1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/sQ0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/sQ0;-><init>(Lcom/android/tools/r8/internal/Oy;)V

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oy;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/i;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 50
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/l3;)V
    .locals 3

    .line 65
    check-cast p2, Lcom/android/tools/r8/graph/o3;

    .line 66
    iget-object p2, p2, Lcom/android/tools/r8/graph/o3;->a:Lcom/android/tools/r8/graph/l1;

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oy;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 68
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v1

    .line 69
    iget-object v2, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 70
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 71
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/m3;Lcom/android/tools/r8/shaking/y1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/m3;Lcom/android/tools/r8/shaking/y1;)Z
    .locals 2

    .line 54
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p3

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oy;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Oy;->c:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->h:Lcom/android/tools/r8/graph/M2;

    if-eq p3, v1, :cond_1

    return v0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    check-cast p2, Lcom/android/tools/r8/graph/n3;

    .line 59
    iget-object p2, p2, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 60
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/o3;

    if-nez p1, :cond_2

    return v0

    .line 61
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/Oy;->c:Lcom/android/tools/r8/internal/La0;

    .line 62
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/tools/r8/internal/xQ0;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/xQ0;-><init>(Lcom/android/tools/r8/internal/La0;)V

    .line 63
    iget-object p2, p1, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/d;->b(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 64
    iget p1, p1, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oy;->c:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/La0;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Z
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oy;->d:Ljava/util/IdentityHashMap;

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 27
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;)Z
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/shaking/N$a;Lcom/android/tools/r8/graph/l1;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Oy;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oy;->d:Ljava/util/IdentityHashMap;

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/qQ0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/qQ0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oy;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/rQ0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/rQ0;-><init>(Lcom/android/tools/r8/internal/Oy;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/n3;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c(Ljava/util/function/Consumer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oy;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Oy;->c:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->g:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/tQ0;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/tQ0;-><init>(Lcom/android/tools/r8/internal/Oy;Ljava/util/function/Consumer;)V

    new-instance p1, Lcom/android/tools/r8/internal/uQ0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/uQ0;-><init>()V

    iget-object v3, v0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    invoke-virtual {v3, v1, v2, p1, v0}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/h;)V

    return-void
.end method

.method public final d(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Oy;->a(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Oy;->c(Ljava/util/function/Consumer;)V

    return-void
.end method
