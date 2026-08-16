.class public final Lcom/android/tools/r8/internal/eb0;
.super Lcom/android/tools/r8/internal/ZV;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/o40;

.field public static final synthetic d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    sput-object v0, Lcom/android/tools/r8/internal/eb0;->c:Lcom/android/tools/r8/internal/o40;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ZV;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Oy;)Ljava/lang/Boolean;
    .locals 0

    .line 184
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/EE;
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 26
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 27
    :cond_0
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v12

    .line 28
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 30
    :cond_1
    iget-object v0, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 31
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 32
    invoke-virtual {v0, v12}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v13

    if-nez v13, :cond_2

    goto/16 :goto_4

    .line 34
    :cond_2
    iget-object v0, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v11, v0, v9}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v14

    .line 35
    iget-object v0, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v13, v14}, Lcom/android/tools/r8/internal/G4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/F4;

    move-result-object v6

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 36
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/ZV;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/F4;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eqz v14, :cond_6

    .line 37
    invoke-interface {v14}, Lcom/android/tools/r8/graph/o0;->a0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    invoke-interface {v14}, Lcom/android/tools/r8/graph/o0;->O()Lcom/android/tools/r8/graph/G5;

    move-result-object v0

    .line 39
    iget-object v1, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v1

    goto :goto_0

    .line 42
    :cond_4
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v1

    .line 43
    :goto_0
    iget-object v2, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v0

    goto :goto_1

    .line 44
    :cond_5
    iget-object v0, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 45
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 46
    iget-object v0, v0, Lcom/android/tools/r8/shaking/l;->a:Ljava/util/IdentityHashMap;

    .line 47
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_6

    goto/16 :goto_4

    .line 48
    :cond_6
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 49
    iget-object v0, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 50
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 51
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/tools/r8/internal/G1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Hm0;

    move-result-object v0

    goto :goto_2

    .line 52
    :cond_7
    iget-object v0, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 53
    invoke-virtual {v13, v0, v11, v14}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->i()Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 55
    :goto_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v0

    .line 57
    iget-object v1, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, v9}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 58
    iget-object v1, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8, v11}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 61
    invoke-virtual {v11, v1}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/zE;)V

    .line 62
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    move-object/from16 v3, p3

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v11, v1}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    .line 64
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 65
    iget-object v1, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v10, v1, v9}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    goto :goto_3

    .line 66
    :cond_8
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v14, :cond_9

    .line 67
    iget-object v1, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 68
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 69
    invoke-interface {v10, v1, v8, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;)Z

    .line 70
    :cond_9
    :goto_3
    iget-object v1, v7, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 71
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    move-object/from16 v2, p4

    .line 72
    invoke-interface {v10, v8, v2, v0, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;[Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;

    move-result-object v0

    if-eqz v14, :cond_a

    .line 73
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object v1

    .line 74
    iget v2, v1, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit16 v2, v2, 0x100

    .line 75
    iput v2, v1, Lcom/android/tools/r8/internal/WY;->u:I

    :cond_a
    return-object v0

    :cond_b
    :goto_4
    return-object v10
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/Mo0;)Lcom/android/tools/r8/internal/EE;
    .locals 0

    .line 77
    invoke-virtual/range {p0 .. p5}, Lcom/android/tools/r8/internal/eb0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/hw;)Lcom/android/tools/r8/internal/EE;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/bE;)Lcom/android/tools/r8/internal/EE;
    .locals 0

    .line 76
    invoke-virtual/range {p0 .. p5}, Lcom/android/tools/r8/internal/eb0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/hw;)Lcom/android/tools/r8/internal/EE;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/hw;)Lcom/android/tools/r8/internal/EE;
    .locals 15

    move-object v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 78
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v11

    .line 79
    iget-object v1, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 80
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/D3;->l()Lcom/android/tools/r8/graph/D3$a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/w91;

    invoke-direct {v2, v11}, Lcom/android/tools/r8/internal/w91;-><init>(Lcom/android/tools/r8/graph/l1;)V

    .line 82
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 83
    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/graph/y;->a(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 84
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/fB;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    .line 86
    invoke-interface {v9, v0}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    return-object v9

    .line 87
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    iget-object v3, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_6

    .line 88
    :cond_1
    iget-object v2, v1, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {v2, v1}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v12

    .line 89
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/tools/r8/graph/g1;

    .line 90
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v1

    .line 91
    instance-of v14, v10, Lcom/android/tools/r8/internal/Mo0;

    if-eq v1, v14, :cond_2

    goto/16 :goto_6

    :cond_2
    if-eqz v14, :cond_3

    .line 92
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v1

    if-nez v1, :cond_3

    .line 93
    iget-object v1, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 94
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 95
    invoke-interface {v9, v1, v0, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;)Z

    return-object v9

    .line 96
    :cond_3
    invoke-interface {v12}, Lcom/android/tools/r8/graph/o0;->a0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    invoke-interface {v12}, Lcom/android/tools/r8/graph/o0;->O()Lcom/android/tools/r8/graph/G5;

    move-result-object v1

    .line 98
    iget-object v2, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v2

    goto :goto_0

    .line 101
    :cond_4
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v2

    .line 102
    :goto_0
    iget-object v3, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v1

    goto :goto_1

    .line 103
    :cond_5
    iget-object v1, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 104
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 105
    iget-object v1, v1, Lcom/android/tools/r8/shaking/l;->a:Ljava/util/IdentityHashMap;

    .line 106
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_6

    goto/16 :goto_6

    .line 107
    :cond_6
    iget-object v1, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 108
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object v7

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 111
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/ZV;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/F4;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_6

    .line 112
    :cond_7
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 113
    iget-object v1, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 114
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 115
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/tools/r8/internal/G1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Hm0;

    move-result-object v1

    goto/16 :goto_3

    .line 116
    :cond_8
    iget-object v1, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 117
    sget-boolean v2, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->c()V

    .line 118
    :cond_9
    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 119
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    .line 120
    iget-object v1, v1, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 121
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/o3;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 122
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/o3;->f()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2

    .line 123
    :cond_a
    instance-of v1, v12, Lcom/android/tools/r8/graph/F5;

    xor-int/2addr v2, v1

    :goto_2
    if-eqz v2, :cond_b

    .line 124
    iget-object v1, v13, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 125
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/vw;->f()Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 126
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v2

    if-nez v2, :cond_e

    .line 127
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    iget-object v3, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    .line 128
    sget-object v5, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    .line 129
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->X()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 131
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v3

    if-nez v3, :cond_e

    move-object v1, v2

    goto :goto_3

    .line 134
    :cond_b
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 135
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v1

    iget-object v2, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 136
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 137
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 138
    sget-boolean v2, Lcom/android/tools/r8/internal/eb0;->d:Z

    if-nez v2, :cond_e

    iget-object v3, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 139
    iget-object v4, v13, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 140
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/vw;->f()Lcom/android/tools/r8/internal/F1;

    move-result-object v4

    .line 141
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v5

    .line 142
    iget-object v6, v3, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 143
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v5

    if-nez v2, :cond_e

    .line 144
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v2

    if-nez v2, :cond_e

    .line 145
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/g1;->L0()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 146
    iget-object v2, v3, Lcom/android/tools/r8/graph/y;->u:Lcom/android/tools/r8/internal/H1;

    .line 147
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/l1;

    .line 148
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 149
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 150
    invoke-virtual {v2, v5, v4, v3}, Lcom/android/tools/r8/internal/H1;->b(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    .line 151
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3

    .line 152
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :cond_d
    iget-object v1, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 154
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 155
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/G1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Bm0;

    move-result-object v1

    .line 156
    :cond_e
    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 157
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 159
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object v2

    .line 160
    iget-object v2, v2, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    if-ne v2, v11, :cond_f

    goto/16 :goto_6

    .line 161
    :cond_f
    iget-object v2, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    .line 163
    iget-object v3, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0, v10}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 165
    invoke-static {v1}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 166
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    move-object/from16 v5, p2

    invoke-virtual {v4, v3, v5}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 167
    instance-of v3, v10, Lcom/android/tools/r8/internal/bE;

    if-eqz v3, :cond_10

    .line 168
    iget-object v3, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v9, v3, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    goto :goto_5

    .line 169
    :cond_10
    sget-boolean v2, Lcom/android/tools/r8/internal/eb0;->d:Z

    if-nez v2, :cond_12

    if-eqz v14, :cond_11

    goto :goto_4

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_12
    :goto_4
    iget-object v2, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 171
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 172
    invoke-interface {v9, v2, v0, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;)Z

    .line 173
    :goto_5
    iget-object v2, v8, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 174
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    move-object/from16 v3, p3

    .line 175
    invoke-interface {v9, v0, v3, v1, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;[Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/android/tools/r8/internal/eb0;->c:Lcom/android/tools/r8/internal/o40;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    monitor-enter v13

    .line 178
    :try_start_0
    iget-object v1, v13, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/KV;->a()Lcom/android/tools/r8/internal/KV;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/VY;

    .line 179
    iput-object v1, v13, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 180
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget v2, v1, Lcom/android/tools/r8/internal/VY;->b:I

    or-int/lit8 v2, v2, 0x4

    .line 182
    iput v2, v1, Lcom/android/tools/r8/internal/VY;->b:I

    return-object v0

    :catchall_0
    move-exception v0

    .line 183
    monitor-exit v13

    throw v0

    :cond_13
    :goto_6
    return-object v9
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/No0;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 195
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 196
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 199
    iget-object v1, v0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 200
    invoke-virtual {v1, v0, p3}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F0;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 202
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 203
    invoke-interface {p2, v0, p1, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;)Z

    return-void

    .line 204
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 205
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 206
    invoke-interface {p2, v0, p1, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/rE;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 186
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 190
    iget-object v1, v0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 191
    invoke-virtual {v1, v0, p3}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F0;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 192
    iget-object p3, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    return-void

    .line 193
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/N3;)V
    .locals 4

    .line 1
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/wI;->c()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/wI;->c()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    :goto_1
    return-void

    .line 10
    :cond_4
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-boolean v2, Lcom/android/tools/r8/internal/G1;->f:Z

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_6
    :goto_2
    sget-object v0, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-virtual {v0, v2, p1, p5}, Lcom/android/tools/r8/internal/Hm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    .line 18
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->a()Lcom/android/tools/r8/ir/optimize/a;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 21
    iget-object p2, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-interface {p4, p1, p3, p2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    return-void

    .line 25
    :cond_7
    invoke-interface {p4, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method
