.class public final Lcom/android/tools/r8/internal/qx0;
.super Lcom/android/tools/r8/internal/CW;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final g:Lcom/android/tools/r8/graph/y;

.field public final h:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/zX;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/CW;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/zX;)V

    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/qx0;->h:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/px0;)V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/tools/r8/internal/jr1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/jr1;-><init>(Lcom/android/tools/r8/internal/qx0;Lcom/android/tools/r8/internal/px0;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    sget-object p2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/px0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/CW;->f:Lcom/android/tools/r8/internal/zX;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zX;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/internal/px0;->a:Lcom/android/tools/r8/internal/AX;

    sget-object p2, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)V

    return-void

    .line 14
    :cond_1
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->d()Lcom/android/tools/r8/internal/mg;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of v1, v0, Lcom/android/tools/r8/internal/ng;

    if-eqz v1, :cond_2

    :goto_0
    return-void

    .line 17
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xX;->j()Lcom/android/tools/r8/internal/sg;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/kr1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/tools/r8/internal/kr1;-><init>(Lcom/android/tools/r8/internal/qx0;Lcom/android/tools/r8/internal/px0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/sg;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/px0;Lcom/android/tools/r8/graph/H5;)V
    .locals 10

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object p1, p0, Lcom/android/tools/r8/internal/CW;->f:Lcom/android/tools/r8/internal/zX;

    .line 50
    iget-object p1, p1, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 52
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/wX;

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/CW;->f:Lcom/android/tools/r8/internal/zX;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zX;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_8

    .line 58
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/qx0;->i:Z

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 59
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/android/tools/r8/internal/px0;->e:Z

    if-nez v0, :cond_5

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 62
    :cond_5
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/px0;->a:Lcom/android/tools/r8/internal/AX;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yX;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->a()Lcom/android/tools/r8/internal/wX;

    move-result-object v0

    .line 67
    iget-object v1, p1, Lcom/android/tools/r8/internal/px0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 68
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v1

    .line 69
    iget-object v2, p1, Lcom/android/tools/r8/internal/px0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/AX;

    .line 70
    iget-object v4, p1, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v5

    .line 73
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/yX;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;

    move-result-object v3

    .line 74
    sget-object v5, Lcom/android/tools/r8/internal/Bo0;->a:Lcom/android/tools/r8/internal/zo0;

    .line 75
    invoke-interface {v0, v4, v1, v3, v5}, Lcom/android/tools/r8/internal/wX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/wX;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/wX;

    move-result-object v0

    goto :goto_2

    .line 76
    :cond_6
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 77
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object v1

    .line 78
    iget-object v2, v1, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    const/4 v3, 0x0

    .line 79
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Iw0;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    instance-of v4, v2, Lcom/android/tools/r8/internal/wg;

    if-eqz v4, :cond_10

    .line 82
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Iw0;->f()Lcom/android/tools/r8/internal/wg;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/wg;->z()Lcom/android/tools/r8/internal/xt;

    move-result-object v4

    .line 84
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result v5

    if-nez v5, :cond_7

    move-object p1, v4

    goto/16 :goto_4

    .line 85
    :cond_7
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v5

    .line 86
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    .line 87
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    iget-object v8, p1, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v8, v8, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-static {v7, v9, v8}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    .line 89
    iget-object v8, p1, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v8, v8, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v7, v8}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 90
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    .line 91
    sget-boolean v5, Lcom/android/tools/r8/internal/px0;->e:Z

    if-nez v5, :cond_e

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 92
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    .line 93
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 94
    :cond_9
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v5

    if-nez v5, :cond_a

    .line 95
    sget-boolean p1, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object p1, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    goto :goto_4

    .line 96
    :cond_a
    sget-boolean v6, Lcom/android/tools/r8/internal/px0;->e:Z

    if-nez v6, :cond_c

    iget-object v6, p1, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v6, v6, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v7, v6}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_3

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 97
    :cond_c
    :goto_3
    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 98
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    .line 99
    new-instance v5, Lcom/android/tools/r8/internal/kv;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    move-object p1, v5

    goto :goto_4

    .line 100
    :cond_d
    iget-object p1, p1, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 101
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v5

    .line 102
    invoke-static {p1, v7, v5}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    .line 103
    :cond_e
    :goto_4
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 104
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 105
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    goto :goto_5

    .line 106
    :cond_f
    new-instance v4, Lcom/android/tools/r8/internal/wg;

    .line 107
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yg;->p()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v4, p1, v2}, Lcom/android/tools/r8/internal/wg;-><init>(Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    move-object p1, v4

    .line 108
    :goto_5
    invoke-virtual {v1, v3, p1}, Lcom/android/tools/r8/internal/ng;->a(ILcom/android/tools/r8/internal/Iw0;)V

    goto :goto_6

    .line 109
    :cond_10
    sget-boolean p1, Lcom/android/tools/r8/internal/px0;->e:Z

    if-nez p1, :cond_12

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result p1

    if-nez p1, :cond_12

    .line 110
    instance-of p1, v2, Lcom/android/tools/r8/internal/zv0;

    if-eqz p1, :cond_11

    goto :goto_6

    .line 111
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 112
    :cond_12
    :goto_6
    sget-boolean p1, Lcom/android/tools/r8/internal/qx0;->i:Z

    if-nez p1, :cond_14

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->e()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->d()Lcom/android/tools/r8/internal/mg;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    instance-of p1, p1, Lcom/android/tools/r8/internal/ng;

    if-eqz p1, :cond_13

    goto :goto_7

    .line 114
    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 115
    :cond_14
    :goto_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/CW;->f:Lcom/android/tools/r8/internal/zX;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)V

    :cond_15
    :goto_8
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/px0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/internal/pg;)V
    .locals 3

    .line 19
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zt;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/internal/px0;->a:Lcom/android/tools/r8/internal/AX;

    iget-object p3, p0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p2

    .line 23
    invoke-virtual {p1, p3, p2, p5}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)V

    return-void

    .line 24
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 27
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, p3, :cond_5

    .line 28
    :goto_0
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 32
    sget-boolean v1, Lcom/android/tools/r8/internal/qx0;->i:Z

    if-nez v1, :cond_3

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zt;->i()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 33
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_3
    :goto_1
    invoke-virtual {p1, v0, p2, p5}, Lcom/android/tools/r8/internal/px0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)V

    return-void

    .line 36
    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/internal/px0;->a:Lcom/android/tools/r8/internal/AX;

    iget-object p3, p0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p2

    .line 39
    invoke-virtual {p1, p3, p2, p5}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)V

    return-void

    .line 40
    :cond_5
    sget-boolean v1, Lcom/android/tools/r8/internal/qx0;->i:Z

    if-nez v1, :cond_7

    .line 41
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    iget-object v1, p0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 42
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    iget-object v1, p0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 43
    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_2

    .line 44
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_7
    :goto_2
    invoke-virtual {p1, p4, p2, p5}, Lcom/android/tools/r8/internal/px0;->a(Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/pg;)V

    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/Wj;->a(Ljava/util/Collection;)V

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/qx0;->i:Z

    if-nez v0, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 4
    sget-boolean v1, Lcom/android/tools/r8/internal/qx0;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Wj;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/internal/qx0;->i:Z

    if-nez p1, :cond_4

    if-nez p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/internal/qx0;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public final j(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qx0;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/px0;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/qx0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/px0;)V

    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/qx0;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qx0;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/qx0;->m(Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final m(Lcom/android/tools/r8/graph/H2;)V
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/px0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/px0;-><init>(Lcom/android/tools/r8/internal/qx0;Lcom/android/tools/r8/graph/H2;)V

    new-instance v1, Lcom/android/tools/r8/internal/lr1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/tools/r8/internal/lr1;-><init>(Lcom/android/tools/r8/internal/qx0;Lcom/android/tools/r8/internal/px0;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    sget-boolean v1, Lcom/android/tools/r8/internal/qx0;->i:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/px0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    iget-object v4, v0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    sget-boolean v4, Lcom/android/tools/r8/internal/px0;->e:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v1, v4}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/qx0;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
