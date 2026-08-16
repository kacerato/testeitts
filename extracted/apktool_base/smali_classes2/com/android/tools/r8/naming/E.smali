.class public final Lcom/android/tools/r8/naming/E;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/Y10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->E:Lcom/android/tools/r8/internal/Y10;

    iput-object p1, p0, Lcom/android/tools/r8/naming/E;->e:Lcom/android/tools/r8/internal/Y10;

    return-void
.end method

.method public static synthetic a([Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;J)Lcom/android/tools/r8/internal/xw0;
    .locals 0

    long-to-int p2, p2

    .line 176
    aget-object p0, p0, p2

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/vh;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 2
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/EE;
    .locals 11

    .line 72
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 74
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$d;->k:Lcom/android/tools/r8/graph/A2;

    if-ne v5, v6, :cond_1

    .line 77
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/tools/r8/naming/F;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 78
    iget-object v2, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v0, v2}, Lcom/android/tools/r8/naming/F;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/naming/E;->e:Lcom/android/tools/r8/internal/Y10;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Y10;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    goto/16 :goto_c

    .line 81
    :cond_2
    iget-object v2, p4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/tools/r8/internal/xw0;

    .line 83
    iget-object v6, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_e

    if-eqz v0, :cond_3

    goto/16 :goto_7

    .line 84
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_29

    .line 85
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 86
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v4

    if-nez v4, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p4, v7}, Lcom/android/tools/r8/naming/E;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/L2;)V

    goto/16 :goto_6

    .line 88
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 89
    iget-object v6, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 90
    invoke-static {v6, v4}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/J2;

    move-result-object v6

    if-nez v6, :cond_5

    .line 91
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p4, v4}, Lcom/android/tools/r8/naming/E;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/L2;)V

    goto/16 :goto_6

    .line 92
    :cond_5
    sget-boolean v4, Lcom/android/tools/r8/naming/E;->f:Z

    if-nez v4, :cond_7

    invoke-interface {p3}, Lcom/android/tools/r8/internal/AE;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v8

    if-ne v8, p4, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 93
    :cond_7
    :goto_2
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 94
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 95
    new-instance v8, Lcom/android/tools/r8/internal/uq;

    .line 96
    sget-object v9, Lcom/android/tools/r8/internal/wd;->f:Lcom/android/tools/r8/internal/wd;

    invoke-direct {v8, v0, v6, v9}, Lcom/android/tools/r8/internal/uq;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    .line 97
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 98
    aput-object v0, v5, v3

    .line 99
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    goto :goto_3

    :cond_8
    move-object v6, v0

    :goto_3
    if-eq v6, v0, :cond_b

    .line 101
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object p3

    .line 102
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 103
    invoke-interface {p3, v8}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p3

    if-nez v4, :cond_a

    .line 105
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-ne v0, p4, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 106
    :cond_a
    :goto_4
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_6

    .line 107
    :cond_b
    invoke-interface {p3, v8}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    if-nez v4, :cond_d

    .line 108
    invoke-interface {p3}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-ne v0, p4, :cond_c

    goto :goto_5

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 109
    :cond_d
    :goto_5
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 110
    :cond_e
    :goto_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 111
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v6

    invoke-static {p4, v0, v6}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/wB;

    move-result-object v0

    if-nez v0, :cond_f

    .line 112
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p0, v1, p1, p4, v7}, Lcom/android/tools/r8/naming/E;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/L2;)V

    return-object p3

    .line 113
    :cond_f
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/VJ;->v2()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 114
    iget-object v7, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    .line 115
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 116
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v8

    .line 117
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    iget-object v10, v7, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v10, v10, Lcom/android/tools/r8/graph/u1$d;->k:Lcom/android/tools/r8/graph/A2;

    if-ne v9, v10, :cond_13

    .line 118
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/tools/r8/naming/F;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 119
    iget-object v8, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v7, v8}, Lcom/android/tools/r8/naming/F;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 121
    :cond_10
    iget-object v6, p4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 122
    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_12

    .line 123
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 124
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v8

    if-nez v8, :cond_19

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->N()Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_a

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    const/4 v3, -0x1

    goto :goto_a

    .line 125
    :cond_13
    iget-object v7, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    if-ne v6, v7, :cond_15

    .line 126
    sget-boolean v6, Lcom/android/tools/r8/naming/E;->f:Z

    if-nez v6, :cond_19

    iget-object v6, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    .line 127
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 128
    iget-object v8, v6, Lcom/android/tools/r8/graph/G1;->b:Lcom/android/tools/r8/graph/A2;

    if-eq v7, v8, :cond_19

    iget-object v6, v6, Lcom/android/tools/r8/graph/G1;->c:Lcom/android/tools/r8/graph/A2;

    if-ne v7, v6, :cond_14

    goto :goto_a

    .line 129
    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 130
    :cond_15
    iget-object v3, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 131
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->v2:Lcom/android/tools/r8/graph/M2;

    if-ne v6, v3, :cond_18

    .line 132
    sget-boolean v3, Lcom/android/tools/r8/naming/E;->f:Z

    if-nez v3, :cond_17

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    iget-object v6, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 133
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->Z4:Lcom/android/tools/r8/graph/A1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/A1;->a:Lcom/android/tools/r8/graph/A2;

    if-ne v3, v6, :cond_16

    goto :goto_9

    .line 134
    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_17
    :goto_9
    const/4 v3, 0x2

    goto :goto_a

    :cond_18
    move v3, v4

    .line 135
    :cond_19
    :goto_a
    sget-boolean v6, Lcom/android/tools/r8/naming/E;->f:Z

    if-nez v6, :cond_1b

    if-ltz v3, :cond_1a

    goto :goto_b

    :cond_1a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 136
    :cond_1b
    :goto_b
    iget-object v7, p4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    .line 138
    iget-object v8, v7, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    instance-of v8, v8, Lcom/android/tools/r8/internal/uq;

    if-eqz v8, :cond_1c

    :goto_c
    return-object p3

    .line 140
    :cond_1c
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    .line 141
    new-instance v9, Lcom/android/tools/r8/internal/uq;

    .line 142
    iget-object v0, v0, Lcom/android/tools/r8/internal/wB;->a:Lcom/android/tools/r8/graph/J2;

    .line 143
    sget-object v10, Lcom/android/tools/r8/internal/wd;->f:Lcom/android/tools/r8/internal/wd;

    invoke-direct {v9, v8, v0, v10}, Lcom/android/tools/r8/internal/uq;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    .line 144
    aput-object v8, v5, v3

    .line 145
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v0

    if-ne v0, v4, :cond_20

    .line 146
    iget-object p1, v7, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-ne p2, v0, :cond_1f

    .line 148
    new-instance p2, Lcom/android/tools/r8/naming/m1;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/naming/m1;-><init>(Lcom/android/tools/r8/internal/vh;)V

    invoke-interface {p3, p2}, Lcom/android/tools/r8/internal/s70;->d(Ljava/util/function/Predicate;)V

    .line 149
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/zE;

    if-nez v6, :cond_1e

    if-ne p2, p1, :cond_1d

    goto :goto_d

    .line 150
    :cond_1d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 151
    :cond_1e
    :goto_d
    invoke-interface {p3, v9}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 152
    new-instance p1, Lcom/android/tools/r8/naming/n1;

    invoke-direct {p1, p4}, Lcom/android/tools/r8/naming/n1;-><init>(Lcom/android/tools/r8/internal/VJ;)V

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    goto/16 :goto_12

    .line 153
    :cond_1f
    iget-object p1, v7, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1, v9}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_12

    .line 154
    :cond_20
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    if-nez v6, :cond_22

    .line 155
    invoke-interface {p3}, Lcom/android/tools/r8/internal/AE;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-ne v0, p4, :cond_21

    goto :goto_e

    :cond_21
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 156
    :cond_22
    :goto_e
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 157
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    goto :goto_f

    :cond_23
    move-object p1, v0

    :goto_f
    if-eq p1, v0, :cond_26

    .line 159
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object p2

    .line 160
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 161
    invoke-interface {p2, v9}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p3

    if-nez v6, :cond_25

    .line 163
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    if-ne p1, p4, :cond_24

    goto :goto_10

    :cond_24
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 164
    :cond_25
    :goto_10
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_12

    .line 165
    :cond_26
    invoke-interface {p3, v9}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    if-nez v6, :cond_28

    .line 166
    invoke-interface {p3}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    if-ne p1, p4, :cond_27

    goto :goto_11

    :cond_27
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 167
    :cond_28
    :goto_11
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 168
    :cond_29
    :goto_12
    new-instance p1, Lcom/android/tools/r8/naming/o1;

    invoke-direct {p1}, Lcom/android/tools/r8/naming/o1;-><init>()V

    .line 169
    invoke-static {v5, p1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_2a

    return-object p3

    .line 170
    :cond_2a
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/naming/p1;

    invoke-direct {p2, v5}, Lcom/android/tools/r8/naming/p1;-><init>([Lcom/android/tools/r8/internal/xw0;)V

    .line 171
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/util/stream/Stream;Lcom/android/tools/r8/internal/Yo0;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 172
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/util/List;

    .line 173
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/NJ;->w2()Lcom/android/tools/r8/internal/kK;

    move-result-object v0

    iget-object v2, v1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    const/4 v5, 0x0

    .line 174
    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)Lcom/android/tools/r8/internal/NJ;

    move-result-object p1

    .line 175
    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Ljava/util/Set;)Lcom/android/tools/r8/internal/ve;
    .locals 9

    .line 17
    sget-object v0, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    .line 18
    iget-object v1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v2, 0x10

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 22
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    if-eqz p2, :cond_2

    .line 23
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 25
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 27
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->F1()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 28
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->T()Lcom/android/tools/r8/internal/ww;

    move-result-object v3

    .line 29
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ww;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    .line 30
    iget-object v5, p0, Lcom/android/tools/r8/naming/E;->e:Lcom/android/tools/r8/internal/Y10;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/Y10;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_4

    goto :goto_2

    .line 31
    :cond_4
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ww;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 32
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->N()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    .line 33
    :cond_5
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->L()Z

    move-result v7

    if-nez v7, :cond_6

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    move-object v7, v3

    check-cast v7, Lcom/android/tools/r8/internal/hw;

    .line 35
    invoke-virtual {p0, v4, v5, v7, v6}, Lcom/android/tools/r8/naming/E;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/L2;)V

    goto :goto_2

    .line 36
    :cond_6
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 37
    iget-object v7, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 38
    invoke-static {v7, v5}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/J2;

    move-result-object v7

    if-nez v7, :cond_7

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v7

    move-object v8, v3

    check-cast v8, Lcom/android/tools/r8/internal/hw;

    .line 40
    invoke-virtual {p0, v4, v7, v8, v5}, Lcom/android/tools/r8/naming/E;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/L2;)V

    goto :goto_2

    :cond_7
    move-object v6, v7

    :goto_2
    if-eqz v6, :cond_3

    .line 41
    sget-boolean v0, Lcom/android/tools/r8/naming/E;->f:Z

    if-nez v0, :cond_9

    invoke-interface {v2}, Lcom/android/tools/r8/internal/AE;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    if-ne v4, v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 43
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ww;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/tools/r8/internal/ww;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 44
    new-instance v5, Lcom/android/tools/r8/internal/uq;

    .line 45
    sget-object v7, Lcom/android/tools/r8/internal/wd;->f:Lcom/android/tools/r8/internal/wd;

    invoke-direct {v5, v4, v6, v7}, Lcom/android/tools/r8/internal/uq;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    .line 46
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ww;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 47
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ww;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    .line 48
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2, p1, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    goto :goto_4

    :cond_a
    move-object v7, v6

    :goto_4
    if-eq v7, v6, :cond_d

    .line 49
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 50
    invoke-interface {v2, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    if-nez v0, :cond_c

    .line 52
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    if-ne v5, v3, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_c
    :goto_5
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_7

    .line 54
    :cond_d
    invoke-interface {v2, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    if-nez v0, :cond_f

    .line 55
    invoke-interface {v2}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    if-ne v5, v3, :cond_e

    goto :goto_6

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_f
    :goto_6
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 57
    :goto_7
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ww;->e()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 58
    new-instance v0, Lcom/android/tools/r8/internal/No0;

    invoke-interface {v3}, Lcom/android/tools/r8/internal/ww;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Lcom/android/tools/r8/internal/No0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_9

    :cond_10
    if-nez v0, :cond_12

    .line 59
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ww;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_8

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 60
    :cond_12
    :goto_8
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ww;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v0

    .line 61
    new-instance v5, Lcom/android/tools/r8/internal/rE;

    .line 62
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ww;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    const/4 v6, 0x0

    .line 63
    invoke-direct {v5, v3, v0, v4, v6}, Lcom/android/tools/r8/internal/rE;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Z)V

    .line 64
    invoke-interface {v2, v5}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 65
    :goto_9
    sget-object v0, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    goto/16 :goto_1

    .line 66
    :cond_13
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    .line 68
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/tools/r8/naming/E;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/EE;

    move-result-object v2

    .line 69
    sget-object v0, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    goto/16 :goto_1

    :cond_14
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 3
    const-string v0, "IdentifierNameStringMarker"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 8
    sget-boolean v1, Lcom/android/tools/r8/naming/E;->f:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/naming/E;->e:Lcom/android/tools/r8/internal/Y10;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Y10;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/L2;

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 13
    invoke-static {v2, v1}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    new-instance v2, Lcom/android/tools/r8/graph/Q2;

    .line 15
    sget-object v3, Lcom/android/tools/r8/internal/wd;->f:Lcom/android/tools/r8/internal/wd;

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/graph/Q2;-><init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    .line 16
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/R2;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/L2;)V
    .locals 4

    .line 177
    sget-boolean v0, Lcom/android/tools/r8/naming/E;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 178
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/E;->e:Lcom/android/tools/r8/internal/Y10;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Y10;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return-void

    .line 180
    :cond_3
    iget-object p2, p2, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 181
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 182
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "field"

    goto :goto_2

    :cond_4
    const-string v0, "method"

    :goto_2
    if-nez p4, :cond_5

    .line 183
    const-string p4, "what identifier string flows to "

    goto :goto_3

    .line 184
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "\' refers to, which flows to "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 185
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot determine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " that is specified in -identifiernamestring rules. Thus, not all identifier strings flowing to that "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " are renamed, which can cause resolution failures at runtime."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p4

    const/4 v0, 0x1

    if-lt p4, v0, :cond_6

    .line 187
    new-instance p4, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v1, Lcom/android/tools/r8/position/TextPosition;

    .line 188
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p3

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, p3, v0}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    invoke-direct {p4, p1, p2, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    goto :goto_4

    .line 189
    :cond_6
    new-instance p4, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {p4, p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 190
    :goto_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/naming/q1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/q1;-><init>(Lcom/android/tools/r8/naming/E;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 70
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 p2, 0x10

    .line 71
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/naming/E;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/Set;)Lcom/android/tools/r8/internal/ve;

    move-result-object p1

    return-object p1
.end method
