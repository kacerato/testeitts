.class public final Lcom/android/tools/r8/internal/Mc;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "StringOptimizer"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, p2, Lcom/android/tools/r8/internal/nJ;->Q:Z

    if-nez v0, :cond_1

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ$p;->t0:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v2}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v3

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    iget-object v8, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/G1;->p:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    sget-boolean v9, Lcom/android/tools/r8/internal/Mc;->e:Z

    const/4 v10, 0x1

    if-nez v9, :cond_5

    iget-object v9, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v10, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    :goto_1
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    iget-object v11, v9, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v11, :cond_0

    instance-of v11, v11, Lcom/android/tools/r8/internal/jh;

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_0

    :cond_6
    iget-object v9, v9, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v9

    iget-object v9, v9, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->y0()I

    move-result v11

    iget-object v12, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v9, v12}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_0

    :cond_7
    iget-object v12, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12, v9}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v12

    if-nez v12, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v13

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v14

    sget-object v15, Lcom/android/tools/r8/shaking/l1;->s:Lcom/android/tools/r8/shaking/l1;

    iget-object v4, v13, Lcom/android/tools/r8/graph/y;->r:Lcom/android/tools/r8/shaking/y1;

    if-eqz v4, :cond_9

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v15

    :cond_9
    iget-object v4, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v15, v4}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v10

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    :goto_2
    iget-object v13, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v13

    iget-object v13, v13, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v13, v13, Lcom/android/tools/r8/internal/nJ$p;->t0:Z

    if-nez v13, :cond_c

    if-eqz v4, :cond_b

    goto/16 :goto_0

    :cond_b
    iget-object v13, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/G1;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7, v13}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v13

    if-nez v13, :cond_c

    new-instance v13, Lcom/android/tools/r8/internal/iv;

    iget-object v14, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    sget-object v15, Lcom/android/tools/r8/internal/Lc;->a:Lcom/android/tools/r8/internal/Lc;

    invoke-direct {v13, v14, v15}, Lcom/android/tools/r8/internal/iv;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/jv;)V

    invoke-virtual {v13, v1, v8}, Lcom/android/tools/r8/internal/iv;->b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x24

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-gez v13, :cond_d

    move v13, v10

    goto :goto_3

    :cond_d
    const/4 v13, 0x0

    :goto_3
    iget-object v14, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/G1;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7, v14}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_10

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v4

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    new-instance v7, Lcom/android/tools/r8/internal/uq;

    sget-object v8, Lcom/android/tools/r8/internal/vd;->c:Lcom/android/tools/r8/internal/vd;

    if-lez v11, :cond_e

    new-instance v12, Lcom/android/tools/r8/internal/wd;

    invoke-direct {v12, v8, v11}, Lcom/android/tools/r8/internal/wd;-><init>(Lcom/android/tools/r8/internal/vd;I)V

    goto :goto_4

    :cond_e
    invoke-static {v8}, Lcom/android/tools/r8/internal/wd;->a(Lcom/android/tools/r8/internal/vd;)Lcom/android/tools/r8/internal/wd;

    move-result-object v12

    :goto_4
    invoke-direct {v7, v4, v9, v12}, Lcom/android/tools/r8/internal/uq;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    goto/16 :goto_a

    :cond_f
    sget-object v4, Lcom/android/tools/r8/internal/vd;->c:Lcom/android/tools/r8/internal/vd;

    iget-object v7, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v4, v8, v12, v7, v11}, Lcom/android/tools/r8/internal/vd;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/u1;I)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    :goto_5
    move-object v7, v15

    move-object v15, v4

    goto/16 :goto_a

    :cond_10
    iget-object v14, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/G1;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7, v14}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v14

    if-eqz v14, :cond_11

    goto/16 :goto_0

    :cond_11
    iget-object v14, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/G1;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7, v14}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/E0;->r1()Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/E0;->m1()Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_7

    :cond_12
    if-nez v13, :cond_13

    goto/16 :goto_0

    :cond_13
    if-eqz v4, :cond_15

    iget-object v4, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v4

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    new-instance v7, Lcom/android/tools/r8/internal/uq;

    sget-object v8, Lcom/android/tools/r8/internal/vd;->e:Lcom/android/tools/r8/internal/vd;

    if-lez v11, :cond_14

    new-instance v12, Lcom/android/tools/r8/internal/wd;

    invoke-direct {v12, v8, v11}, Lcom/android/tools/r8/internal/wd;-><init>(Lcom/android/tools/r8/internal/vd;I)V

    goto :goto_6

    :cond_14
    invoke-static {v8}, Lcom/android/tools/r8/internal/wd;->a(Lcom/android/tools/r8/internal/vd;)Lcom/android/tools/r8/internal/wd;

    move-result-object v12

    :goto_6
    invoke-direct {v7, v4, v9, v12}, Lcom/android/tools/r8/internal/uq;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    goto :goto_a

    :cond_15
    sget-object v4, Lcom/android/tools/r8/internal/vd;->e:Lcom/android/tools/r8/internal/vd;

    iget-object v7, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v4, v8, v12, v7, v11}, Lcom/android/tools/r8/internal/vd;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/u1;I)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    goto :goto_5

    :cond_16
    :goto_7
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v4

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v7, v8, v4}, Lcom/android/tools/r8/internal/fB;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_9

    :cond_17
    iget-object v14, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/G1;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7, v14}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/E0;->m1()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v4, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    goto/16 :goto_5

    :cond_18
    if-nez v13, :cond_19

    goto/16 :goto_0

    :cond_19
    if-eqz v4, :cond_1b

    iget-object v4, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v4

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    new-instance v7, Lcom/android/tools/r8/internal/uq;

    sget-object v8, Lcom/android/tools/r8/internal/vd;->f:Lcom/android/tools/r8/internal/vd;

    if-lez v11, :cond_1a

    new-instance v12, Lcom/android/tools/r8/internal/wd;

    invoke-direct {v12, v8, v11}, Lcom/android/tools/r8/internal/wd;-><init>(Lcom/android/tools/r8/internal/vd;I)V

    goto :goto_8

    :cond_1a
    invoke-static {v8}, Lcom/android/tools/r8/internal/wd;->a(Lcom/android/tools/r8/internal/vd;)Lcom/android/tools/r8/internal/wd;

    move-result-object v12

    :goto_8
    invoke-direct {v7, v4, v9, v12}, Lcom/android/tools/r8/internal/uq;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    goto :goto_a

    :cond_1b
    sget-object v4, Lcom/android/tools/r8/internal/vd;->f:Lcom/android/tools/r8/internal/vd;

    iget-object v7, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v4, v8, v12, v7, v11}, Lcom/android/tools/r8/internal/vd;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/u1;I)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    goto/16 :goto_5

    :cond_1c
    :goto_9
    move-object v7, v15

    :goto_a
    if-eqz v15, :cond_1d

    iget-object v4, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v4

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/vh;

    invoke-direct {v5, v4, v15}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    invoke-interface {v3, v5, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    :goto_b
    move v5, v10

    goto/16 :goto_0

    :cond_1d
    if-eqz v7, :cond_0

    invoke-interface {v3, v7, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_b

    :cond_1e
    iget-object v3, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    if-eqz v5, :cond_1f

    sget-object v1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v1

    :cond_1f
    sget-object v1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v1
.end method
