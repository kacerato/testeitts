.class public final Lcom/android/tools/r8/shaking/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/l1;

.field public final c:Lcom/android/tools/r8/internal/tD;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/tD;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/tD;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/p;->c:Lcom/android/tools/r8/internal/tD;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/p;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$c;->a:Lcom/android/tools/r8/graph/l1;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/p;->b:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/zx0;)V
    .locals 8

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/p;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11
    sget-boolean p1, Lcom/android/tools/r8/shaking/p;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    .line 13
    iget-object v6, v3, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 14
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/vw;->i()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    sget-object v6, Lcom/android/tools/r8/shaking/o;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v5, :cond_9

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    goto :goto_1

    .line 17
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 18
    :cond_6
    iget-object v6, v3, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v6

    if-nez v6, :cond_8

    .line 19
    iget-object v6, v3, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move v6, v4

    goto :goto_3

    :cond_8
    :goto_2
    move v6, v5

    goto :goto_3

    .line 20
    :cond_9
    iget-object v6, v3, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v6

    :goto_3
    if-nez v6, :cond_a

    goto :goto_0

    .line 21
    :cond_a
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/l1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_0

    :cond_b
    if-nez v2, :cond_c

    goto :goto_4

    .line 22
    :cond_c
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g1;->I0()Lcom/android/tools/r8/graph/k3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->d()I

    move-result v6

    .line 23
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->I0()Lcom/android/tools/r8/graph/k3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/g;->d()I

    move-result v7

    if-le v6, v7, :cond_d

    :goto_4
    move-object v2, v3

    .line 24
    :cond_d
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_e
    if-nez v2, :cond_10

    const/16 p2, 0x1019

    .line 25
    invoke-static {p2}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object p2

    .line 26
    sget-object v1, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 27
    new-instance v1, Lcom/android/tools/r8/graph/g1$a;

    invoke-direct {v1, v5}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 28
    iget-object v2, p0, Lcom/android/tools/r8/shaking/p;->a:Lcom/android/tools/r8/graph/y;

    .line 29
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p0, Lcom/android/tools/r8/shaking/p;->b:Lcom/android/tools/r8/graph/l1;

    iget-object v6, v5, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 30
    invoke-virtual {v2, v3, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v1

    .line 32
    iput-object p2, v1, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 33
    iget-object p2, p0, Lcom/android/tools/r8/shaking/p;->a:Lcom/android/tools/r8/graph/y;

    .line 34
    iget-object v2, p2, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 35
    iput-object v2, v1, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/H2;->e()Z

    move-result p2

    if-nez p2, :cond_f

    .line 37
    iput-boolean v4, v1, Lcom/android/tools/r8/graph/g1$a;->m:Z

    .line 38
    :cond_f
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/g1;)V

    .line 40
    :cond_10
    iget-object p2, p0, Lcom/android/tools/r8/shaking/p;->c:Lcom/android/tools/r8/internal/tD;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 41
    sget-boolean v1, Lcom/android/tools/r8/internal/tD;->b:Z

    if-nez v1, :cond_12

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-ne v1, p1, :cond_11

    goto :goto_5

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_12
    :goto_5
    iget-object p2, p2, Lcom/android/tools/r8/internal/tD;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/p;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->C:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/shaking/Sd;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Sd;-><init>(Lcom/android/tools/r8/shaking/p;)V

    iget-object v2, p0, Lcom/android/tools/r8/shaking/p;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Tr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/shaking/p;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/p;->c:Lcom/android/tools/r8/internal/tD;

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/dx;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/tD;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/dx;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 9
    iput-object v1, p1, Lcom/android/tools/r8/graph/y;->j:Lcom/android/tools/r8/internal/uD;

    return-void
.end method
