.class public final Lcom/android/tools/r8/ir/optimize/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/I;->b:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v2}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/dt;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v9

    :cond_0
    iget-object v10, v9, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_30

    iget-object v10, v9, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    iput-object v10, v9, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->r1()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v12

    iget-object v13, v12, Lcom/android/tools/r8/internal/C4;->l:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v15, v13, Lcom/android/tools/r8/internal/TJ;

    if-eqz v15, :cond_9

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d0()Lcom/android/tools/r8/internal/TJ;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d0()Lcom/android/tools/r8/internal/TJ;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d0()Lcom/android/tools/r8/internal/TJ;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/C4;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    if-ne v15, v6, :cond_8

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d0()Lcom/android/tools/r8/internal/TJ;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/mK;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v15

    if-nez v15, :cond_1

    iget-object v15, v13, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v15, v15, Lcom/android/tools/r8/internal/Qk0;

    if-eqz v15, :cond_1

    iget-object v15, v13, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->H0()Lcom/android/tools/r8/internal/Qk0;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object v14, v15

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v15

    move-object/from16 v16, v9

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    move-object/from16 v17, v8

    iget-object v8, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9, v15, v8}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/android/tools/r8/ir/optimize/I;->c:Z

    if-nez v6, :cond_3

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/C4;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    if-ne v8, v14, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    :goto_2
    if-nez v6, :cond_5

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    :goto_3
    new-instance v6, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v6, v12}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    sget-object v8, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    invoke-virtual {v14, v13, v6, v8, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/ir/optimize/a;)V

    :cond_6
    :goto_4
    move-object/from16 v18, v3

    :cond_7
    move-object/from16 v19, v4

    move-object/from16 v14, v16

    move-object/from16 v4, v17

    :goto_5
    const/4 v15, 0x1

    goto/16 :goto_12

    :cond_8
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object v4, v8

    move-object v14, v9

    goto :goto_5

    :cond_9
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move v15, v6

    move-object v4, v8

    move-object v14, v9

    goto/16 :goto_12

    :cond_a
    move-object/from16 v17, v8

    move-object/from16 v16, v9

    instance-of v6, v12, Lcom/android/tools/r8/internal/hK;

    if-eqz v6, :cond_13

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->j0()Lcom/android/tools/r8/internal/hK;

    move-result-object v6

    iget-object v8, v0, Lcom/android/tools/r8/ir/optimize/I;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v8, v8, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v8, v8, Lcom/android/tools/r8/internal/nJ$p;->b0:Z

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/j;

    iget-object v9, v6, Lcom/android/tools/r8/internal/VJ;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/hK;->A2()Z

    move-result v12

    invoke-virtual {v8, v9, v12}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v8

    if-eqz v8, :cond_b

    iget-object v9, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8, v9, v6, v3}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/h3;

    move-result-object v9

    instance-of v12, v9, Lcom/android/tools/r8/graph/T5;

    if-eqz v12, :cond_b

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/h3;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v12

    iget-object v13, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    iget-object v14, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v15, v14}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object v14

    invoke-virtual {v8, v13, v6, v14, v3}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/WJ;Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/h3;

    move-result-object v8

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/h3;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h3;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result v8

    if-eqz v8, :cond_b

    new-instance v8, Lcom/android/tools/r8/internal/mK;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    iget-object v6, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-direct {v8, v12, v9, v6}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    const/4 v6, 0x0

    invoke-interface {v11, v8, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    iget-object v9, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/shaking/i;

    iget-object v12, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v14

    invoke-virtual {v9, v8, v14, v12, v13}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object v9

    if-nez v9, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v13

    iget-object v13, v13, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eq v12, v13, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v12

    iget-object v13, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/graph/j;

    invoke-static {v9, v12, v3, v13, v14}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v12

    if-eqz v12, :cond_e

    :goto_6
    const/4 v14, 0x0

    goto :goto_8

    :cond_e
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v14

    iget-object v15, v14, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v13, v15, :cond_f

    goto :goto_7

    :cond_f
    invoke-interface {v12, v13}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v14

    :goto_7
    if-eqz v14, :cond_12

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v12

    if-eq v14, v12, :cond_12

    iget-object v12, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    iget-object v13, v14, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v14

    iget-object v15, v14, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v13, v15, :cond_10

    goto :goto_7

    :cond_10
    invoke-interface {v12, v13}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v14

    goto :goto_7

    :cond_11
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v9

    move-object v14, v9

    :cond_12
    :goto_8
    if-eqz v14, :cond_6

    iget-object v9, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/b1;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    invoke-virtual {v8, v12, v9}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    if-eq v9, v8, :cond_6

    iget-object v8, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v8

    iget-object v12, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    iget-object v12, v12, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v12

    invoke-virtual {v8, v3, v9, v12}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Lcom/android/tools/r8/internal/hK;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    iget-object v6, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v13

    invoke-direct {v8, v9, v12, v6, v13}, Lcom/android/tools/r8/internal/hK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    const/4 v6, 0x0

    invoke-interface {v11, v8, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_4

    :cond_13
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v12

    if-nez v12, :cond_14

    goto/16 :goto_9

    :cond_14
    iget-object v12, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v12, v13, v8}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v12

    if-eqz v12, :cond_19

    iget-object v13, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12, v3, v13}, Lcom/android/tools/r8/graph/Z4$c;->b(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v13

    if-eqz v13, :cond_15

    goto/16 :goto_9

    :cond_15
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    iget-object v13, v8, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-ne v9, v13, :cond_16

    goto :goto_9

    :cond_16
    iget-object v13, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v13, v9, v8}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v9

    if-eqz v9, :cond_19

    iget-object v13, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9, v3, v13}, Lcom/android/tools/r8/graph/Z4$c;->b(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v13

    if-nez v13, :cond_19

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v14

    iget-object v15, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v13, v15, v14}, Lcom/android/tools/r8/graph/j1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v13, v13, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v13

    if-nez v13, :cond_17

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v12

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)Z

    move-result v12

    if-nez v12, :cond_17

    goto :goto_9

    :cond_17
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v12

    if-eqz v12, :cond_18

    goto :goto_9

    :cond_18
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    goto :goto_a

    :cond_19
    :goto_9
    move-object v9, v8

    :goto_a
    if-eq v9, v8, :cond_6

    new-instance v8, Lcom/android/tools/r8/internal/mK;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    iget-object v6, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v12, v6}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    const/4 v6, 0x0

    invoke-interface {v11, v8, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_4

    :cond_1a
    instance-of v6, v12, Lcom/android/tools/r8/internal/TJ;

    if-nez v6, :cond_1b

    goto/16 :goto_4

    :cond_1b
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->d0()Lcom/android/tools/r8/internal/TJ;

    move-result-object v6

    iget-object v8, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v8, v3}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v8

    if-nez v8, :cond_1c

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v12

    if-eqz v12, :cond_1d

    goto/16 :goto_4

    :cond_1d
    iget-object v12, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/j;

    invoke-static {v9, v3, v12, v13}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v12

    if-eqz v12, :cond_1e

    goto/16 :goto_4

    :cond_1e
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/A2;

    iget-object v13, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v13

    iget-object v14, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    iget-object v14, v14, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v14

    invoke-virtual {v13, v3, v12, v14}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_4

    :cond_1f
    new-instance v12, Lcom/android/tools/r8/internal/mK;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    iget-object v14, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-direct {v12, v8, v13, v14}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    const/4 v8, 0x0

    invoke-interface {v11, v12, v8}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    invoke-virtual {v4, v6, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v13

    iget-object v13, v13, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-eq v8, v13, :cond_6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v15

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v14, v15, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    iget-object v14, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v13, v3, v14}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/xw0;

    iget-object v14, v13, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v15

    if-eqz v15, :cond_22

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->M()I

    move-result v15

    move-object/from16 v19, v4

    const/4 v4, 0x1

    if-ne v15, v4, :cond_20

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->w()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    move-object v14, v4

    goto :goto_b

    :cond_20
    sget-boolean v4, Lcom/android/tools/r8/ir/optimize/I;->c:Z

    if-eqz v4, :cond_21

    const/4 v14, 0x0

    goto :goto_b

    :cond_21
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_22
    move-object/from16 v19, v4

    :goto_b
    if-eqz v14, :cond_24

    invoke-virtual {v5, v10, v14}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_c

    :cond_23
    move-object/from16 v19, v4

    :cond_24
    const/4 v13, 0x0

    :goto_c
    if-nez v13, :cond_2e

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v3

    if-nez v3, :cond_25

    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-interface {v3, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    new-instance v3, Lcom/android/tools/r8/internal/Qk0;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-direct {v3, v13, v8, v4}, Lcom/android/tools/r8/internal/Qk0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    move-object/from16 v4, v17

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-boolean v6, Lcom/android/tools/r8/ir/optimize/I;->c:Z

    if-nez v6, :cond_27

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Y5;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v9

    if-ne v9, v12, :cond_26

    goto :goto_d

    :cond_26
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_27
    :goto_d
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v9

    if-eqz v9, :cond_28

    iget-object v9, v0, Lcom/android/tools/r8/ir/optimize/I;->b:Lcom/android/tools/r8/internal/nJ;

    move-object/from16 v14, v16

    const/4 v15, 0x0

    invoke-interface {v11, v1, v14, v9, v15}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    goto :goto_e

    :cond_28
    move-object/from16 v14, v16

    move-object v9, v10

    :goto_e
    if-eq v9, v10, :cond_2b

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v5

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    invoke-virtual {v10, v5}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    new-instance v5, Lcom/android/tools/r8/internal/dt;

    invoke-direct {v5, v1, v15}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    if-nez v6, :cond_2a

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    if-ne v6, v12, :cond_29

    goto :goto_f

    :cond_29
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2a
    :goto_f
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-object v11, v3

    goto :goto_11

    :cond_2b
    const/4 v15, 0x1

    invoke-interface {v11, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    if-nez v6, :cond_2d

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    if-ne v3, v12, :cond_2c

    goto :goto_10

    :cond_2c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2d
    :goto_10
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_11

    :cond_2e
    move-object/from16 v14, v16

    move-object/from16 v4, v17

    const/4 v15, 0x1

    :goto_11
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v3

    if-nez v3, :cond_2f

    new-instance v3, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v3, v12}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    sget-object v6, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    invoke-virtual {v8, v13, v3, v6, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_12

    :cond_2f
    invoke-virtual {v12, v8, v13, v2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    :goto_12
    move-object v8, v4

    move-object v9, v14

    move v6, v15

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_0

    :cond_30
    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/I;->c:Z

    if-nez v2, :cond_32

    iget-object v2, v0, Lcom/android/tools/r8/ir/optimize/I;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_13

    :cond_31
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_32
    :goto_13
    return-void
.end method
