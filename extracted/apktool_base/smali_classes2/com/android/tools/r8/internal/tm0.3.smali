.class public final Lcom/android/tools/r8/internal/tm0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 103
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 105
    sget-boolean v1, Lcom/android/tools/r8/graph/M5;->h:Z

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    .line 107
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 108
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    .line 109
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object p0, p0, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/h80;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/M5;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/au1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/au1;-><init>(Lcom/android/tools/r8/graph/M5;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/sm0;Lcom/android/tools/r8/internal/h80;Ljava/util/concurrent/ExecutorService;)V
    .locals 6

    .line 80
    new-instance v0, Lcom/android/tools/r8/internal/qm0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/qm0;-><init>(Lcom/android/tools/r8/internal/h80;)V

    .line 81
    iget-object v1, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    .line 82
    new-instance v2, Lcom/android/tools/r8/internal/um0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/um0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 83
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/um0;->a(Lcom/android/tools/r8/internal/h80;)Lcom/android/tools/r8/internal/um0;

    move-result-object v1

    .line 84
    iget-object v2, v1, Lcom/android/tools/r8/internal/A8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 85
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 86
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 87
    new-instance v2, Lcom/android/tools/r8/internal/zi;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/zi;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/zi;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/zi$a;

    .line 88
    new-instance v2, Lcom/android/tools/r8/internal/wm0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/A8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/wm0;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 89
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 90
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/wm0;->c()Lcom/android/tools/r8/internal/m80;

    .line 91
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/y8;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/wm0;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/m80;

    .line 95
    sget-object v3, Lcom/android/tools/r8/internal/eX;->c:Lcom/android/tools/r8/internal/eX;

    .line 96
    iget-object v4, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    .line 97
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v4

    .line 98
    new-instance v5, Lcom/android/tools/r8/internal/d40;

    invoke-direct {v5, v3, v4, v2}, Lcom/android/tools/r8/internal/d40;-><init>(Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/m80;)V

    .line 99
    iput-object v0, v5, Lcom/android/tools/r8/internal/d40;->e:Lcom/android/tools/r8/internal/qm0;

    .line 100
    new-instance v2, Lcom/android/tools/r8/internal/Zt1;

    invoke-direct {v2, p0, p1, v5, p2}, Lcom/android/tools/r8/internal/Zt1;-><init>(Lcom/android/tools/r8/internal/tm0;Lcom/android/tools/r8/ir/optimize/W;Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/internal/h80;)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    .line 101
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v3

    .line 102
    invoke-virtual {v5, v2, v3, p3}, Lcom/android/tools/r8/internal/d40;->a(Lcom/android/tools/r8/internal/c40;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/W;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v1

    .line 49
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/ir/optimize/O;)Z

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 52
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 53
    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    iget-object p2, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    .line 55
    iget-object v0, p2, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 56
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1;->f(Lcom/android/tools/r8/androidapi/f;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/W;Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V
    .locals 8

    .line 58
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/j1;

    .line 59
    iget-object p5, p5, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 60
    invoke-interface {p5}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 61
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/j1;

    iget-object v0, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    .line 62
    iget-object v1, v0, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 63
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    .line 64
    invoke-virtual {p5, v0}, Lcom/android/tools/r8/graph/j1;->f(Lcom/android/tools/r8/androidapi/f;)V

    .line 65
    :cond_0
    iget-object p5, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p5}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v0

    invoke-virtual {p4, p5, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p5

    .line 66
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v4

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    .line 67
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/dX;)Lcom/android/tools/r8/internal/KD;

    move-result-object v7

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v5, p2

    .line 68
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/KD;)V

    .line 69
    iget-object p2, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p2, p5}, Lcom/android/tools/r8/ir/optimize/x;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 70
    new-instance p2, Lcom/android/tools/r8/internal/uB;

    iget-object v0, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/uB;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 71
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-virtual {p2, p5, v0, v1}, Lcom/android/tools/r8/internal/lB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/WS;

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4, p2, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    .line 73
    iget-object p2, p3, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 74
    sget-object p3, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 75
    new-instance v0, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v0, p3, p4}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 76
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 77
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object p2

    .line 78
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/ir/optimize/O;)Z

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 8

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->D()Lcom/android/tools/r8/internal/xm0;

    move-result-object v0

    .line 8
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/xm0;->b:Z

    if-eqz v1, :cond_9

    .line 9
    iget-object v1, v0, Lcom/android/tools/r8/internal/xm0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v2, :cond_9

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-nez v2, :cond_9

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/android/tools/r8/internal/xm0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12
    const-string v0, "SingleCallerInliner"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v1

    .line 15
    new-instance v2, Lcom/android/tools/r8/internal/b80;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/b80;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/i6;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 17
    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/YX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Ljava/util/ArrayList;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/j80;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/ym0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/ym0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/j80;)V

    .line 19
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/ym0;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    .line 20
    iget-object v1, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 21
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/sm0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/sm0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/h80;)V

    .line 22
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/tools/r8/internal/tm0;->b(Lcom/android/tools/r8/internal/sm0;Lcom/android/tools/r8/internal/h80;Ljava/util/concurrent/ExecutorService;)V

    .line 23
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/tools/r8/internal/tm0;->a(Lcom/android/tools/r8/internal/sm0;Lcom/android/tools/r8/internal/h80;Ljava/util/concurrent/ExecutorService;)V

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 25
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->d1()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v3

    .line 27
    iget-object v4, v3, Lcom/android/tools/r8/graph/i3;->b:Lcom/android/tools/r8/graph/A2;

    if-eqz v4, :cond_1

    .line 28
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 29
    iget-object v4, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v4, v3}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 30
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/TW;->w()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 31
    iput-object v4, v2, Lcom/android/tools/r8/graph/E0;->m:Lcom/android/tools/r8/graph/i3;

    .line 32
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 33
    sget-boolean v5, Lcom/android/tools/r8/internal/tm0;->b:Z

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_5
    :goto_1
    new-instance v5, Lcom/android/tools/r8/graph/e4;

    .line 35
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->a()I

    move-result v6

    .line 36
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 37
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 38
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->c()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-direct {v5, v6, v7, v3, v4}, Lcom/android/tools/r8/graph/e4;-><init>(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    .line 39
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 40
    :cond_6
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 41
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/e4;

    .line 42
    iget-object v6, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-ne v6, v4, :cond_6

    .line 43
    invoke-interface {v3, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 44
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 45
    :cond_8
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/tm0;->a(Lcom/android/tools/r8/internal/h80;Ljava/util/concurrent/ExecutorService;)V

    .line 46
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    :cond_9
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/sm0;Lcom/android/tools/r8/internal/h80;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Pn;->j()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/Xt1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Xt1;-><init>(Ljava/util/stream/Stream;)V

    new-instance p2, Lcom/android/tools/r8/internal/Yt1;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/Yt1;-><init>(Lcom/android/tools/r8/internal/tm0;Lcom/android/tools/r8/ir/optimize/W;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/tm0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p1

    invoke-static {v0, p2, p1, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
