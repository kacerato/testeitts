.class public final Lcom/android/tools/r8/internal/cD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/Set;

.field public final c:Lcom/android/tools/r8/internal/kB;

.field public final d:Lcom/android/tools/r8/internal/Mw;

.field public final e:Lcom/android/tools/r8/internal/zX;

.field public final f:Lcom/android/tools/r8/internal/bD;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/Mw;Lcom/android/tools/r8/internal/zX;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/bD;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/cD;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/cD;->c:Lcom/android/tools/r8/internal/kB;

    iput-object p4, p0, Lcom/android/tools/r8/internal/cD;->d:Lcom/android/tools/r8/internal/Mw;

    iput-object p5, p0, Lcom/android/tools/r8/internal/cD;->e:Lcom/android/tools/r8/internal/zX;

    iput-object p7, p0, Lcom/android/tools/r8/internal/cD;->f:Lcom/android/tools/r8/internal/bD;

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 37
    check-cast p0, Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Jx;Ljava/util/Deque;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Jx;->a(Ljava/util/Deque;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/cD;->c:Lcom/android/tools/r8/internal/kB;

    iget-object v3, p0, Lcom/android/tools/r8/internal/cD;->d:Lcom/android/tools/r8/internal/Mw;

    iget-object v4, p0, Lcom/android/tools/r8/internal/cD;->e:Lcom/android/tools/r8/internal/zX;

    iget-object v5, p0, Lcom/android/tools/r8/internal/cD;->f:Lcom/android/tools/r8/internal/bD;

    .line 29
    new-instance v6, Lcom/android/tools/r8/internal/Hx;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hx;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/Mw;Lcom/android/tools/r8/internal/zX;Lcom/android/tools/r8/internal/bD;)V

    .line 30
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Hx;->a()Lcom/android/tools/r8/internal/Hx;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hx;->b()Lcom/android/tools/r8/internal/Hx;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/android/tools/r8/internal/Gx;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Hx;->f:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hx;->g:Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/Gx;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 33
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/i6;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/android/tools/r8/internal/T61;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/T61;-><init>()V

    .line 35
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/android/tools/r8/internal/V61;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/V61;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 96
    new-instance v0, Lcom/android/tools/r8/internal/Z61;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Z61;-><init>(Lcom/android/tools/r8/internal/cD;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/android/tools/r8/internal/cD;->e:Lcom/android/tools/r8/internal/zX;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 100
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zX;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->d()Lcom/android/tools/r8/internal/mg;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 102
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/cD;->g:Z

    if-nez v1, :cond_2

    .line 103
    instance-of v1, v0, Lcom/android/tools/r8/internal/ng;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 105
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ng;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    iget-object v0, p0, Lcom/android/tools/r8/internal/cD;->e:Lcom/android/tools/r8/internal/zX;

    sget-object v1, Lcom/android/tools/r8/internal/s7;->a:Lcom/android/tools/r8/internal/s7;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)V

    return-void

    .line 108
    :cond_3
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/ng;->b:Z

    iget-object v2, v0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/ng;->a(Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    iget-object v0, p0, Lcom/android/tools/r8/internal/cD;->e:Lcom/android/tools/r8/internal/zX;

    sget-object v1, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)V

    return-void

    :cond_4
    const/4 v1, 0x0

    .line 110
    :goto_1
    iget-object v2, v0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 111
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 112
    iget-object v2, v0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Iw0;

    .line 113
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Iw0;->n()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 114
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 115
    sget-boolean v4, Lcom/android/tools/r8/internal/cD;->g:Z

    if-nez v4, :cond_a

    .line 116
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 117
    sget-object v5, Lcom/android/tools/r8/internal/fw0;->b:Lcom/android/tools/r8/internal/fw0;

    goto :goto_3

    .line 118
    :cond_5
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 119
    sget-object v5, Lcom/android/tools/r8/internal/gw0;->b:Lcom/android/tools/r8/internal/gw0;

    goto :goto_3

    .line 120
    :cond_6
    sget-boolean v5, Lcom/android/tools/r8/internal/Iw0;->a:Z

    if-nez v5, :cond_8

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 121
    :cond_8
    :goto_2
    sget-object v5, Lcom/android/tools/r8/internal/hw0;->b:Lcom/android/tools/r8/internal/hw0;

    .line 122
    :goto_3
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/internal/Iw0;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 123
    :cond_a
    :goto_4
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 124
    new-instance v2, Lcom/android/tools/r8/internal/ig;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    .line 125
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/ig;-><init>(Lcom/android/tools/r8/internal/p10;Ljava/util/Set;)V

    goto :goto_6

    .line 126
    :cond_b
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 127
    new-instance v2, Lcom/android/tools/r8/internal/lg;

    iget-object v3, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    .line 128
    iget-object v3, v3, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 129
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    sget-object v3, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    .line 131
    sget-boolean v4, Lcom/android/tools/r8/internal/xt;->a:Z

    .line 132
    sget-object v4, Lcom/android/tools/r8/internal/zt;->d:Lcom/android/tools/r8/internal/zt;

    .line 133
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/tools/r8/internal/lg;-><init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    goto :goto_6

    :cond_c
    if-nez v4, :cond_e

    .line 134
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_5

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 135
    :cond_e
    :goto_5
    new-instance v2, Lcom/android/tools/r8/internal/ug;

    iget-object v3, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    .line 136
    iget-object v3, v3, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 137
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/G1;->a()Lcom/android/tools/r8/internal/Im0;

    move-result-object v3

    .line 138
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/ug;-><init>(Lcom/android/tools/r8/internal/F1;Ljava/util/Set;)V

    .line 139
    :goto_6
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/ng;->a(ILcom/android/tools/r8/internal/Iw0;)V

    goto :goto_7

    .line 140
    :cond_f
    sget-boolean v3, Lcom/android/tools/r8/internal/cD;->g:Z

    if-nez v3, :cond_11

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v3

    if-nez v3, :cond_11

    .line 142
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yg;->v()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 143
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/yg;->c:Z

    if-nez v2, :cond_10

    goto :goto_7

    .line 144
    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_12
    :goto_8
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Gx;)V
    .locals 2

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 45
    new-instance v1, Lcom/android/tools/r8/internal/U61;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/U61;-><init>(Ljava/util/Deque;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Gx;->a(Ljava/util/function/Consumer;)V

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/cD;->a(Lcom/android/tools/r8/internal/Gx;Ljava/util/Deque;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Ljava/util/Deque;)V
    .locals 7

    .line 89
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->d()Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v5

    .line 90
    new-instance v0, Lcom/android/tools/r8/internal/X61;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/X61;-><init>(Lcom/android/tools/r8/internal/cD;Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/yg;Ljava/util/Deque;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Jx;->a(Ljava/util/function/BiPredicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Ljava/util/Deque;Lcom/android/tools/r8/internal/Jx;Ljava/util/Set;)V
    .locals 8

    .line 59
    sget-boolean v0, Lcom/android/tools/r8/internal/cD;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->g()Z

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

    .line 60
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Jx;->g()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 61
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 62
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 63
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 65
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    .line 66
    :goto_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 67
    invoke-static {v1}, Lcom/android/tools/r8/internal/ig;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/Q00;

    move-result-object v1

    goto :goto_4

    .line 68
    :cond_7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-static {v2, v1, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    .line 71
    sget v2, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v2, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    .line 72
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {v2, v1, v3}, Lcom/android/tools/r8/internal/lg;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)Lcom/android/tools/r8/internal/Q00;

    move-result-object v1

    goto :goto_4

    .line 73
    :cond_8
    sget-object v1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    .line 74
    :goto_4
    instance-of v2, v1, Lcom/android/tools/r8/internal/zv0;

    if-eqz v2, :cond_c

    if-nez v0, :cond_9

    .line 75
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    :cond_9
    iget-object p1, p4, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    .line 77
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/internal/Jx;

    if-eq p5, p2, :cond_a

    .line 78
    iget-object p5, p5, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p5, p4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 79
    :cond_b
    iget-object p1, p4, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 80
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    invoke-virtual {p4, p1}, Lcom/android/tools/r8/internal/Jx;->a(Lcom/android/tools/r8/internal/Iw0;)V

    .line 81
    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/Jx;->a(Ljava/util/Deque;)V

    return-void

    .line 82
    :cond_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 83
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/cD;->b(Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/yg;Ljava/util/Deque;Lcom/android/tools/r8/internal/Jx;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_f

    if-nez v0, :cond_e

    .line 84
    iget-object p1, p4, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    .line 85
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_6

    .line 86
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_6
    return-void

    .line 87
    :cond_f
    iget-object p1, p4, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    .line 88
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Gx;Ljava/util/Deque;)V
    .locals 2

    .line 47
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 48
    invoke-interface {p2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Jx;

    .line 49
    sget-boolean v1, Lcom/android/tools/r8/internal/Jx;->d:Z

    if-nez v1, :cond_2

    .line 50
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/Jx;->c:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 52
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/Jx;->c:Z

    .line 53
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jx;->d()Lcom/android/tools/r8/internal/Iw0;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jx;->d()Lcom/android/tools/r8/internal/Iw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Iw0;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jx;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/cD;->b(Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Ljava/util/Deque;)V

    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/cD;->a(Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Ljava/util/Deque;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ix;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ix;->e:Lcom/android/tools/r8/graph/F5;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ix;->f:Lcom/android/tools/r8/internal/Iw0;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/cD;->d:Lcom/android/tools/r8/internal/Mw;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->d()Lcom/android/tools/r8/internal/Q00;

    move-result-object v2

    .line 6
    iget-object v1, v1, Lcom/android/tools/r8/internal/Mw;->a:Lcom/android/tools/r8/internal/e80;

    .line 7
    sget-object v3, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    .line 8
    new-instance v4, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v4, v3, v0}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 9
    iget-object v1, v1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/tools/r8/internal/Q00;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, v1, Lcom/android/tools/r8/internal/Mw;->a:Lcom/android/tools/r8/internal/e80;

    .line 15
    iget-object v1, v1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 16
    sget-object v2, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    .line 17
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v2, v0}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 18
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/tools/r8/internal/Iw0;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;

    move-result-object v1

    .line 23
    :goto_0
    sget-boolean v0, Lcom/android/tools/r8/internal/cD;->g:Z

    if-nez v0, :cond_4

    .line 24
    instance-of v0, p1, Lcom/android/tools/r8/internal/zv0;

    if-nez v0, :cond_4

    .line 25
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/internal/Iw0;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Expected current state to be >= previous state"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2

    .line 145
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Gx;

    .line 146
    new-instance v1, Lcom/android/tools/r8/internal/a71;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/a71;-><init>(Lcom/android/tools/r8/internal/cD;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Gx;->b(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 38
    new-instance v0, Lcom/android/tools/r8/internal/Y61;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Y61;-><init>(Lcom/android/tools/r8/internal/cD;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    .line 39
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    .line 40
    invoke-static {p1, v0, v1, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 41
    new-instance v0, Lcom/android/tools/r8/internal/W61;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/W61;-><init>(Lcom/android/tools/r8/internal/cD;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    .line 42
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    .line 43
    invoke-static {p1, v0, v1, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Tr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    .line 94
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/b71;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/b71;-><init>(Lcom/android/tools/r8/internal/cD;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    .line 95
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/yg;Ljava/util/Deque;Lcom/android/tools/r8/internal/Jx;Ljava/util/Set;)Z
    .locals 0

    .line 91
    invoke-virtual/range {p0 .. p6}, Lcom/android/tools/r8/internal/cD;->b(Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/yg;Ljava/util/Deque;Lcom/android/tools/r8/internal/Jx;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Ljava/util/Deque;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/cD;->g:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p2, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/c71;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/c71;-><init>(Lcom/android/tools/r8/internal/cD;Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Ljava/util/Deque;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Jx;->a(Ljava/util/function/BiConsumer;)V

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->c()V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/yg;Ljava/util/Deque;Lcom/android/tools/r8/internal/Jx;Ljava/util/Set;)Z
    .locals 9

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    instance-of v0, p3, Lcom/android/tools/r8/internal/ig;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Iw0;->g()Lcom/android/tools/r8/internal/xg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xg;->A()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {v1, v0, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    .line 15
    instance-of v1, p3, Lcom/android/tools/r8/internal/lg;

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Iw0;->b()Lcom/android/tools/r8/internal/lg;

    move-result-object p3

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/lg;

    .line 18
    iget-object v2, p3, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    .line 19
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/yg;->p()Ljava/util/Set;

    move-result-object p3

    invoke-direct {v1, v2, v0, p3}, Lcom/android/tools/r8/internal/lg;-><init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    :goto_0
    move-object p3, v1

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Iw0;->f()Lcom/android/tools/r8/internal/wg;

    move-result-object p3

    .line 21
    new-instance v1, Lcom/android/tools/r8/internal/wg;

    .line 22
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/yg;->p()Ljava/util/Set;

    move-result-object p3

    .line 23
    invoke-direct {v1, v0, p3}, Lcom/android/tools/r8/internal/wg;-><init>(Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    goto :goto_0

    .line 24
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/android/tools/r8/internal/cD;->g:Z

    if-nez v0, :cond_4

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/Jx;->g()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_4
    :goto_2
    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :cond_5
    :goto_3
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/r;

    .line 26
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v1

    if-nez v1, :cond_6

    move-object v1, p1

    goto :goto_6

    .line 27
    :cond_6
    invoke-interface {v0}, Lcom/android/tools/r8/internal/r;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 28
    sget-boolean v1, Lcom/android/tools/r8/internal/Px;->a:Z

    if-nez v1, :cond_8

    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 29
    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->n()Z

    move-result v1

    if-nez v1, :cond_8

    .line 30
    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    .line 31
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_8
    :goto_4
    new-instance v1, Lcom/android/tools/r8/internal/Lx;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/Lx;-><init>(Lcom/android/tools/r8/internal/r;Lcom/android/tools/r8/internal/Gx;)V

    goto :goto_6

    .line 33
    :cond_9
    sget-boolean v1, Lcom/android/tools/r8/internal/Px;->a:Z

    if-nez v1, :cond_b

    invoke-interface {v0}, Lcom/android/tools/r8/internal/r;->z()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->t()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_b
    :goto_5
    new-instance v1, Lcom/android/tools/r8/internal/Mx;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Mx;-><init>()V

    .line 35
    :goto_6
    iget-object v2, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    .line 36
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 37
    invoke-interface {v0, v2, v1, p3, v3}, Lcom/android/tools/r8/internal/r;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;Lcom/android/tools/r8/internal/yg;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Iw0;->n()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_9

    .line 39
    :cond_c
    instance-of v2, v1, Lcom/android/tools/r8/internal/zv0;

    if-eqz v2, :cond_d

    .line 40
    sget-object v0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    invoke-virtual {p5, v0}, Lcom/android/tools/r8/internal/Jx;->a(Lcom/android/tools/r8/internal/Iw0;)V

    .line 41
    invoke-virtual {p5, p4}, Lcom/android/tools/r8/internal/Jx;->a(Ljava/util/Deque;)V

    goto :goto_9

    .line 42
    :cond_d
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v3

    .line 43
    invoke-interface {v0}, Lcom/android/tools/r8/internal/r;->z()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    :goto_7
    move-object v4, v0

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    .line 44
    :goto_8
    iget-object v2, p0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/d71;

    invoke-direct {v0, p5, p4}, Lcom/android/tools/r8/internal/d71;-><init>(Lcom/android/tools/r8/internal/Jx;Ljava/util/Deque;)V

    .line 45
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/Jx;->d()Lcom/android/tools/r8/internal/Iw0;

    move-result-object v8

    .line 46
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 47
    sget-object v6, Lcom/android/tools/r8/internal/Bo0;->a:Lcom/android/tools/r8/internal/zo0;

    move-object v1, v8

    move-object v7, v0

    .line 48
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v8}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/internal/Iw0;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 50
    invoke-virtual {p5, v1}, Lcom/android/tools/r8/internal/Jx;->a(Lcom/android/tools/r8/internal/Iw0;)V

    .line 51
    invoke-interface {v0}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 52
    :cond_f
    :goto_9
    sget-boolean v0, Lcom/android/tools/r8/internal/cD;->g:Z

    .line 53
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/Jx;->g()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 54
    iget-object p1, p5, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/Jx;

    if-eq p3, p2, :cond_10

    .line 55
    iget-object p3, p3, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p5}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 56
    :cond_11
    iget-object p1, p5, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    const/4 p1, 0x1

    return p1

    :cond_12
    if-nez v0, :cond_5

    .line 57
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/Jx;->d()Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/Jx;->d()Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->w()Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_3

    .line 58
    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method
