.class public final Lcom/android/tools/r8/internal/ax0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:I

.field public final d:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ax0;->b:Lcom/android/tools/r8/graph/u1;

    iput p2, p0, Lcom/android/tools/r8/internal/ax0;->c:I

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ax0;->d:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ax0;
    .locals 1

    .line 19
    const-string v0, "VerticalClassMerger (3/3)"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 20
    new-instance p1, Lcom/android/tools/r8/internal/ax0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/internal/ax0;-><init>(Lcom/android/tools/r8/graph/y;I)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/internal/iD;Lcom/android/tools/r8/internal/K70;)V
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/tools/r8/internal/iD;->e:Lcom/android/tools/r8/graph/A2;

    .line 18
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nx0;Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    .line 143
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nx0;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;)Z
    .locals 1

    .line 64
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ax0;
    .locals 1

    .line 1
    const-string v0, "VerticalClassMerger (1/3)"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/ax0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/internal/ax0;-><init>(Lcom/android/tools/r8/graph/y;I)V

    return-object p1
.end method

.method public static c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ax0;
    .locals 1

    const-string v0, "VerticalClassMerger (2/3)"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    new-instance p1, Lcom/android/tools/r8/internal/ax0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/internal/ax0;-><init>(Lcom/android/tools/r8/graph/y;I)V

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/qd;Ljava/util/ArrayList;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/jx0;
    .locals 3

    .line 86
    const-string v0, "Merge classes"

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 87
    invoke-static {p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/concurrent/ExecutorService;)I

    move-result v1

    invoke-virtual {p4, v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/ls0;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/android/tools/r8/internal/ix0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ix0;-><init>()V

    .line 89
    new-instance v2, Lcom/android/tools/r8/internal/k51;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/tools/r8/internal/k51;-><init>(Lcom/android/tools/r8/internal/ax0;Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/ix0;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 90
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p1

    .line 91
    invoke-static {p2, v2, p1, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ls0;->a(Ljava/util/Collection;)V

    .line 93
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ls0;->a()V

    .line 94
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 95
    iget-object p1, v1, Lcom/android/tools/r8/internal/ix0;->c:Lcom/android/tools/r8/internal/mx0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    new-instance p2, Lcom/android/tools/r8/internal/nx0;

    iget-object p3, p1, Lcom/android/tools/r8/internal/mx0;->a:Lcom/android/tools/r8/internal/n6;

    iget-object p4, p1, Lcom/android/tools/r8/internal/mx0;->b:Lcom/android/tools/r8/internal/l6;

    iget-object p1, p1, Lcom/android/tools/r8/internal/mx0;->c:Lcom/android/tools/r8/internal/l6;

    invoke-direct {p2, p3, p4, p1}, Lcom/android/tools/r8/internal/nx0;-><init>(Lcom/android/tools/r8/internal/o6;Lcom/android/tools/r8/internal/m6;Lcom/android/tools/r8/internal/m6;)V

    .line 97
    new-instance p1, Lcom/android/tools/r8/internal/jx0;

    iget-object p3, v1, Lcom/android/tools/r8/internal/ix0;->a:Lcom/android/tools/r8/internal/bx0;

    iget-object p4, v1, Lcom/android/tools/r8/internal/ix0;->b:Ljava/util/ArrayList;

    invoke-direct {p1, p3, p4, p2}, Lcom/android/tools/r8/internal/jx0;-><init>(Lcom/android/tools/r8/internal/bx0;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/nx0;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/c4;Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;Ljava/util/List;Ljava/util/Set;)Lcom/android/tools/r8/internal/ns0;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->d:Lcom/android/tools/r8/internal/nJ;

    const-string v1, "Compute classes to merge in component"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/android/tools/r8/internal/fx0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2, p1}, Lcom/android/tools/r8/internal/fx0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 78
    invoke-virtual {v1, p5}, Lcom/android/tools/r8/internal/fx0;->a(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    .line 79
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/t60;->a(Ljava/util/AbstractList;Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Ljava/util/LinkedList;

    move-result-object p1

    .line 80
    new-instance p2, Lcom/android/tools/r8/internal/hh;

    invoke-direct {p2, v2, p1}, Lcom/android/tools/r8/internal/hh;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/LinkedList;)V

    .line 81
    iget-object p1, p2, Lcom/android/tools/r8/internal/hh;->b:Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    monitor-enter p4

    .line 83
    :try_start_0
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit p4

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/ix0;Lcom/android/tools/r8/internal/hh;)Lcom/android/tools/r8/internal/ns0;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->d:Lcom/android/tools/r8/internal/nJ;

    const-string v1, "Merge classes in component"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 99
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/hh;->a(Lcom/android/tools/r8/internal/qd;)Lcom/android/tools/r8/internal/ix0;

    move-result-object p1

    .line 100
    monitor-enter p2

    .line 101
    :try_start_0
    iget-object p3, p2, Lcom/android/tools/r8/internal/ix0;->a:Lcom/android/tools/r8/internal/bx0;

    iget-object v1, p1, Lcom/android/tools/r8/internal/ix0;->a:Lcom/android/tools/r8/internal/bx0;

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/bx0;->a(Lcom/android/tools/r8/internal/bx0;)V

    .line 102
    iget-object p3, p2, Lcom/android/tools/r8/internal/ix0;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/tools/r8/internal/ix0;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object p3, p2, Lcom/android/tools/r8/internal/ix0;->c:Lcom/android/tools/r8/internal/mx0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ix0;->c:Lcom/android/tools/r8/internal/mx0;

    .line 104
    iget-object v1, p3, Lcom/android/tools/r8/internal/mx0;->a:Lcom/android/tools/r8/internal/n6;

    .line 105
    iget-object v2, p1, Lcom/android/tools/r8/internal/mx0;->a:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/n6;->a(Lcom/android/tools/r8/internal/n6;)V

    .line 106
    iget-object v1, p3, Lcom/android/tools/r8/internal/mx0;->b:Lcom/android/tools/r8/internal/l6;

    iget-object v2, p1, Lcom/android/tools/r8/internal/mx0;->b:Lcom/android/tools/r8/internal/l6;

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/TY;->a(Lcom/android/tools/r8/internal/l6;)V

    .line 107
    iget-object p3, p3, Lcom/android/tools/r8/internal/mx0;->c:Lcom/android/tools/r8/internal/l6;

    iget-object p1, p1, Lcom/android/tools/r8/internal/mx0;->c:Lcom/android/tools/r8/internal/l6;

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/TY;->a(Lcom/android/tools/r8/internal/l6;)V

    .line 108
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v0

    :catchall_0
    move-exception p1

    .line 110
    monitor-exit p2

    throw p1
.end method

.method public final a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/c4;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Ljava/util/ArrayList;
    .locals 9

    .line 65
    const-string v0, "Compute classes to merge"

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 66
    invoke-static {p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/concurrent/ExecutorService;)I

    move-result v1

    invoke-virtual {p4, v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/ls0;

    move-result-object v0

    .line 67
    new-instance v7, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    iget-object v1, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v1}, Lcom/android/tools/r8/internal/gx0;->a(Lcom/android/tools/r8/graph/y;)Ljava/util/List;

    move-result-object v4

    .line 70
    new-instance v8, Lcom/android/tools/r8/internal/j51;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/j51;-><init>(Lcom/android/tools/r8/internal/ax0;Lcom/android/tools/r8/graph/c4;Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;Ljava/util/List;)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 71
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p2

    .line 72
    invoke-static {p1, v8, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ls0;->a(Ljava/util/Collection;)V

    .line 74
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ls0;->a()V

    .line 75
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v7
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x1;)V
    .locals 1

    .line 198
    new-instance v0, Lcom/android/tools/r8/internal/p51;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/p51;-><init>(Lcom/android/tools/r8/internal/ax0;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p3, v0, p1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/H1;->a(Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/H1;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/cx0;Lcom/android/tools/r8/internal/jx0;)V
    .locals 9

    .line 199
    sget-boolean v0, Lcom/android/tools/r8/internal/ax0;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/cx0;->a(Lcom/android/tools/r8/graph/y;)V

    .line 200
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 201
    iget-object p2, p2, Lcom/android/tools/r8/internal/jx0;->c:Lcom/android/tools/r8/internal/nx0;

    .line 202
    iget-object v1, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 203
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 204
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    .line 205
    invoke-virtual {p1, v0, v4}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 206
    invoke-virtual {p1, v0, v5}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 207
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 208
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v7

    instance-of v7, v7, Lcom/android/tools/r8/internal/iD;

    if-eqz v7, :cond_6

    .line 209
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/iD;

    .line 210
    iget-object v3, v3, Lcom/android/tools/r8/internal/iD;->f:Lcom/android/tools/r8/graph/A2;

    .line 211
    invoke-virtual {p1, v0, v3}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 212
    sget-boolean v8, Lcom/android/tools/r8/internal/ax0;->e:Z

    if-nez v8, :cond_4

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v8, :cond_8

    .line 213
    invoke-virtual {v3, v6}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 214
    :cond_6
    sget-boolean v3, Lcom/android/tools/r8/internal/ax0;->e:Z

    if-nez v3, :cond_8

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 215
    :cond_8
    :goto_2
    sget-boolean v3, Lcom/android/tools/r8/internal/ax0;->e:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/ax0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 216
    new-instance v4, Lcom/android/tools/r8/internal/m51;

    invoke-direct {v4, p2}, Lcom/android/tools/r8/internal/m51;-><init>(Lcom/android/tools/r8/internal/nx0;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_0

    .line 217
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/cx0;Lcom/android/tools/r8/internal/jx0;Lcom/android/tools/r8/internal/ns0;)V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 112
    invoke-static {v0}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    instance-of v1, v0, Lcom/android/tools/r8/internal/b10;

    if-eqz v1, :cond_0

    return-void

    .line 115
    :cond_0
    const-string v1, "Update ART profiles"

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 116
    iget-object p2, p2, Lcom/android/tools/r8/internal/jx0;->b:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/iD;

    .line 118
    iget-object v4, v3, Lcom/android/tools/r8/internal/iD;->e:Lcom/android/tools/r8/graph/A2;

    .line 119
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/cx0;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/o51;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/internal/o51;-><init>(Lcom/android/tools/r8/internal/iD;)V

    .line 120
    invoke-virtual {v0, v4, v5}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/y;)V

    .line 122
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/jx0;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 123
    const-string v0, "Update keep info"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 124
    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/android/tools/r8/internal/l51;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/l51;-><init>(Lcom/android/tools/r8/internal/ax0;Lcom/android/tools/r8/internal/jx0;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/x1;

    .line 126
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/jx0;Lcom/android/tools/r8/shaking/x1;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/jx0;->c:Lcom/android/tools/r8/internal/nx0;

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/M5;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nx0;->a()Ljava/util/Set;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lcom/android/tools/r8/graph/M5;->e:Ljava/util/Set;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object v0

    .line 6
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/O5;)V

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/nx0;->a:Lcom/android/tools/r8/internal/o6;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/m6;->values()Ljava/util/Set;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 11
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object v2, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/shaking/x1;->b(Lcom/android/tools/r8/graph/H2;)V

    .line 16
    new-instance v1, Lcom/android/tools/r8/internal/q51;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/q51;-><init>()V

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/nx0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    .line 127
    iget v0, p0, Lcom/android/tools/r8/internal/ax0;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 128
    :cond_0
    const-string v0, "Remove merged classes"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 129
    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 130
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g3;->j()Lcom/android/tools/r8/graph/g3$a;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/n51;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/n51;-><init>(Lcom/android/tools/r8/internal/nx0;)V

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/w0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/w0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g3$a;

    .line 134
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g3$a;->d()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    .line 135
    new-instance v1, Lcom/android/tools/r8/graph/M5;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 136
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nx0;->a()Ljava/util/Set;

    move-result-object p1

    .line 137
    iget-object v2, v1, Lcom/android/tools/r8/graph/M5;->d:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v2, v1, Lcom/android/tools/r8/graph/M5;->e:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 139
    iput-object v0, v1, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 140
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    .line 142
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/ns0;)V
    .locals 17

    move-object/from16 v0, p0

    .line 145
    const-string v1, "Finalize synthesized bridges"

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 146
    iget-object v1, v0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v1

    .line 147
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_c

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/iD;

    .line 148
    iget-object v8, v0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 149
    iget-object v9, v7, Lcom/android/tools/r8/internal/iD;->e:Lcom/android/tools/r8/graph/A2;

    .line 150
    invoke-interface {v8, v9}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v8

    sget-boolean v9, Lcom/android/tools/r8/graph/H0;->e:Z

    if-eqz v8, :cond_0

    .line 151
    invoke-interface {v8}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v8

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 152
    :goto_1
    sget-boolean v10, Lcom/android/tools/r8/internal/ax0;->e:Z

    if-nez v10, :cond_2

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 153
    :cond_2
    :goto_2
    iget-object v11, v0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 154
    iget-object v12, v7, Lcom/android/tools/r8/internal/iD;->f:Lcom/android/tools/r8/graph/A2;

    .line 155
    invoke-interface {v11, v12}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 156
    invoke-interface {v11}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v11

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    if-nez v10, :cond_5

    if-eqz v11, :cond_4

    goto :goto_4

    .line 157
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 158
    :cond_5
    :goto_4
    iget-object v10, v0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 159
    new-instance v12, Lcom/android/tools/r8/internal/i60;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/i60;-><init>()V

    .line 160
    iget-object v13, v7, Lcom/android/tools/r8/internal/iD;->e:Lcom/android/tools/r8/graph/A2;

    .line 161
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v15, v12, v14}, Lcom/android/tools/r8/internal/WS;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/bT;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/PS;

    move-result-object v13

    .line 162
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move v15, v4

    .line 163
    :goto_5
    iget-object v9, v7, Lcom/android/tools/r8/internal/iD;->e:Lcom/android/tools/r8/graph/A2;

    .line 164
    invoke-virtual {v9, v4}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v9

    if-ge v15, v9, :cond_7

    .line 165
    iget-object v9, v7, Lcom/android/tools/r8/internal/iD;->e:Lcom/android/tools/r8/graph/A2;

    .line 166
    invoke-virtual {v9, v15, v4}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    if-nez v15, :cond_6

    .line 167
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v16

    :goto_6
    move-object/from16 v4, v16

    goto :goto_7

    :cond_6
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v16

    goto :goto_6

    .line 168
    :goto_7
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    invoke-static {v9, v4, v10}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 170
    new-instance v2, Lcom/android/tools/r8/internal/xw0;

    move/from16 v16, v3

    const/4 v3, 0x0

    invoke-direct {v2, v15, v4, v3}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 171
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v3

    .line 173
    iget-object v4, v12, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v4, v3, v2}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 174
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->F0()Z

    invoke-virtual {v13, v15}, Lcom/android/tools/r8/internal/PS;->a(I)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move/from16 v3, v16

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    move/from16 v16, v3

    .line 175
    iget-object v2, v7, Lcom/android/tools/r8/internal/iD;->g:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kK;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 176
    iget-object v2, v7, Lcom/android/tools/r8/internal/iD;->f:Lcom/android/tools/r8/graph/A2;

    iget-boolean v3, v7, Lcom/android/tools/r8/internal/iD;->h:Z

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_8

    const/16 v3, 0xcc

    goto :goto_8

    :cond_8
    const/16 v3, 0xb8

    .line 177
    :goto_8
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v13, v3, v2, v14}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    goto :goto_9

    .line 178
    :cond_9
    iget-boolean v2, v7, Lcom/android/tools/r8/internal/iD;->h:Z

    if-eqz v2, :cond_a

    .line 179
    iget-object v2, v7, Lcom/android/tools/r8/internal/iD;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xb9

    .line 180
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v13, v3, v2, v14}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    goto :goto_9

    .line 181
    :cond_a
    iget-object v2, v7, Lcom/android/tools/r8/internal/iD;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xb6

    .line 182
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v13, v3, v2, v14}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    .line 183
    :goto_9
    iget-object v2, v7, Lcom/android/tools/r8/internal/iD;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 184
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/PS;->b()Lcom/android/tools/r8/internal/PS;

    goto :goto_a

    .line 185
    :cond_b
    iget-object v2, v7, Lcom/android/tools/r8/internal/iD;->e:Lcom/android/tools/r8/graph/A2;

    .line 186
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 187
    new-instance v3, Lcom/android/tools/r8/internal/xw0;

    const/4 v4, 0x0

    invoke-direct {v3, v15, v2, v4}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 188
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v2

    .line 189
    iget-object v4, v12, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v4, v2, v3}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 190
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0xb0

    .line 192
    invoke-virtual {v13, v4, v2, v3}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    .line 193
    :goto_a
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/PS;->d()Lcom/android/tools/r8/internal/WS;

    move-result-object v2

    .line 194
    iget-object v3, v0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8, v2, v3}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    .line 195
    new-instance v2, Lcom/android/tools/r8/internal/s51;

    invoke-direct {v2, v0, v8, v11}, Lcom/android/tools/r8/internal/s51;-><init>(Lcom/android/tools/r8/internal/ax0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/x1;

    move-object/from16 v2, p2

    move/from16 v3, v16

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 196
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 7

    .line 21
    const-string v0, "Setup"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/android/tools/r8/internal/b80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/b80;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/i6;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 26
    new-instance v2, Lcom/android/tools/r8/internal/r51;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/r51;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 28
    new-instance v2, Lcom/android/tools/r8/internal/qd;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/qd;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 29
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/tools/r8/internal/ax0;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/c4;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Ljava/util/ArrayList;

    move-result-object v1

    .line 30
    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/android/tools/r8/internal/ax0;->a(Lcom/android/tools/r8/internal/qd;Ljava/util/ArrayList;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/jx0;

    move-result-object v1

    .line 31
    iget-object v3, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 32
    iget-object v4, v1, Lcom/android/tools/r8/internal/jx0;->c:Lcom/android/tools/r8/internal/nx0;

    .line 33
    iget v5, p0, Lcom/android/tools/r8/internal/ax0;->c:I

    .line 34
    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/nx0;I)V

    .line 35
    iget-object v3, v1, Lcom/android/tools/r8/internal/jx0;->c:Lcom/android/tools/r8/internal/nx0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nx0;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance v3, Lcom/android/tools/r8/internal/kx0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/android/tools/r8/internal/kx0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/jx0;)V

    .line 37
    invoke-virtual {v3, p1, p2}, Lcom/android/tools/r8/internal/sd;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/pd;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/cx0;

    .line 38
    iget-object v2, v3, Lcom/android/tools/r8/internal/kx0;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/iD;

    .line 39
    iget-object v6, v5, Lcom/android/tools/r8/internal/iD;->e:Lcom/android/tools/r8/graph/A2;

    .line 40
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/cx0;->g(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    iput-object v6, v5, Lcom/android/tools/r8/internal/iD;->f:Lcom/android/tools/r8/graph/A2;

    .line 41
    iget-object v6, v5, Lcom/android/tools/r8/internal/iD;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/cx0;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    iput-object v6, v5, Lcom/android/tools/r8/internal/iD;->e:Lcom/android/tools/r8/graph/A2;

    goto :goto_0

    .line 42
    :cond_1
    sget-boolean v2, Lcom/android/tools/r8/internal/ax0;->e:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/ax0;->a(Lcom/android/tools/r8/internal/cx0;Lcom/android/tools/r8/internal/jx0;)V

    .line 43
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/ax0;->a(Lcom/android/tools/r8/internal/jx0;Lcom/android/tools/r8/internal/ns0;)V

    .line 44
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/tools/r8/internal/ax0;->a(Lcom/android/tools/r8/internal/cx0;Lcom/android/tools/r8/internal/jx0;Lcom/android/tools/r8/internal/ns0;)V

    .line 45
    iget-object v2, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 46
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v3

    invoke-virtual {v2, v0, v3, p1, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/Sr0;->empty()Lcom/android/tools/r8/internal/Sr0;

    move-result-object v2

    invoke-static {v0, p2, p1, v2}, Lcom/android/tools/r8/internal/ZS;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Sr0;)V

    .line 49
    new-instance v0, Lcom/android/tools/r8/naming/D;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/naming/D;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/D;->c(Ljava/util/concurrent/ExecutorService;)V

    .line 50
    iget-object v0, v1, Lcom/android/tools/r8/internal/jx0;->c:Lcom/android/tools/r8/internal/nx0;

    .line 51
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/internal/ax0;->a(Lcom/android/tools/r8/internal/nx0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 52
    iget-object v0, v1, Lcom/android/tools/r8/internal/jx0;->b:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/ax0;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/ns0;)V

    .line 54
    const-string v0, "Mark rewritten with lens"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    const-string v1, "Clear code rewritings"

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 57
    new-instance v1, Lcom/android/tools/r8/internal/ke;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/ke;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/VV;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/TV;

    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    .line 60
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 61
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 62
    iget-object p1, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/u1;->b()V

    .line 63
    iget-object p1, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->H()Lcom/android/tools/r8/internal/dx0;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/ax0;->c:I

    .line 4
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/dx0;->b:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, v0, Lcom/android/tools/r8/internal/dx0;->a:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v3, v2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-nez v3, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/tools/r8/internal/dx0;->a:Lcom/android/tools/r8/internal/nJ;

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 8
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/dx0;->c:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->K:Ljava/util/Set;

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ax0;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    goto :goto_1

    .line 13
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/Jt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jt;-><init>()V

    .line 15
    new-instance v1, Lcom/android/tools/r8/internal/nx0;

    invoke-direct {v1, v0, v0, v0}, Lcom/android/tools/r8/internal/nx0;-><init>(Lcom/android/tools/r8/internal/o6;Lcom/android/tools/r8/internal/m6;Lcom/android/tools/r8/internal/m6;)V

    .line 16
    iget v0, p0, Lcom/android/tools/r8/internal/ax0;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/nx0;I)V

    .line 17
    :goto_1
    sget-boolean p1, Lcom/android/tools/r8/internal/ax0;->e:Z

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    .line 18
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    if-nez p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/android/tools/r8/internal/ax0;->a:Lcom/android/tools/r8/graph/y;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/internal/m4;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/internal/m4;)V

    .line 21
    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method
