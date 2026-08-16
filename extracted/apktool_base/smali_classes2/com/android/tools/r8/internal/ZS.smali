.class public Lcom/android/tools/r8/internal/ZS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)V
    .locals 4

    .line 194
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 195
    new-instance v2, Lu/P0;

    invoke-direct {v2}, Lu/P0;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 196
    sget-boolean v3, Lcom/android/tools/r8/internal/ZS;->a:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result v3

    if-nez v3, :cond_1

    .line 197
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i0;->B0()Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    instance-of v3, v3, Lcom/android/tools/r8/internal/iD;

    if-nez v3, :cond_1

    .line 199
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->h1:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 201
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 60
    new-instance v0, Lcom/android/tools/r8/internal/e41;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/e41;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/f41;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/f41;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/RR;)V

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/graph/H5;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    .line 65
    sget-boolean v4, Lcom/android/tools/r8/internal/WS;->o:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    instance-of v3, v3, Lcom/android/tools/r8/internal/TV;

    if-eqz v3, :cond_2

    move-object v3, v2

    goto/16 :goto_10

    .line 68
    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/fT;

    move-object/from16 v4, p1

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/android/tools/r8/internal/fT;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V

    .line 69
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->r0()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 70
    sget-boolean v4, Lcom/android/tools/r8/internal/fT;->o:Z

    if-nez v4, :cond_4

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object v5

    iget-object v3, v3, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    if-ne v5, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_4
    :goto_1
    new-instance v3, Lcom/android/tools/r8/internal/WS;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/WS;-><init>(Lcom/android/tools/r8/internal/WS;)V

    goto/16 :goto_10

    .line 72
    :cond_5
    iget-object v4, v3, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    instance-of v5, v4, Lcom/android/tools/r8/internal/xA;

    const/4 v7, 0x1

    if-nez v5, :cond_6

    .line 74
    instance-of v4, v4, Lcom/android/tools/r8/internal/cx0;

    if-eqz v4, :cond_c

    .line 75
    :cond_6
    iget-object v4, v3, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    iget-object v8, v3, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v4, v8, v5}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/proto/j;->a()Z

    move-result v5

    if-nez v5, :cond_12

    .line 78
    iget-object v5, v4, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 79
    iget-boolean v8, v5, Lcom/android/tools/r8/graph/proto/c;->d:Z

    if-eqz v8, :cond_7

    goto/16 :goto_6

    .line 80
    :cond_7
    sget-boolean v8, Lcom/android/tools/r8/internal/fT;->o:Z

    if-nez v8, :cond_9

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_2
    if-nez v8, :cond_b

    .line 81
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_b
    :goto_3
    iget-object v4, v3, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Hz;->e()Lcom/android/tools/r8/internal/cx0;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 83
    iget-object v5, v3, Lcom/android/tools/r8/internal/fT;->e:Lcom/android/tools/r8/graph/A2;

    .line 84
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/cx0;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 86
    iget-object v4, v4, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    .line 87
    iget-object v4, v4, Lcom/android/tools/r8/internal/nx0;->b:Lcom/android/tools/r8/internal/m6;

    .line 88
    invoke-interface {v4, v5}, Lcom/android/tools/r8/internal/j6;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_7

    .line 89
    :cond_c
    iget-object v4, v3, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    instance-of v4, v4, Lcom/android/tools/r8/internal/Aa0;

    if-eqz v4, :cond_11

    .line 91
    iget-object v4, v3, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    iget-object v8, v3, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v4, v8, v5}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v4

    .line 93
    sget-boolean v5, Lcom/android/tools/r8/internal/fT;->o:Z

    if-nez v5, :cond_e

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/proto/j;->a()Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_4

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    :goto_4
    if-nez v5, :cond_10

    .line 94
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_10
    :goto_5
    iget-object v4, v4, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 96
    iget-object v4, v4, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    .line 97
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    instance-of v4, v4, Lcom/android/tools/r8/graph/proto/f;

    xor-int/2addr v4, v7

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    goto :goto_7

    :cond_12
    :goto_6
    move v4, v7

    :goto_7
    const/4 v5, 0x0

    if-eqz v4, :cond_13

    .line 99
    invoke-static/range {p0 .. p0}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v3

    .line 100
    iput-boolean v7, v3, Lcom/android/tools/r8/internal/EW$a;->c:Z

    .line 101
    invoke-virtual {v1, v0, v3}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v3

    .line 102
    new-instance v4, Lcom/android/tools/r8/internal/QR;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/QR;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v4, v1, v3, v5}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)V

    .line 103
    new-instance v4, Lcom/android/tools/r8/internal/uB;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/uB;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 104
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v5

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/tools/r8/internal/lB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/WS;

    goto/16 :goto_10

    .line 105
    :cond_13
    sget-boolean v4, Lcom/android/tools/r8/internal/fT;->o:Z

    if-nez v4, :cond_15

    iget-boolean v8, v3, Lcom/android/tools/r8/internal/fT;->m:Z

    if-nez v8, :cond_14

    goto :goto_8

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :cond_15
    :goto_8
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/fT;->b(Lcom/android/tools/r8/internal/WS;)Lcom/android/tools/r8/internal/WS;

    move-result-object v8

    .line 107
    iget-boolean v9, v3, Lcom/android/tools/r8/internal/fT;->m:Z

    if-eqz v9, :cond_16

    .line 108
    invoke-static/range {p0 .. p0}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v3

    .line 109
    iput-boolean v7, v3, Lcom/android/tools/r8/internal/EW$a;->c:Z

    .line 110
    invoke-virtual {v1, v0, v3}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v3

    .line 111
    new-instance v4, Lcom/android/tools/r8/internal/QR;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/QR;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v4, v1, v3, v5}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)V

    .line 112
    new-instance v4, Lcom/android/tools/r8/internal/uB;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/uB;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 113
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v5

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/tools/r8/internal/lB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/WS;

    goto/16 :goto_10

    .line 114
    :cond_16
    invoke-virtual {v3, v8}, Lcom/android/tools/r8/internal/fT;->c(Lcom/android/tools/r8/internal/WS;)Lcom/android/tools/r8/internal/WS;

    move-result-object v5

    .line 115
    iget-object v8, v5, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    if-nez v8, :cond_17

    goto :goto_9

    .line 116
    :cond_17
    iget-object v9, v3, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    iget-object v10, v3, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v8, v9, v10}, Lcom/android/tools/r8/internal/VS;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/VS;

    move-result-object v8

    .line 117
    iget-object v9, v5, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    if-ne v8, v9, :cond_18

    goto :goto_9

    .line 118
    :cond_18
    new-instance v9, Lcom/android/tools/r8/internal/WS;

    iget-object v12, v5, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    iget-object v13, v5, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    iget v14, v5, Lcom/android/tools/r8/internal/WS;->i:I

    iget-object v15, v5, Lcom/android/tools/r8/internal/WS;->j:[B

    iget v10, v5, Lcom/android/tools/r8/internal/WS;->k:I

    iget-object v11, v5, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    iget-object v6, v5, Lcom/android/tools/r8/internal/WS;->e:Lcom/android/tools/r8/internal/uT;

    iget-boolean v7, v5, Lcom/android/tools/r8/internal/WS;->f:Z

    iget-object v5, v5, Lcom/android/tools/r8/internal/WS;->n:Lcom/android/tools/r8/internal/dH;

    move-object/from16 v18, v11

    move-object v11, v9

    move/from16 v16, v10

    move-object/from16 v17, v8

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v5

    invoke-direct/range {v11 .. v21}, Lcom/android/tools/r8/internal/WS;-><init>([Lcom/android/tools/r8/internal/YS;[Lcom/android/tools/r8/internal/SS;I[BILcom/android/tools/r8/internal/VS;Lcom/android/tools/r8/internal/QS;Lcom/android/tools/r8/internal/uT;ZLcom/android/tools/r8/internal/dH;)V

    move-object v5, v9

    .line 119
    :goto_9
    iget-object v6, v2, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    goto :goto_a

    :cond_19
    const/4 v6, 0x0

    :goto_a
    if-nez v6, :cond_1a

    goto :goto_d

    .line 120
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    instance-of v7, v6, Lcom/android/tools/r8/internal/xA;

    if-nez v7, :cond_1c

    .line 122
    instance-of v6, v6, Lcom/android/tools/r8/internal/cx0;

    if-eqz v6, :cond_1b

    goto :goto_b

    :cond_1b
    const/4 v7, 0x0

    goto :goto_c

    :cond_1c
    :goto_b
    const/4 v7, 0x1

    :goto_c
    if-nez v7, :cond_1f

    if-nez v4, :cond_1e

    .line 123
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/internal/WS;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_d

    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1e
    :goto_d
    const/4 v6, 0x0

    goto :goto_e

    .line 124
    :cond_1f
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/internal/WS;)Z

    move-result v6

    :goto_e
    if-eqz v6, :cond_20

    .line 125
    invoke-static/range {p0 .. p0}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v3

    invoke-virtual {v5, v1, v0, v3}, Lcom/android/tools/r8/internal/WS;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v3

    .line 126
    new-instance v5, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v5}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 127
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    .line 128
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v6

    invoke-virtual {v5, v0, v3, v6}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 129
    new-instance v5, Lcom/android/tools/r8/ir/optimize/F;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/ir/optimize/F;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 130
    new-instance v5, Lcom/android/tools/r8/internal/uB;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/uB;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 131
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v6

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v7

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/tools/r8/internal/lB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/WS;

    goto :goto_f

    :cond_20
    move-object v3, v5

    :goto_f
    if-nez v4, :cond_22

    .line 132
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i0;->r0()Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_10

    :cond_21
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 133
    :cond_22
    :goto_10
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/U30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 134
    invoke-virtual {v1, v3, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    :cond_23
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 135
    sget-boolean v2, Lcom/android/tools/r8/internal/ZS;->a:Z

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ$p;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v2, :cond_5

    .line 139
    iget-object v3, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 140
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    if-nez v2, :cond_6

    .line 142
    invoke-static/range {p0 .. p0}, Lcom/android/tools/r8/internal/ZS;->a(Lcom/android/tools/r8/graph/y;)V

    .line 143
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v3

    .line 144
    sget-boolean v4, Lcom/android/tools/r8/internal/nJ$p;->k1:Z

    if-nez v4, :cond_8

    .line 145
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ$p;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    .line 146
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 147
    :cond_8
    :goto_3
    iput v1, v3, Lcom/android/tools/r8/internal/nJ$p;->j1:I

    .line 148
    new-instance v3, Lcom/android/tools/r8/ir/optimize/F;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/ir/optimize/F;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    .line 150
    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 151
    instance-of v4, v4, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v4, :cond_9

    .line 152
    const-string v4, "CF"

    goto :goto_4

    :cond_9
    const-string v4, "DEX"

    .line 153
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LIR->IR->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 154
    new-instance v4, Lcom/android/tools/r8/internal/ue;

    new-instance v6, Lcom/android/tools/r8/internal/c2;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/c2;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v7, Lcom/android/tools/r8/internal/rh;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/rh;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v8, Lcom/android/tools/r8/internal/To0;

    invoke-direct {v8, v0}, Lcom/android/tools/r8/internal/To0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v9, Lcom/android/tools/r8/internal/G40;

    invoke-direct {v9, v0}, Lcom/android/tools/r8/internal/G40;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v10, Lcom/android/tools/r8/internal/xq0;

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v11

    .line 156
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 157
    new-instance v11, Lcom/android/tools/r8/naming/E;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/tools/r8/naming/E;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    .line 158
    :goto_5
    invoke-direct {v10, v0, v11}, Lcom/android/tools/r8/internal/xq0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/E;)V

    .line 159
    new-instance v11, Lcom/android/tools/r8/internal/wq;

    invoke-direct {v11, v0}, Lcom/android/tools/r8/internal/wq;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v12, Lcom/android/tools/r8/internal/vD;

    invoke-direct {v12, v0}, Lcom/android/tools/r8/internal/vD;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v13, Lcom/android/tools/r8/naming/N0;

    invoke-direct {v13, v0}, Lcom/android/tools/r8/naming/N0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v14, Lcom/android/tools/r8/internal/Zw;

    invoke-direct {v14, v0}, Lcom/android/tools/r8/internal/Zw;-><init>(Lcom/android/tools/r8/graph/y;)V

    const/16 v15, 0x9

    new-array v15, v15, [Lcom/android/tools/r8/internal/te;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/4 v6, 0x1

    aput-object v7, v15, v6

    const/4 v6, 0x2

    aput-object v8, v15, v6

    aput-object v9, v15, v1

    const/4 v1, 0x4

    aput-object v10, v15, v1

    const/4 v1, 0x5

    aput-object v11, v15, v1

    const/4 v1, 0x6

    aput-object v12, v15, v1

    const/4 v1, 0x7

    aput-object v13, v15, v1

    const/16 v1, 0x8

    aput-object v14, v15, v1

    invoke-direct {v4, v15}, Lcom/android/tools/r8/internal/ue;-><init>([Lcom/android/tools/r8/internal/te;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v6, Lcom/android/tools/r8/internal/j41;

    invoke-direct {v6, v3, v0, v4}, Lcom/android/tools/r8/internal/j41;-><init>(Lcom/android/tools/r8/ir/optimize/F;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ue;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v3

    move-object/from16 v4, p2

    .line 162
    invoke-static {v1, v6, v3, v4}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/u1;->b()V

    if-nez v2, :cond_c

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    instance-of v1, v1, Lcom/android/tools/r8/internal/TV;

    if-eqz v1, :cond_b

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hz;->c()Lcom/android/tools/r8/internal/TV;

    move-result-object v1

    .line 168
    iget-object v1, v1, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 169
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    if-ne v1, v0, :cond_b

    goto :goto_6

    .line 170
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    :goto_6
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Sr0;)V
    .locals 4

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/internal/ZS;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$p;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 36
    iget-object v1, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 37
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 39
    invoke-static {p0}, Lcom/android/tools/r8/internal/ZS;->a(Lcom/android/tools/r8/graph/y;)V

    .line 40
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    if-nez v0, :cond_8

    .line 41
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    :goto_3
    if-nez v0, :cond_a

    .line 42
    iget-object v2, p0, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    instance-of v2, v2, Lcom/android/tools/r8/internal/g3;

    if-nez v2, :cond_a

    .line 45
    iget-object v2, p0, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    instance-of v2, v2, Lcom/android/tools/r8/internal/ke;

    if-nez v2, :cond_a

    .line 48
    iget-object v2, p0, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 49
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hz;->j()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_4

    .line 50
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 51
    :cond_a
    :goto_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/graph/Eh;

    invoke-direct {v3}, Lcom/android/tools/r8/graph/Eh;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/R00;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/R00;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/TV;

    if-nez v0, :cond_c

    if-eqz v2, :cond_b

    goto :goto_5

    .line 52
    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_c
    :goto_5
    if-ne v1, v2, :cond_d

    .line 53
    iget-object v0, v2, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    instance-of v0, v0, Lcom/android/tools/r8/internal/g3;

    if-eqz v0, :cond_d

    return-void

    .line 56
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LIR->LIR@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 57
    invoke-static {p0, p2}, Lcom/android/tools/r8/internal/ZS;->b(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 59
    invoke-interface {p3}, Lcom/android/tools/r8/internal/Sr0;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ue;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/g41;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/g41;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v1, Lcom/android/tools/r8/internal/h41;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/h41;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ue;)V

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ue;Lcom/android/tools/r8/graph/H5;)V
    .locals 8

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/internal/ZS;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->r0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 18
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, v0

    .line 20
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/ue;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/o50;

    .line 21
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object p1

    .line 22
    new-instance v1, Lcom/android/tools/r8/internal/i60;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/i60;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 24
    invoke-static {p1, v0, v2, v1}, Lcom/android/tools/r8/internal/UA;->a(Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/bT;)Lcom/android/tools/r8/internal/WS;

    move-result-object p1

    .line 25
    invoke-virtual {p2, p1, p0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "Lcom/android/tools/r8/shaking/i;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    sget-boolean v1, Lcom/android/tools/r8/internal/ZS;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$p;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    .line 6
    sget-boolean v2, Lcom/android/tools/r8/internal/nJ$p;->k1:Z

    if-nez v2, :cond_5

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$p;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_5
    :goto_2
    iput v0, v1, Lcom/android/tools/r8/internal/nJ$p;->j1:I

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/ue;

    new-instance v2, Lcom/android/tools/r8/internal/sh;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/sh;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v3, Lcom/android/tools/r8/internal/tq0;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/tq0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v4, Lcom/android/tools/r8/naming/E;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/naming/E;-><init>(Lcom/android/tools/r8/graph/y;)V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/tools/r8/internal/te;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    aput-object v4, v5, v0

    invoke-direct {v1, v5}, Lcom/android/tools/r8/internal/ue;-><init>([Lcom/android/tools/r8/internal/te;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/c41;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/c41;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ue;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    .line 13
    invoke-static {v0, v2, v1, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u1;->b()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const-string v0, "Clear code rewritings"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/ke;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ke;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/VV;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/TV;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    .line 31
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/ir/optimize/F;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ue;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 171
    new-instance v0, Lcom/android/tools/r8/internal/b41;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/b41;-><init>(Lcom/android/tools/r8/ir/optimize/F;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ue;)V

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/ir/optimize/F;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ue;Lcom/android/tools/r8/graph/H5;)V
    .locals 10

    .line 172
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 173
    instance-of v0, v0, Lcom/android/tools/r8/internal/WS;

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    const-string v1, "LIR before output format"

    invoke-static {p3, v1, v0}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)V

    .line 175
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 176
    invoke-static {p1}, Lcom/android/tools/r8/internal/EW;->c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v1

    .line 177
    sget-boolean v9, Lcom/android/tools/r8/internal/ZS;->a:Z

    if-nez v9, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/fB;->d(Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 178
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    const-string v3, "IR from LIR"

    const-string v4, ""

    invoke-static {v1, v3, v4, v2}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, v1

    move-object v6, v0

    .line 180
    invoke-virtual/range {v2 .. v8}, Lcom/android/tools/r8/internal/ue;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/o50;

    move-result-object p2

    .line 181
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 182
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 184
    new-instance v2, Lcom/android/tools/r8/ir/optimize/z;

    invoke-direct {v2, p1, p3, v1}, Lcom/android/tools/r8/ir/optimize/z;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;)V

    .line 185
    invoke-virtual {v2}, Lcom/android/tools/r8/ir/optimize/z;->a()V

    .line 186
    :cond_3
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v2

    .line 187
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    .line 188
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    const-string v4, "IR before finalize"

    invoke-static {v1, v4, p2, v3}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object p2

    .line 189
    iget-object v3, v1, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    if-nez v9, :cond_5

    .line 190
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EW$a;->c()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 191
    :cond_5
    :goto_1
    invoke-virtual {v3, p1, p0}, Lcom/android/tools/r8/internal/EW;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/F;)Lcom/android/tools/r8/internal/lB;

    move-result-object p0

    .line 192
    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/android/tools/r8/internal/lB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;)Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p3, p0, p1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    .line 193
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    const-string p1, "Finalized output format"

    invoke-static {p3, p1, p0}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/i41;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/i41;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    invoke-static {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/ZS;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Sr0;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/RR;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/RR;-><init>(Lcom/android/tools/r8/graph/y;I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/d41;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/d41;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/RR;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v0

    .line 5
    invoke-static {v1, v2, v0, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u1;->b()V

    return-void
.end method
