.class public abstract Lcom/android/tools/r8/internal/BV;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/G3;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 23

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/K3;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->b()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v11

    iget-object v12, v1, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/G3;->E()Lcom/android/tools/r8/shaking/K3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/NA0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/NA0;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    iget-object v4, v1, Lcom/android/tools/r8/shaking/f3;->m:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/R3;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    new-instance v5, Lcom/android/tools/r8/internal/OA0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/OA0;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v0, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/shaking/K3;

    sget-boolean v9, Lcom/android/tools/r8/internal/BV;->a:Z

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/f3;->i()Lcom/android/tools/r8/origin/Origin;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->i()Lcom/android/tools/r8/origin/Origin;

    move-result-object v14

    if-ne v10, v14, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v9, :cond_5

    iget-object v10, v8, Lcom/android/tools/r8/shaking/f3;->b:Lcom/android/tools/r8/position/Position;

    iget-object v14, v1, Lcom/android/tools/r8/shaking/f3;->b:Lcom/android/tools/r8/position/Position;

    if-ne v10, v14, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    if-nez v9, :cond_7

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/f3;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->j()Ljava/lang/String;

    move-result-object v14

    if-ne v10, v14, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_3
    if-nez v9, :cond_9

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/f3;->a()Lcom/android/tools/r8/shaking/S2;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->a()Lcom/android/tools/r8/shaking/S2;

    move-result-object v14

    if-ne v10, v14, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    if-nez v9, :cond_b

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/f3;->h()Lcom/android/tools/r8/shaking/S2;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->h()Lcom/android/tools/r8/shaking/S2;

    move-result-object v14

    if-ne v10, v14, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_5
    if-nez v9, :cond_d

    iget-boolean v10, v8, Lcom/android/tools/r8/shaking/f3;->g:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v14, v1, Lcom/android/tools/r8/shaking/f3;->g:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    if-ne v10, v14, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_6
    if-nez v9, :cond_f

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v14

    if-ne v10, v14, :cond_e

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    :goto_7
    if-nez v9, :cond_11

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/f3;->f()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->f()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    if-ne v10, v14, :cond_10

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    :goto_8
    if-nez v9, :cond_13

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/L3;->D()Lcom/android/tools/r8/shaking/O3;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/L3;->D()Lcom/android/tools/r8/shaking/O3;

    move-result-object v14

    if-ne v10, v14, :cond_12

    goto :goto_9

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    :goto_9
    if-nez v9, :cond_15

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/L3;->C()Lcom/android/tools/r8/shaking/M3;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/L3;->C()Lcom/android/tools/r8/shaking/M3;

    move-result-object v14

    if-ne v10, v14, :cond_14

    goto :goto_a

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    :goto_a
    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/f3;->b()Ljava/util/List;

    move-result-object v10

    if-ne v10, v6, :cond_27

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/shaking/c3;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    iget-object v10, v8, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    if-ne v10, v12, :cond_27

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v10

    invoke-static {v10, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    goto/16 :goto_14

    :cond_16
    if-eqz v4, :cond_1

    iget-object v8, v8, Lcom/android/tools/r8/shaking/f3;->m:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/shaking/R3;

    if-nez v9, :cond_18

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object v14

    if-ne v10, v14, :cond_17

    goto :goto_b

    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    :goto_b
    if-nez v9, :cond_1a

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->f()Lcom/android/tools/r8/shaking/S2;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/R3;->f()Lcom/android/tools/r8/shaking/S2;

    move-result-object v14

    if-ne v10, v14, :cond_19

    goto :goto_c

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1a
    :goto_c
    if-nez v9, :cond_1c

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v14

    if-ne v10, v14, :cond_1b

    goto :goto_d

    :cond_1b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1c
    :goto_d
    if-nez v9, :cond_1e

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->g()Lcom/android/tools/r8/shaking/T3;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/R3;->g()Lcom/android/tools/r8/shaking/T3;

    move-result-object v14

    if-ne v10, v14, :cond_1d

    goto :goto_e

    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1e
    :goto_e
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->c()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/R3;->c()Ljava/util/List;

    move-result-object v14

    if-ne v10, v14, :cond_26

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->e()Lcom/android/tools/r8/shaking/Y3;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/R3;->e()Lcom/android/tools/r8/shaking/Y3;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->d()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/R3;->d()Ljava/util/List;

    move-result-object v14

    if-eq v10, v14, :cond_1f

    goto/16 :goto_12

    :cond_1f
    iget-object v10, v4, Lcom/android/tools/r8/shaking/R3;->e:Lcom/android/tools/r8/shaking/i4;

    if-eqz v10, :cond_25

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->i()Lcom/android/tools/r8/shaking/i4;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/R3;->i()Lcom/android/tools/r8/shaking/i4;

    move-result-object v8

    if-nez v9, :cond_21

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v8, Lcom/android/tools/r8/shaking/n4;

    if-nez v9, :cond_20

    goto :goto_f

    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_21
    :goto_f
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v10, Lcom/android/tools/r8/shaking/i4$b;

    if-eqz v9, :cond_22

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v8, Lcom/android/tools/r8/shaking/i4$b;

    if-eqz v9, :cond_23

    new-instance v9, Lcom/android/tools/r8/shaking/n4;

    invoke-virtual {v10}, Lcom/android/tools/r8/shaking/i4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/i4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    filled-new-array {v10, v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-static {v8}, Lcom/android/tools/r8/internal/Al0;->b([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/android/tools/r8/shaking/n4;-><init>(Ljava/util/Set;)V

    move-object v10, v9

    goto :goto_10

    :cond_22
    instance-of v9, v10, Lcom/android/tools/r8/shaking/n4;

    if-eqz v9, :cond_23

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v8, Lcom/android/tools/r8/shaking/i4$b;

    if-eqz v9, :cond_23

    invoke-virtual {v10}, Lcom/android/tools/r8/shaking/i4;->c()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/tools/r8/shaking/i4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_23
    move-object v10, v3

    :goto_10
    if-nez v10, :cond_24

    goto :goto_12

    :cond_24
    move-object/from16 v19, v10

    goto :goto_11

    :cond_25
    move-object/from16 v19, v3

    :goto_11
    new-instance v8, Lcom/android/tools/r8/shaking/R3;

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->c()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->b()Lcom/android/tools/r8/shaking/S2;

    move-result-object v16

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->f()Lcom/android/tools/r8/shaking/S2;

    move-result-object v17

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->h()Lcom/android/tools/r8/shaking/U3;

    move-result-object v18

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->e()Lcom/android/tools/r8/shaking/Y3;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->d()Ljava/util/List;

    move-result-object v21

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/R3;->g()Lcom/android/tools/r8/shaking/T3;

    move-result-object v22

    move-object v14, v8

    invoke-direct/range {v14 .. v22}, Lcom/android/tools/r8/shaking/R3;-><init>(Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/U3;Lcom/android/tools/r8/shaking/i4;Lcom/android/tools/r8/shaking/Y3;Ljava/util/List;Lcom/android/tools/r8/shaking/T3;)V

    move-object v4, v8

    goto :goto_13

    :cond_26
    :goto_12
    move-object v4, v3

    :goto_13
    if-nez v4, :cond_1

    :cond_27
    :goto_14
    return-object v0

    :cond_28
    if-eqz v4, :cond_29

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v15, v3

    goto :goto_15

    :cond_29
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v2

    move-object v15, v2

    :goto_15
    new-instance v14, Lcom/android/tools/r8/shaking/K3;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->i()Lcom/android/tools/r8/origin/Origin;

    move-result-object v3

    iget-object v4, v1, Lcom/android/tools/r8/shaking/f3;->b:Lcom/android/tools/r8/position/Position;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->a()Lcom/android/tools/r8/shaking/S2;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->h()Lcom/android/tools/r8/shaking/S2;

    move-result-object v8

    iget-boolean v9, v1, Lcom/android/tools/r8/shaking/f3;->g:Z

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f3;->f()Z

    move-result v16

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/L3;->D()Lcom/android/tools/r8/shaking/O3;

    move-result-object v17

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/L3;->C()Lcom/android/tools/r8/shaking/M3;

    move-result-object v1

    move-object v2, v14

    move-object v0, v14

    move/from16 v14, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v1

    invoke-direct/range {v2 .. v17}, Lcom/android/tools/r8/shaking/K3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/O3;Lcom/android/tools/r8/shaking/M3;)V

    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/H3;

    new-instance v2, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
