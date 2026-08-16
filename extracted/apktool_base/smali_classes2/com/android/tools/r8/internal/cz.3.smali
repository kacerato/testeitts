.class public Lcom/android/tools/r8/internal/cz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/Hb0;

.field public final c:Lcom/android/tools/r8/internal/Ib0;

.field public final d:Lcom/android/tools/r8/internal/La0;

.field public final e:Lcom/android/tools/r8/internal/pu0;

.field public final f:Lcom/android/tools/r8/internal/de;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hb0;Lcom/android/tools/r8/internal/La0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/cz;->b:Lcom/android/tools/r8/internal/Hb0;

    new-instance p2, Lcom/android/tools/r8/internal/Ib0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/Ib0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/cz;->c:Lcom/android/tools/r8/internal/Ib0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/cz;->e:Lcom/android/tools/r8/internal/pu0;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/cz;->f:Lcom/android/tools/r8/internal/de;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/La0;)Lcom/android/tools/r8/internal/VJ;
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 150
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/internal/VJ;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/kR;)V
    .locals 0

    .line 148
    sget-boolean p0, Lcom/android/tools/r8/internal/cz;->g:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 144
    iget-object v0, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v2, v1, Lcom/android/tools/r8/internal/La0;->D:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->y:Lcom/android/tools/r8/graph/L2;

    .line 145
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 146
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 12

    .line 60
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 61
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v1

    .line 62
    :cond_0
    iget-object v2, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 63
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 64
    iget-object v2, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    iput-object v2, v1, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 65
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    .line 66
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 68
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 69
    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v5

    .line 70
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 71
    iget-object v9, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    .line 72
    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/La0;->b(Lcom/android/tools/r8/graph/A2;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    .line 73
    :cond_3
    sget-boolean v9, Lcom/android/tools/r8/internal/cz;->g:Z

    if-nez v9, :cond_5

    invoke-virtual {v8, v6}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    if-ne v8, v9, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 74
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v8, v8, Lcom/android/tools/r8/internal/La0;->u:Lcom/android/tools/r8/internal/Ka0;

    .line 75
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/VJ;->z2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    .line 76
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    .line 78
    invoke-interface {v9}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v9, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 79
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    instance-of v10, v10, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v10, :cond_7

    .line 81
    iget-object v9, v9, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 82
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v9

    .line 83
    iget-object v8, v8, Lcom/android/tools/r8/internal/Ka0;->f:Lcom/android/tools/r8/graph/l1;

    if-ne v9, v8, :cond_7

    .line 84
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    .line 86
    :cond_6
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/shaking/i;

    iget-object v9, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8, v5, v9}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    move-object v5, v7

    :goto_3
    if-nez v5, :cond_8

    goto/16 :goto_0

    .line 88
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    new-array v6, v6, [Lcom/android/tools/r8/graph/M2;

    .line 89
    iget-object v9, v8, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 90
    invoke-virtual {v8, v9, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    iget-object v9, v8, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v8, v5, v6, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 91
    invoke-interface {p1, v6}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v8

    sget-boolean v9, Lcom/android/tools/r8/graph/H0;->e:Z

    if-eqz v8, :cond_9

    .line 92
    invoke-interface {v8}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v8

    goto :goto_4

    :cond_9
    move-object v8, v7

    :goto_4
    if-eqz v8, :cond_1

    .line 93
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v9

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v10

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/j;

    .line 95
    invoke-static {v8, v9, v10, p1, v11}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v8

    .line 96
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v8

    if-eqz v8, :cond_a

    goto/16 :goto_0

    .line 97
    :cond_a
    sget-boolean v8, Lcom/android/tools/r8/internal/tZ;->m:Z

    .line 98
    new-instance v8, Lcom/android/tools/r8/internal/sZ;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/sZ;-><init>()V

    .line 99
    iput-object v5, v8, Lcom/android/tools/r8/internal/sZ;->d:Lcom/android/tools/r8/graph/M2;

    .line 100
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v9

    .line 101
    invoke-static {v5, v9, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    .line 102
    invoke-interface {p2, v5, v7}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 103
    iput-object v5, v8, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 104
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    .line 105
    iput-object v5, v8, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 106
    new-instance v5, Lcom/android/tools/r8/internal/tZ;

    iget-object v9, v8, Lcom/android/tools/r8/internal/sZ;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v10, v8, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v5, v9, v10}, Lcom/android/tools/r8/internal/tZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    .line 107
    iget-object v8, v8, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v8, :cond_b

    .line 108
    invoke-virtual {v5, v8}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 109
    :cond_b
    invoke-interface {v3, v5, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 110
    sget-boolean v8, Lcom/android/tools/r8/internal/QJ;->p:Z

    .line 111
    new-instance v8, Lcom/android/tools/r8/internal/PJ;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/PJ;-><init>()V

    .line 112
    iput-object v6, v8, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 113
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/PJ;

    .line 114
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    .line 115
    iput-object v4, v5, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 116
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/PJ;->c()Lcom/android/tools/r8/internal/QJ;

    move-result-object v4

    .line 117
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 118
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    .line 119
    invoke-interface {v3, p2, v1, v5, v7}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    .line 121
    invoke-interface {v5, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 122
    new-instance v4, Lcom/android/tools/r8/internal/b81;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/b81;-><init>(Lcom/android/tools/r8/internal/W5;)V

    .line 123
    invoke-static {v1, v4}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 124
    sget-boolean v4, Lcom/android/tools/r8/internal/cz;->g:Z

    if-nez v4, :cond_d

    if-eqz v3, :cond_c

    goto :goto_5

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 125
    :cond_d
    :goto_5
    iget-object v3, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    iput-object v3, v1, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    move-object v3, v5

    goto/16 :goto_0

    .line 126
    :cond_e
    invoke-interface {v3, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 127
    :cond_f
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 128
    sget-boolean v0, Lcom/android/tools/r8/internal/cz;->g:Z

    if-nez v0, :cond_11

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_6

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V
    .locals 7

    .line 2
    sget-object v2, Lcom/android/tools/r8/internal/n40;->b:Lcom/android/tools/r8/internal/m40;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-static {v0}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v5

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    move-object v0, p1

    move-object v1, p3

    move-object v3, p2

    move-object v4, p4

    .line 6
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/gX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 129
    const-string v0, "[Proto] Post optimize dynamic methods"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 130
    new-instance v0, Lcom/android/tools/r8/internal/Z71;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Z71;-><init>(Lcom/android/tools/r8/internal/cz;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/m80;->a(Lcom/android/tools/r8/internal/Yx;)Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/android/tools/r8/internal/eX;->c:Lcom/android/tools/r8/internal/eX;

    .line 132
    iget-object v2, p0, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    .line 133
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v2

    .line 134
    new-instance v3, Lcom/android/tools/r8/internal/d40;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/tools/r8/internal/d40;-><init>(Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/m80;)V

    .line 135
    new-instance v0, Lcom/android/tools/r8/internal/a81;

    invoke-direct {v0, p0, p1, v3}, Lcom/android/tools/r8/internal/a81;-><init>(Lcom/android/tools/r8/internal/cz;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/d40;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    .line 136
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p1

    .line 137
    invoke-virtual {v3, v0, p1, p2}, Lcom/android/tools/r8/internal/d40;->a(Lcom/android/tools/r8/internal/c40;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 138
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/A;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->F:Lcom/android/tools/r8/graph/A2;

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 15
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/H1;->t()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/H1;->v()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/H1;->x()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/H1;->y()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/H1;->z()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/H1;->B()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/H1;->E()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/H1;->F()Lcom/android/tools/r8/shaking/H1;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    new-instance v1, Lcom/android/tools/r8/internal/c81;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/c81;-><init>(Lcom/android/tools/r8/internal/cz;Lcom/android/tools/r8/shaking/C;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/La0;->a(Ljava/util/function/Consumer;)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->m:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 30
    iget-object v1, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->I:Lcom/android/tools/r8/graph/l1;

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->p0()Z

    .line 32
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/H2;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F5;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 33
    sget-object v2, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 34
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->J:Lcom/android/tools/r8/graph/l1;

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->p0()Z

    .line 39
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/H2;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 40
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p1

    .line 42
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/C;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    .line 48
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 49
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p1

    .line 50
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->t()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->v()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->x()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->y()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->z()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->B()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->E()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/H1;->F()Lcom/android/tools/r8/shaking/H1;

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/android/tools/r8/internal/cz;->a:Lcom/android/tools/r8/graph/y;

    .line 141
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->h()Lcom/android/tools/r8/shaking/i;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/cz;->d:Lcom/android/tools/r8/internal/La0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    new-instance v3, Lcom/android/tools/r8/internal/d81;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/tools/r8/internal/d81;-><init>(Lcom/android/tools/r8/internal/cz;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)V

    new-instance p1, Lcom/android/tools/r8/internal/e81;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/e81;-><init>()V

    .line 142
    iget-object v0, v1, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 143
    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/h;)V

    return-void
.end method
