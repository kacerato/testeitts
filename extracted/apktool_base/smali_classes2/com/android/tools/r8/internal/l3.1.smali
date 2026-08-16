.class public final Lcom/android/tools/r8/internal/l3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public b:Ljava/util/Set;

.field public c:Lcom/android/tools/r8/internal/p3;

.field public d:Lcom/android/tools/r8/internal/Et;

.field public e:Lcom/android/tools/r8/internal/D3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/l3;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->c()Lcom/android/tools/r8/internal/nJ$b;

    move-result-object v0

    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ$b;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ$b;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$b;->a:Z

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_4
    iput-object p1, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Ljava/util/Set;)Lcom/android/tools/r8/internal/Dq;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/tools/r8/internal/Dq;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/util/Set;Lcom/android/tools/r8/graph/F2;)V
    .locals 1

    .line 205
    new-instance v0, Lcom/android/tools/r8/internal/oi1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/oi1;-><init>()V

    .line 206
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Dq;

    .line 207
    iget-object p0, p0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 208
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    .line 118
    sget-object v1, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    .line 119
    invoke-virtual {p2, v0, p1, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/tools/r8/internal/l3;->c:Lcom/android/tools/r8/internal/p3;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->i:Lcom/android/tools/r8/internal/f80;

    .line 122
    iget-object v0, v0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 123
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/l3;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/l3;->e:Lcom/android/tools/r8/internal/D3;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/l3;->e:Lcom/android/tools/r8/internal/D3;

    .line 126
    iget-object v1, v0, Lcom/android/tools/r8/internal/D3;->b:Ljava/util/IdentityHashMap;

    .line 127
    iget-object v2, v0, Lcom/android/tools/r8/internal/D3;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 128
    iget-object v0, v0, Lcom/android/tools/r8/internal/D3;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;)V
    .locals 9

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/l3;->c:Lcom/android/tools/r8/internal/p3;

    if-eqz v0, :cond_16

    .line 50
    sget-boolean v0, Lcom/android/tools/r8/internal/l3;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 51
    :cond_1
    :goto_0
    new-instance v2, Lcom/android/tools/r8/internal/mi1;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/mi1;-><init>(Lcom/android/tools/r8/internal/l3;Lcom/android/tools/r8/graph/H5;)V

    .line 52
    new-instance v7, Lcom/android/tools/r8/internal/S50;

    iget-object v0, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/l3;->c:Lcom/android/tools/r8/internal/p3;

    .line 53
    iget-object v3, v1, Lcom/android/tools/r8/internal/p3;->c:Lcom/android/tools/r8/internal/Sw;

    .line 54
    iget-object v4, v1, Lcom/android/tools/r8/internal/p3;->d:Lcom/android/tools/r8/internal/bX;

    .line 55
    invoke-direct {v7, v0, p2, v3, v4}, Lcom/android/tools/r8/internal/S50;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;)V

    .line 56
    new-instance v8, Lcom/android/tools/r8/internal/o3;

    move-object v0, v8

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/o3;-><init>(Lcom/android/tools/r8/internal/p3;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/S50;)V

    .line 57
    const-string p3, "Argument propagation scanner"

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 58
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->F1()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->T()Lcom/android/tools/r8/internal/ww;

    move-result-object v0

    .line 61
    iget-object v1, v8, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, v8, Lcom/android/tools/r8/internal/o3;->c:Lcom/android/tools/r8/graph/H5;

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/internal/hw;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/hw;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {v8, v0, v1, p4}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/ns0;)V

    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    invoke-virtual {v8, v0, p4}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/ns0;)V

    goto :goto_1

    .line 65
    :cond_5
    instance-of v1, v0, Lcom/android/tools/r8/internal/OJ;

    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b0()Lcom/android/tools/r8/internal/OJ;

    move-result-object v0

    .line 67
    iget-object v0, v0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 68
    iget-object v0, v0, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    .line 69
    iget-object v1, v8, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->a:Lcom/android/tools/r8/graph/y;

    .line 70
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 71
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-boolean v0, v0, Lcom/android/tools/r8/graph/C2;->g:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, v8, Lcom/android/tools/r8/internal/o3;->g:Lcom/android/tools/r8/internal/p3;

    iget-object v1, v1, Lcom/android/tools/r8/internal/p3;->j:Lcom/android/tools/r8/internal/zX;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    sget-object v2, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)V

    goto :goto_1

    .line 75
    :cond_6
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 76
    sget-boolean p3, Lcom/android/tools/r8/internal/l3;->f:Z

    if-nez p3, :cond_8

    iget-object p4, p0, Lcom/android/tools/r8/internal/l3;->d:Lcom/android/tools/r8/internal/Et;

    if-eqz p4, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 77
    :cond_8
    :goto_2
    iget-object p4, p0, Lcom/android/tools/r8/internal/l3;->d:Lcom/android/tools/r8/internal/Et;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    new-instance v0, Lcom/android/tools/r8/internal/Dt;

    invoke-direct {v0, p4, p1, p2, v7}, Lcom/android/tools/r8/internal/Dt;-><init>(Lcom/android/tools/r8/internal/Et;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/S50;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Dt;->a()V

    if-nez p3, :cond_a

    .line 79
    iget-object p3, p0, Lcom/android/tools/r8/internal/l3;->e:Lcom/android/tools/r8/internal/D3;

    if-eqz p3, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 80
    :cond_a
    :goto_3
    iget-object p3, p0, Lcom/android/tools/r8/internal/l3;->e:Lcom/android/tools/r8/internal/D3;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    new-instance p4, Lcom/android/tools/r8/internal/dH;

    const/16 v0, 0x10

    .line 82
    invoke-direct {p4, v0}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 83
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object p2

    .line 84
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_15

    .line 85
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    .line 86
    sget-object v1, Lcom/android/tools/r8/internal/p2;->a:Lcom/android/tools/r8/internal/p2;

    goto/16 :goto_7

    .line 87
    :cond_b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v1

    const/4 v3, 0x0

    .line 88
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    sget-object v5, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    .line 90
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v6

    .line 91
    invoke-static {v5, v4, v6}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 92
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 93
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v6

    const/16 v7, 0x9

    if-eq v6, v7, :cond_10

    const/16 v7, 0x19

    if-eq v6, v7, :cond_10

    const/16 v7, 0x1c

    if-eq v6, v7, :cond_10

    const/16 v7, 0x1e

    if-eq v6, v7, :cond_10

    const/16 v7, 0x38

    if-eq v6, v7, :cond_10

    const/16 v7, 0x21

    if-eq v6, v7, :cond_10

    const/16 v7, 0x22

    if-eq v6, v7, :cond_d

    packed-switch v6, :pswitch_data_0

    goto :goto_5

    .line 94
    :cond_d
    :pswitch_0
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v5

    .line 95
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-eq v6, v7, :cond_e

    goto :goto_6

    .line 96
    :cond_e
    iget-object v6, p3, Lcom/android/tools/r8/internal/D3;->a:Lcom/android/tools/r8/graph/y;

    .line 97
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    .line 98
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v5

    .line 99
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 100
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_6

    :cond_f
    :goto_5
    move v3, v2

    :cond_10
    :goto_6
    :pswitch_1
    if-eqz v1, :cond_c

    if-eqz v3, :cond_c

    if-eqz v1, :cond_c

    :cond_11
    if-eqz v1, :cond_12

    if-eqz v3, :cond_12

    if-eqz v1, :cond_12

    .line 101
    sget-object v1, Lcom/android/tools/r8/internal/p2;->a:Lcom/android/tools/r8/internal/p2;

    goto :goto_7

    :cond_12
    if-nez v1, :cond_13

    if-nez v3, :cond_13

    if-nez v1, :cond_13

    .line 102
    sget-object v1, Lcom/android/tools/r8/internal/h2;->a:Lcom/android/tools/r8/internal/h2;

    goto :goto_7

    .line 103
    :cond_13
    new-instance v1, Lcom/android/tools/r8/internal/Z00;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/Z00;-><init>(Z)V

    .line 104
    :goto_7
    instance-of v3, v1, Lcom/android/tools/r8/internal/p2;

    if-nez v3, :cond_14

    .line 105
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v0

    .line 106
    invoke-virtual {p4, v0, v1}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_14
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v0

    goto/16 :goto_4

    .line 108
    :cond_15
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 109
    iget-object p2, p3, Lcom/android/tools/r8/internal/D3;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    new-instance p3, Lcom/android/tools/r8/internal/iX;

    invoke-direct {p3, p4}, Lcom/android/tools/r8/internal/iX;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 111
    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 112
    :cond_16
    sget-boolean p1, Lcom/android/tools/r8/internal/l3;->f:Z

    if-nez p1, :cond_18

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_8

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_18
    :goto_8
    if-nez p1, :cond_1a

    .line 113
    iget-object p2, p0, Lcom/android/tools/r8/internal/l3;->d:Lcom/android/tools/r8/internal/Et;

    if-nez p2, :cond_19

    goto :goto_9

    :cond_19
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1a
    :goto_9
    if-nez p1, :cond_1c

    .line 114
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    instance-of p1, p3, Lcom/android/tools/r8/internal/P60;

    if-eqz p1, :cond_1c

    .line 116
    iget-object p1, p0, Lcom/android/tools/r8/internal/l3;->e:Lcom/android/tools/r8/internal/D3;

    if-nez p1, :cond_1b

    goto :goto_a

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1c
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/graph/c4;Ljava/util/Set;)V
    .locals 6

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/G3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/l3;->c:Lcom/android/tools/r8/internal/p3;

    .line 25
    iget-object v3, v2, Lcom/android/tools/r8/internal/p3;->h:Lcom/android/tools/r8/internal/Mw;

    .line 26
    iget-object v2, v2, Lcom/android/tools/r8/internal/p3;->j:Lcom/android/tools/r8/internal/zX;

    .line 27
    invoke-direct {v0, v1, p1, v3, v2}, Lcom/android/tools/r8/internal/G3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/Mw;Lcom/android/tools/r8/internal/zX;)V

    .line 28
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/G3;->a(Ljava/util/Set;)V

    .line 29
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/G3;->b(Ljava/util/Set;)V

    .line 30
    new-instance v0, Lcom/android/tools/r8/internal/ux0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/ux0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/l3;->c:Lcom/android/tools/r8/internal/p3;

    .line 31
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Wj;->a(Ljava/util/Collection;)V

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/tools/r8/internal/wx0;->g:Lcom/android/tools/r8/internal/m80;

    .line 33
    iget-object v2, v2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 34
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 35
    iget-object v3, v0, Lcom/android/tools/r8/internal/wx0;->h:Lcom/android/tools/r8/internal/m80;

    .line 36
    iget-object v3, v3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 37
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v3, v2

    .line 38
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    iget-object v2, v0, Lcom/android/tools/r8/internal/wx0;->g:Lcom/android/tools/r8/internal/m80;

    iget-object v3, v0, Lcom/android/tools/r8/internal/wx0;->h:Lcom/android/tools/r8/internal/m80;

    const/4 v4, 0x2

    .line 40
    new-array v4, v4, [Ljava/lang/Iterable;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H5;

    .line 42
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_0
    monitor-enter p1

    .line 44
    :try_start_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/p3;->e:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 45
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v0, v0, Lcom/android/tools/r8/internal/wx0;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/p3;->a(Ljava/util/IdentityHashMap;)V

    .line 47
    iget-object p1, p0, Lcom/android/tools/r8/internal/l3;->d:Lcom/android/tools/r8/internal/Et;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Et;->a(Ljava/util/Set;)V

    return-void

    :catchall_0
    move-exception p2

    .line 48
    monitor-exit p1

    throw p2
.end method

.method public final a(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 129
    sget-boolean v1, Lcom/android/tools/r8/internal/l3;->f:Z

    if-nez v1, :cond_1

    iget-object v2, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    .line 130
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 131
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    if-nez v1, :cond_4

    .line 133
    iget-object v2, v0, Lcom/android/tools/r8/internal/l3;->e:Lcom/android/tools/r8/internal/D3;

    .line 134
    sget-boolean v3, Lcom/android/tools/r8/internal/D3;->d:Z

    if-nez v3, :cond_3

    .line 135
    iget-object v2, v2, Lcom/android/tools/r8/internal/D3;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 136
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 137
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    :cond_4
    :goto_1
    const-string v2, "Argument propagator"

    invoke-virtual {v9, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 139
    const-string v2, "Compute components"

    invoke-virtual {v9, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 140
    iget-object v2, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    .line 141
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v6

    .line 142
    new-instance v2, Lcom/android/tools/r8/internal/b80;

    iget-object v3, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3, v6}, Lcom/android/tools/r8/internal/b80;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 143
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/i6;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 144
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 145
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 146
    new-instance v2, Lcom/android/tools/r8/internal/ni1;

    invoke-direct {v2, v4}, Lcom/android/tools/r8/internal/ni1;-><init>(Ljava/util/Map;)V

    if-nez v1, :cond_6

    .line 147
    iget-object v1, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    .line 148
    iget-boolean v1, v1, Lcom/android/tools/r8/graph/y;->D:Z

    if-eqz v1, :cond_5

    goto :goto_2

    .line 149
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 150
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/l3;->c:Lcom/android/tools/r8/internal/p3;

    .line 151
    iget-object v3, v1, Lcom/android/tools/r8/internal/p3;->h:Lcom/android/tools/r8/internal/Mw;

    .line 152
    iget-object v15, v1, Lcom/android/tools/r8/internal/p3;->j:Lcom/android/tools/r8/internal/zX;

    .line 153
    iget-object v10, v1, Lcom/android/tools/r8/internal/p3;->k:Lcom/android/tools/r8/internal/aD;

    .line 154
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    new-instance v14, Lcom/android/tools/r8/internal/bD;

    new-instance v11, Ljava/util/HashMap;

    iget-object v12, v10, Lcom/android/tools/r8/internal/aD;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v12, Ljava/util/HashMap;

    iget-object v10, v10, Lcom/android/tools/r8/internal/aD;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v12, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v14, v11, v12}, Lcom/android/tools/r8/internal/bD;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;)V

    const/4 v13, 0x0

    .line 156
    iput-object v13, v1, Lcom/android/tools/r8/internal/p3;->k:Lcom/android/tools/r8/internal/aD;

    .line 157
    iget-object v1, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ$p;->r:Lcom/android/tools/r8/internal/s3;

    invoke-interface {v1, v15}, Lcom/android/tools/r8/internal/s3;->a(Lcom/android/tools/r8/internal/zX;)V

    .line 158
    iput-object v13, v0, Lcom/android/tools/r8/internal/l3;->c:Lcom/android/tools/r8/internal/p3;

    .line 159
    iget-object v1, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7, v1}, Lcom/android/tools/r8/internal/O60;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/O60;

    .line 160
    const-string v1, "Compute optimization info"

    invoke-virtual {v9, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 161
    new-instance v1, Lcom/android/tools/r8/internal/z3;

    iget-object v11, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    move-object v10, v1

    move-object/from16 v12, p1

    move-object v7, v13

    move-object v13, v6

    move-object/from16 v16, v14

    move-object v14, v3

    move-object/from16 v19, v15

    move-object/from16 v17, v5

    move-object/from16 v18, v2

    invoke-direct/range {v10 .. v18}, Lcom/android/tools/r8/internal/z3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/Mw;Lcom/android/tools/r8/internal/zX;Lcom/android/tools/r8/internal/bD;Ljava/util/ArrayList;Ljava/util/function/BiConsumer;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/l3;->b:Ljava/util/Set;

    .line 162
    invoke-virtual {v1, v2, v8, v9}, Lcom/android/tools/r8/internal/z3;->a(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 163
    iput-object v7, v0, Lcom/android/tools/r8/internal/l3;->b:Ljava/util/Set;

    .line 164
    new-instance v10, Lcom/android/tools/r8/internal/y3;

    iget-object v2, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    move-object v1, v10

    move-object v11, v3

    move-object/from16 v3, p1

    move-object v12, v4

    move-object v4, v11

    move-object v11, v5

    move-object/from16 v5, v19

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/y3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/Mw;Lcom/android/tools/r8/internal/zX;Lcom/android/tools/r8/internal/O60;)V

    .line 165
    const-string v1, "Set optimization info"

    invoke-virtual {v9, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 166
    invoke-virtual {v10, v8}, Lcom/android/tools/r8/internal/y3;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/O5;

    move-result-object v1

    .line 167
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 168
    sget-boolean v2, Lcom/android/tools/r8/internal/y3;->g:Z

    if-nez v2, :cond_8

    move-object/from16 v2, v19

    .line 169
    iget-object v2, v2, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    .line 170
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 171
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 172
    :cond_8
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 173
    const-string v2, "Compute unused arguments"

    invoke-virtual {v9, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 174
    iget-object v2, v0, Lcom/android/tools/r8/internal/l3;->d:Lcom/android/tools/r8/internal/Et;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Et;->a(Lcom/android/tools/r8/graph/O5;)V

    .line 175
    iput-object v7, v0, Lcom/android/tools/r8/internal/l3;->d:Lcom/android/tools/r8/internal/Et;

    .line 176
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 177
    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v1

    .line 178
    new-instance v2, Lcom/android/tools/r8/internal/C3;

    iget-object v3, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3, v13, v12}, Lcom/android/tools/r8/internal/C3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Ljava/util/IdentityHashMap;)V

    .line 179
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/P01;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/P01;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2, v11, v3, v8, v9}, Lcom/android/tools/r8/internal/C3;->a(Ljava/util/ArrayList;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/u3;

    move-result-object v2

    .line 180
    new-instance v3, Lcom/android/tools/r8/internal/x3;

    iget-object v4, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v0, Lcom/android/tools/r8/internal/l3;->e:Lcom/android/tools/r8/internal/D3;

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/x3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D3;)V

    .line 181
    const-string v5, "Enqueue methods for reprocessing"

    invoke-virtual {v9, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 182
    const-string v5, "Rewrite methods to reprocess"

    invoke-virtual {v9, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-object/from16 v5, p2

    move-object v6, v7

    .line 183
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/O60;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/O60;

    .line 184
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 185
    const-string v4, "Enqueue methods with non-trivial info"

    invoke-virtual {v9, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 186
    invoke-virtual {v3, v2, v5}, Lcom/android/tools/r8/internal/x3;->a(Lcom/android/tools/r8/internal/u3;Lcom/android/tools/r8/internal/O60;)V

    .line 187
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 188
    const-string v4, "Enqueue affected methods"

    invoke-virtual {v9, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    if-eqz v2, :cond_9

    .line 189
    invoke-virtual {v3, v2, v5, v8}, Lcom/android/tools/r8/internal/x3;->a(Lcom/android/tools/r8/internal/u3;Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;)V

    .line 190
    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 191
    const-string v4, "Eliminate dead field accesses"

    invoke-virtual {v9, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 192
    invoke-virtual {v3, v8}, Lcom/android/tools/r8/internal/x3;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 193
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 194
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 195
    iput-object v6, v0, Lcom/android/tools/r8/internal/l3;->e:Lcom/android/tools/r8/internal/D3;

    .line 196
    new-instance v3, Lcom/android/tools/r8/internal/n3;

    iget-object v4, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v3, v4, v2}, Lcom/android/tools/r8/internal/n3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/u3;)V

    .line 197
    invoke-virtual {v3, v1, v8, v9}, Lcom/android/tools/r8/internal/n3;->a(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 198
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 199
    iget-object v1, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/fi1;

    invoke-direct {v2, v5}, Lcom/android/tools/r8/internal/fi1;-><init>(Lcom/android/tools/r8/internal/O60;)V

    .line 200
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$p;->a()Lcom/android/tools/r8/internal/Nm;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 201
    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/Wr0;->a(Ljava/lang/Object;)V

    .line 202
    :cond_a
    iget-object v1, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    iget-object v1, v0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    .line 204
    iput-object v6, v1, Lcom/android/tools/r8/graph/y;->A:Lcom/android/tools/r8/internal/l3;

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/l3;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/J;->b()Z

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
    const-string v0, "Argument propagator"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 7
    const-string v0, "Initialize code scanner"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/D3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/D3;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/l3;->e:Lcom/android/tools/r8/internal/D3;

    .line 9
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/l3;->b:Ljava/util/Set;

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Et;

    iget-object v1, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Et;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/l3;->d:Lcom/android/tools/r8/internal/Et;

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/p3;

    iget-object v2, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/l3;->e:Lcom/android/tools/r8/internal/D3;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/tools/r8/internal/p3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Et;Lcom/android/tools/r8/internal/D3;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/l3;->c:Lcom/android/tools/r8/internal/p3;

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/b80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/b80;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/i6;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/android/tools/r8/internal/pi1;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/pi1;-><init>(Lcom/android/tools/r8/internal/l3;Lcom/android/tools/r8/graph/c4;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v0

    .line 18
    invoke-static {v1, v2, v0, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/l3;->c:Lcom/android/tools/r8/internal/p3;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/qi1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/qi1;-><init>(Lcom/android/tools/r8/internal/p3;)V

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ$p;->a()Lcom/android/tools/r8/internal/Nm;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 23
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Wr0;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
