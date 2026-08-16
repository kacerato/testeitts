.class public final Lcom/android/tools/r8/internal/jt0;
.super Lcom/android/tools/r8/graph/m0;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final synthetic e:Lcom/android/tools/r8/internal/kt0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/kt0;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/graph/m0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/d;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/tools/r8/graph/a;

    invoke-direct {p0}, Lcom/android/tools/r8/graph/a;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/g1;)V
    .locals 2

    .line 87
    monitor-enter p1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kt0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/android/tools/r8/graph/c;->a:Lcom/android/tools/r8/graph/c;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kt0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 3

    .line 65
    monitor-enter p1

    .line 66
    :try_start_0
    sget-object v0, Lcom/android/tools/r8/graph/b;->a:Lcom/android/tools/r8/graph/b;

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/d;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    instance-of v2, v1, Lcom/android/tools/r8/graph/b;

    if-eqz v2, :cond_2

    .line 69
    new-instance p3, Lcom/android/tools/r8/internal/dg1;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/dg1;-><init>()V

    .line 70
    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/d;

    .line 71
    sget-boolean p3, Lcom/android/tools/r8/internal/jt0;->f:Z

    if-nez p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    instance-of p3, p2, Lcom/android/tools/r8/graph/a;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2}, Ljava/lang/AssertionError;-><init>()V

    throw p2

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/d;->a()Lcom/android/tools/r8/graph/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 76
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/graph/a;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Z

    goto :goto_2

    .line 77
    :cond_2
    instance-of v1, v1, Lcom/android/tools/r8/graph/c;

    if-nez v1, :cond_3

    .line 78
    sget-object v0, Lcom/android/tools/r8/graph/c;->a:Lcom/android/tools/r8/graph/c;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 80
    :cond_3
    sget-boolean v1, Lcom/android/tools/r8/internal/jt0;->f:Z

    if-nez v1, :cond_5

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    instance-of p2, p2, Lcom/android/tools/r8/graph/c;

    if-eqz p2, :cond_4

    goto :goto_1

    .line 82
    :cond_4
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2}, Ljava/lang/AssertionError;-><init>()V

    throw p2

    :cond_5
    :goto_1
    if-nez v1, :cond_7

    .line 83
    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    instance-of p2, p2, Lcom/android/tools/r8/graph/c;

    if-eqz p2, :cond_6

    goto :goto_2

    .line 85
    :cond_6
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2}, Ljava/lang/AssertionError;-><init>()V

    throw p2

    .line 86
    :cond_7
    :goto_2
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/android/tools/r8/internal/jt0;->a(Lcom/android/tools/r8/graph/l1;ZZLcom/android/tools/r8/internal/s8;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/s8;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/tools/r8/internal/jt0;->a(Lcom/android/tools/r8/graph/l1;ZZLcom/android/tools/r8/internal/s8;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;ZZLcom/android/tools/r8/internal/s8;)V
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->u()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 17
    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v3

    if-ne v3, p2, :cond_e

    iget-object v3, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 21
    instance-of v3, p1, Lcom/android/tools/r8/graph/F3;

    if-eqz v3, :cond_e

    .line 22
    iget-object v3, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    .line 23
    iget-object v3, v3, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    .line 24
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    .line 25
    iget-object p1, p1, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    .line 26
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/shaking/I1;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz p4, :cond_9

    .line 27
    iget-object p1, p4, Lcom/android/tools/r8/internal/s8;->a:Ljava/util/Set;

    if-eqz p1, :cond_8

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    .line 29
    check-cast p1, Lcom/android/tools/r8/graph/g1;

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vw;->g()Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 32
    :cond_2
    iget-object p1, p4, Lcom/android/tools/r8/internal/s8;->a:Ljava/util/Set;

    .line 33
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 34
    iget-object v3, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 35
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 36
    iget-object v4, v4, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 37
    invoke-virtual {v3, v4, v2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 39
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 40
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_6

    .line 41
    sget-boolean p1, Lcom/android/tools/r8/internal/jt0;->f:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_6
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 43
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/kt0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    new-instance p3, Lcom/android/tools/r8/internal/eg1;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/eg1;-><init>()V

    invoke-static {p3}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/m80;

    .line 45
    iget-object p2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 46
    check-cast p2, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void

    .line 47
    :cond_8
    :goto_1
    iget-boolean p1, p4, Lcom/android/tools/r8/internal/s8;->b:Z

    if-eqz p1, :cond_9

    goto :goto_4

    .line 48
    :cond_9
    iget-object p1, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p1

    iget-object p4, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    .line 49
    iget-object p4, p4, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    .line 50
    invoke-virtual {p1, p4, v0}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 51
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p1

    if-ne p1, p2, :cond_b

    if-eqz p3, :cond_a

    .line 52
    iget-object p1, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    iget-object p2, p1, Lcom/android/tools/r8/internal/kt0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/android/tools/r8/internal/kt0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/tools/r8/internal/jt0;->a(Lcom/android/tools/r8/graph/g1;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    goto :goto_2

    .line 53
    :cond_a
    iget-object p1, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    iget-object p2, p1, Lcom/android/tools/r8/internal/kt0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/android/tools/r8/internal/kt0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/tools/r8/internal/jt0;->a(Lcom/android/tools/r8/graph/g1;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    goto :goto_2

    .line 54
    :cond_b
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/jt0;->a(Lcom/android/tools/r8/graph/g1;)V

    .line 55
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/kt0;->f:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    if-nez p3, :cond_f

    iget-object p1, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/kt0;->g:Ljava/util/Set;

    .line 56
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 57
    :cond_d
    iget-object p1, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/kt0;->h:Lcom/android/tools/r8/internal/j80;

    .line 58
    iget-object p2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 59
    check-cast p2, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void

    .line 60
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/kt0;->f:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/jt0;->e:Lcom/android/tools/r8/internal/kt0;

    .line 62
    iget-object p2, p2, Lcom/android/tools/r8/internal/kt0;->a:Lcom/android/tools/r8/graph/y;

    .line 63
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 64
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/jt0;->a(Lcom/android/tools/r8/graph/g1;)V

    :cond_f
    :goto_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ja;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 2
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/internal/Ka;)Lcom/android/tools/r8/internal/s8;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ja;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/android/tools/r8/internal/jt0;->a(Lcom/android/tools/r8/graph/l1;ZZLcom/android/tools/r8/internal/s8;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/La;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 6
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/internal/Ka;)Lcom/android/tools/r8/internal/s8;

    move-result-object v0

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/internal/La;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/tools/r8/internal/jt0;->a(Lcom/android/tools/r8/graph/l1;ZZLcom/android/tools/r8/internal/s8;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/s8;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/tools/r8/internal/jt0;->a(Lcom/android/tools/r8/graph/l1;ZZLcom/android/tools/r8/internal/s8;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/tools/r8/internal/jt0;->a(Lcom/android/tools/r8/graph/l1;ZZLcom/android/tools/r8/internal/s8;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/tools/r8/internal/jt0;->a(Lcom/android/tools/r8/graph/l1;ZZLcom/android/tools/r8/internal/s8;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/tools/r8/internal/jt0;->a(Lcom/android/tools/r8/graph/l1;ZZLcom/android/tools/r8/internal/s8;)V

    return-void
.end method
