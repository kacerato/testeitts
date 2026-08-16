.class public final Lcom/android/tools/r8/internal/Xc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/ir/optimize/W;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/W;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Xc;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Xc;->b:Lcom/android/tools/r8/ir/optimize/W;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    instance-of p0, p0, Lcom/android/tools/r8/internal/Mo0;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/Y;
    .locals 7

    .line 113
    new-instance v6, Lcom/android/tools/r8/ir/optimize/H;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xc;->b:Lcom/android/tools/r8/ir/optimize/W;

    .line 114
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/dX;)Lcom/android/tools/r8/internal/KD;

    move-result-object v4

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/ir/optimize/H;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/KD;Lcom/android/tools/r8/internal/fB;)V

    return-object v6
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 1
    new-instance v11, Lcom/android/tools/r8/internal/sR;

    new-instance v0, Lcom/android/tools/r8/internal/d21;

    move-object/from16 v12, p1

    invoke-direct {v0, v7, v12, v9, v8}, Lcom/android/tools/r8/internal/d21;-><init>(Lcom/android/tools/r8/internal/Xc;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/fB;)V

    invoke-direct {v11, v0}, Lcom/android/tools/r8/internal/sR;-><init>(Ljava/util/function/Supplier;)V

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/e21;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/e21;-><init>()V

    .line 3
    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x0

    .line 5
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/tools/r8/internal/zE;

    .line 7
    new-instance v6, Lcom/android/tools/r8/internal/GD;

    iget-object v1, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, v7, Lcom/android/tools/r8/internal/Xc;->b:Lcom/android/tools/r8/ir/optimize/W;

    move-object v0, v6

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object v14, v6

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/GD;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/W;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zE;)V

    .line 8
    iget-object v0, v14, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    iput-object v0, v14, Lcom/android/tools/r8/internal/GD;->h:Lcom/android/tools/r8/internal/xw0;

    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    goto/16 :goto_5

    .line 10
    :cond_0
    iget-object v0, v14, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, v14, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, v14, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    iput-object v0, v14, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    goto/16 :goto_5

    .line 13
    :cond_1
    iget-object v0, v14, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    iget-object v1, v14, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    if-ne v0, v1, :cond_2

    .line 14
    sget-object v0, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    goto/16 :goto_5

    .line 15
    :cond_2
    iget-object v0, v14, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, v14, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/o0;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    sget-object v0, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    goto/16 :goto_5

    .line 17
    :cond_3
    sget-object v0, Lcom/android/tools/r8/internal/Wc;->b:Lcom/android/tools/r8/internal/Wc;

    goto/16 :goto_5

    .line 18
    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/internal/GD;->p:Z

    if-nez v0, :cond_6

    iget-object v0, v14, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    instance-of v0, v0, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v0, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_6
    :goto_2
    iget-object v0, v14, Lcom/android/tools/r8/internal/GD;->g:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v0

    .line 22
    iget-object v1, v14, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/D3;->m()Lcom/android/tools/r8/graph/F3;

    move-result-object v1

    if-nez v1, :cond_7

    .line 24
    sget-object v0, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    goto/16 :goto_5

    .line 25
    :cond_7
    iget-object v2, v14, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/D3$a;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-ne v2, v3, :cond_8

    .line 26
    sget-object v0, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    goto :goto_5

    .line 27
    :cond_8
    iget-object v2, v14, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, v14, Lcom/android/tools/r8/internal/GD;->f:Lcom/android/tools/r8/graph/H5;

    .line 28
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v4

    .line 29
    sget-object v5, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    .line 30
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/tools/r8/internal/Mo0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    sget-object v0, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    goto :goto_5

    .line 32
    :cond_9
    iget-object v0, v1, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    .line 33
    iget-object v0, v0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vw;->g()Lcom/android/tools/r8/internal/xt;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->i()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_4

    .line 36
    :cond_a
    iget-object v2, v14, Lcom/android/tools/r8/internal/GD;->a:Lcom/android/tools/r8/graph/y;

    .line 37
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->c()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iput-object v1, v14, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    if-nez v1, :cond_b

    .line 38
    sget-object v0, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    goto :goto_5

    .line 39
    :cond_b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vw;->f()Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Fm0;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object v0

    goto :goto_3

    .line 42
    :cond_c
    sget-object v0, Lcom/android/tools/r8/internal/Wt;->a:Lcom/android/tools/r8/internal/Wt;

    :goto_3
    iput-object v0, v14, Lcom/android/tools/r8/internal/GD;->j:Lcom/android/tools/r8/internal/Q30;

    .line 43
    sget-object v0, Lcom/android/tools/r8/internal/Wc;->b:Lcom/android/tools/r8/internal/Wc;

    goto :goto_5

    .line 44
    :cond_d
    :goto_4
    sget-object v0, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    .line 45
    :goto_5
    sget-object v1, Lcom/android/tools/r8/internal/Wc;->b:Lcom/android/tools/r8/internal/Wc;

    if-eq v0, v1, :cond_e

    .line 46
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 47
    :cond_e
    iget-object v0, v14, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    .line 48
    iget-object v2, v7, Lcom/android/tools/r8/internal/Xc;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Wc;

    if-nez v2, :cond_16

    if-eqz v0, :cond_12

    .line 49
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->l1()Z

    move-result v2

    if-nez v2, :cond_12

    .line 50
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    .line 51
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v2

    .line 53
    iget-object v3, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 55
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 56
    iget-boolean v2, v2, Lcom/android/tools/r8/shaking/l1;->k:Z

    if-eqz v2, :cond_12

    .line 57
    iget-object v2, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 58
    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1$c;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 59
    sget-object v2, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    goto :goto_6

    .line 60
    :cond_f
    iget-object v2, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 61
    sget-object v2, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    goto :goto_6

    .line 62
    :cond_10
    iget-object v2, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->I:Z

    if-nez v2, :cond_11

    iget-object v2, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    .line 63
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 64
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    iget-object v3, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 67
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 68
    sget-object v2, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    goto :goto_6

    :cond_11
    move-object v2, v1

    goto :goto_6

    .line 69
    :cond_12
    sget-object v2, Lcom/android/tools/r8/internal/Wc;->c:Lcom/android/tools/r8/internal/Wc;

    .line 70
    :goto_6
    iget-object v3, v7, Lcom/android/tools/r8/internal/Xc;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Wc;

    .line 71
    sget-boolean v3, Lcom/android/tools/r8/internal/Xc;->d:Z

    if-nez v3, :cond_14

    if-eqz v0, :cond_14

    if-ne v0, v2, :cond_13

    goto :goto_7

    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    :goto_7
    if-nez v0, :cond_15

    goto :goto_8

    :cond_15
    move-object v2, v0

    :cond_16
    :goto_8
    if-eq v2, v1, :cond_17

    .line 72
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 73
    :cond_17
    invoke-virtual {v14, v11}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/sR;)Lcom/android/tools/r8/internal/FE;

    move-result-object v0

    if-eqz v0, :cond_18

    goto/16 :goto_1

    .line 74
    :cond_18
    new-instance v6, Lcom/android/tools/r8/internal/JD;

    iget-object v1, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v7, Lcom/android/tools/r8/internal/Xc;->b:Lcom/android/tools/r8/ir/optimize/W;

    .line 75
    iget-object v4, v0, Lcom/android/tools/r8/ir/optimize/W;->c:Lcom/android/tools/r8/internal/QR;

    move-object v0, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    .line 76
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/JD;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/dX;)V

    .line 77
    new-instance v0, Lcom/android/tools/r8/internal/Yc;

    iget-object v1, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    .line 78
    iget-object v2, v14, Lcom/android/tools/r8/internal/GD;->o:Lcom/android/tools/r8/internal/bd;

    .line 79
    invoke-direct {v0, v1, v6, v2}, Lcom/android/tools/r8/internal/Yc;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/bd;)V

    .line 80
    iget-object v1, v14, Lcom/android/tools/r8/internal/GD;->i:Lcom/android/tools/r8/graph/H2;

    .line 81
    iget-object v2, v14, Lcom/android/tools/r8/internal/GD;->m:Ljava/util/IdentityHashMap;

    .line 82
    iget-object v3, v14, Lcom/android/tools/r8/internal/GD;->n:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/tools/r8/internal/Yc;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H2;Ljava/util/IdentityHashMap;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 84
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 85
    :cond_19
    iget-object v0, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    .line 86
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    const/16 v18, 0x1

    if-eqz v0, :cond_1c

    .line 87
    invoke-virtual/range {v19 .. v19}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 88
    invoke-virtual/range {v19 .. v19}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    .line 89
    iget-object v1, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 90
    iget-object v1, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    .line 91
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    .line 92
    iget-object v1, v1, Lcom/android/tools/r8/internal/Oa0;->h:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    iget-object v2, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v3, :cond_1a

    iget-object v4, v1, Lcom/android/tools/r8/internal/La0;->k:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v4, :cond_1c

    .line 94
    :cond_1a
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v3, :cond_1c

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->k:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_1b

    goto :goto_9

    :cond_1b
    move/from16 v16, v18

    .line 95
    :cond_1c
    :goto_9
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    move-object/from16 v4, p3

    .line 96
    :try_start_0
    invoke-virtual {v14, v8, v0, v4, v6}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/JD;)Z

    move-result v1
    :try_end_0
    .catch Lcom/android/tools/r8/internal/FD; {:try_start_0 .. :try_end_0} :catch_0

    or-int v1, v17, v1

    move/from16 v17, v1

    goto :goto_a

    .line 97
    :catch_0
    sget-boolean v1, Lcom/android/tools/r8/internal/Xc;->d:Z

    if-eqz v1, :cond_1f

    move/from16 v17, v18

    :goto_a
    const/4 v1, 0x0

    .line 98
    invoke-virtual {v8, v1, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    .line 99
    iget-object v1, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    .line 100
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 102
    sget-boolean v0, Lcom/android/tools/r8/internal/Xc;->d:Z

    if-nez v0, :cond_1e

    iget-object v0, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_b

    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_1e
    :goto_b
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 104
    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    move-object/from16 v4, p3

    if-nez v18, :cond_23

    if-eqz v16, :cond_21

    .line 105
    iget-object v11, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    new-instance v13, Lcom/android/tools/r8/internal/f21;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/f21;-><init>(Lcom/android/tools/r8/internal/Xc;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V

    invoke-virtual {v11, v13}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Wr0;)V

    :cond_21
    if-eqz v17, :cond_22

    .line 106
    new-instance v0, Lcom/android/tools/r8/internal/it0;

    iget-object v1, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/it0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 107
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-virtual {v0, v8, v9, v10, v1}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 108
    new-instance v0, Lcom/android/tools/r8/internal/K7;

    iget-object v1, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/K7;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 109
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-virtual {v0, v8, v9, v10, v1}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 110
    iget-object v0, v7, Lcom/android/tools/r8/internal/Xc;->a:Lcom/android/tools/r8/graph/y;

    .line 111
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->B:Lcom/android/tools/r8/internal/XR;

    .line 112
    invoke-virtual {v0, v8, v9, v10}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V

    :cond_22
    return-void

    :cond_23
    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/bz;)V
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xc;->b:Lcom/android/tools/r8/ir/optimize/W;

    .line 118
    invoke-virtual {p6, p2}, Lcom/android/tools/r8/internal/bz;->a(Lcom/android/tools/r8/internal/fB;)V

    .line 119
    new-instance v6, Lcom/android/tools/r8/internal/ra0;

    iget-object v1, p6, Lcom/android/tools/r8/internal/bz;->a:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/gx;

    sget-object v3, Lcom/android/tools/r8/ir/optimize/U;->f:Lcom/android/tools/r8/ir/optimize/U;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/gx;-><init>(Lcom/android/tools/r8/ir/optimize/U;)V

    invoke-direct {v6, v1, v2}, Lcom/android/tools/r8/internal/ra0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/KD;)V

    .line 120
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 121
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/KD;)V

    .line 122
    new-instance p1, Lcom/android/tools/r8/internal/Vu;

    iget-object p3, p6, Lcom/android/tools/r8/internal/bz;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/Vu;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 123
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p5, p3}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    return-void
.end method
