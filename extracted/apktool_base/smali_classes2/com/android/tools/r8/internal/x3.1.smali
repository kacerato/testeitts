.class public final Lcom/android/tools/r8/internal/x3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/D3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/x3;->b:Lcom/android/tools/r8/internal/D3;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Ljava/util/List;)V
    .locals 0

    .line 57
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/O60;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Hz;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->B0()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/WS;)Lcom/android/tools/r8/internal/WS;
    .locals 10

    .line 82
    iget-object v0, p2, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 83
    new-instance v1, Lcom/android/tools/r8/internal/jy1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/jy1;-><init>(Lcom/android/tools/r8/internal/x3;Lcom/android/tools/r8/graph/H5;)V

    .line 84
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    .line 86
    invoke-static {v0}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/tools/r8/internal/WS;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p2

    .line 87
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 88
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v1

    .line 89
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v8

    .line 90
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 91
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 92
    iget-object v2, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    iput-object v2, v1, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 93
    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v9

    .line 95
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 97
    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    .line 98
    invoke-virtual {v2, v3, p1}, Lcom/android/tools/r8/internal/hw;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 99
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    .line 100
    check-cast v4, Lcom/android/tools/r8/graph/g1;

    .line 101
    iget-object v4, v4, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 102
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/vw;->f()Lcom/android/tools/r8/internal/F1;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    instance-of v4, v4, Lcom/android/tools/r8/internal/A7;

    if-nez v4, :cond_5

    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->h2()Z

    move-result v2

    .line 105
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v3

    if-eq v2, v3, :cond_6

    .line 106
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 107
    iget-object v3, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    move-object v2, v9

    move-object v4, p2

    move-object v5, v1

    move-object v6, v8

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_1

    .line 108
    :cond_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    move-object v2, v9

    move-object v4, p2

    move-object v5, v1

    move-object v6, v8

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_1

    .line 109
    :cond_7
    invoke-virtual {p2, v8}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/Collection;)V

    .line 110
    iget-object p1, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    .line 111
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 112
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 113
    new-instance p1, Lcom/android/tools/r8/internal/uB;

    iget-object v0, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/uB;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 114
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/lB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/WS;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/u3;Lcom/android/tools/r8/graph/H2;)Ljava/util/List;
    .locals 9

    .line 55
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v7, Lu/P0;

    invoke-direct {v7}, Lu/P0;-><init>()V

    new-instance v8, Lcom/android/tools/r8/internal/iy1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/iy1;-><init>(Lcom/android/tools/r8/internal/x3;Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/u3;Ljava/util/List;)V

    invoke-virtual {p4, v8, v7}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-object v6
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 61
    new-instance v0, Lcom/android/tools/r8/internal/my1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/my1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/ny1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/ny1;-><init>(Lcom/android/tools/r8/internal/x3;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 63
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    sget-boolean v0, Lcom/android/tools/r8/internal/x3;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object v0

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/x3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/WS;)Lcom/android/tools/r8/internal/WS;

    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/U30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/u3;Ljava/util/List;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 36
    iget-object p1, p1, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    .line 37
    sget-boolean v0, Lcom/android/tools/r8/internal/qU;->e:Z

    if-nez v0, :cond_2

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p1, Lcom/android/tools/r8/internal/qU;->c:Lcom/android/tools/r8/internal/Hz;

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    .line 42
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 43
    new-instance p1, Lcom/android/tools/r8/internal/w3;

    iget-object p2, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p1, p2, p5, p3}, Lcom/android/tools/r8/internal/w3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/u3;)V

    .line 44
    invoke-virtual {p5, p1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 45
    iget-object p1, p1, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 47
    sget-boolean p1, Lcom/android/tools/r8/internal/x3;->c:Z

    if-nez p1, :cond_4

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->w()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_4
    :goto_1
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/u3;Lcom/android/tools/r8/internal/O60;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/tools/r8/graph/H2;

    .line 4
    new-instance v10, Lu/P0;

    invoke-direct {v10}, Lu/P0;-><init>()V

    new-instance v11, Lcom/android/tools/r8/internal/ly1;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/ly1;-><init>(Lcom/android/tools/r8/internal/x3;Lcom/android/tools/r8/internal/u3;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;)V

    invoke-virtual {v9, v11, v10}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/u3;Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    .line 51
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/gy1;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/android/tools/r8/internal/gy1;-><init>(Lcom/android/tools/r8/internal/x3;Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/u3;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p1

    .line 53
    invoke-static {v1, v2, p1, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p1

    .line 54
    new-instance p3, Lcom/android/tools/r8/internal/hy1;

    invoke-direct {p3, p2, v0}, Lcom/android/tools/r8/internal/hy1;-><init>(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/u3;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    .line 5
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/i0;->B0()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/lZ;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/u3;->n:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    sget-boolean p1, Lcom/android/tools/r8/internal/x3;->c:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/shaking/I1;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p3, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    .line 10
    invoke-virtual {p1, p4, p5}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;)V

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ$p;->d1:Ljava/util/function/Consumer;

    invoke-interface {p1, p5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_3
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->j()Lcom/android/tools/r8/internal/F8;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/android/tools/r8/internal/x3;->b:Lcom/android/tools/r8/internal/D3;

    .line 14
    iget-object p2, p2, Lcom/android/tools/r8/internal/D3;->b:Ljava/util/IdentityHashMap;

    .line 15
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/android/tools/r8/internal/iX;->b:Lcom/android/tools/r8/internal/iX;

    .line 17
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/iX;

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    instance-of v0, p1, Lcom/android/tools/r8/internal/jg;

    if-nez v0, :cond_4

    goto :goto_3

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F8;->a()Lcom/android/tools/r8/internal/jg;

    move-result-object v0

    const/4 v1, 0x0

    .line 22
    :goto_1
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 23
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 25
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/F8;->a(I)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 26
    :cond_5
    iget-object v2, p2, Lcom/android/tools/r8/internal/iX;->a:Lcom/android/tools/r8/internal/dH;

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/tools/r8/internal/p2;->a:Lcom/android/tools/r8/internal/p2;

    .line 28
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/s50;

    .line 29
    invoke-virtual {p5, v1}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 30
    invoke-virtual {v2, p5, v0, v1, v3}, Lcom/android/tools/r8/internal/s50;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/jg;ILcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 31
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    .line 32
    invoke-virtual {p1, p5}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/shaking/I1;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 33
    iget-object p1, p3, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    .line 34
    invoke-virtual {p1, p4, p5}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;)V

    .line 35
    iget-object p1, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ$p;->d1:Ljava/util/function/Consumer;

    invoke-interface {p1, p5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ky1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/ky1;-><init>(Lcom/android/tools/r8/internal/x3;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    .line 60
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/YS;)Z
    .locals 3

    .line 72
    instance-of v0, p2, Lcom/android/tools/r8/graph/l1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    check-cast p2, Lcom/android/tools/r8/graph/l1;

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/internal/x3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iget-object v2, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2, p2, p1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    .line 78
    check-cast p1, Lcom/android/tools/r8/graph/g1;

    .line 79
    iget-object p1, p1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 80
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vw;->f()Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    instance-of p1, p1, Lcom/android/tools/r8/internal/A7;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
