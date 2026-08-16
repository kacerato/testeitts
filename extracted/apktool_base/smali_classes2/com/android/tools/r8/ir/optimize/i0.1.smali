.class public abstract Lcom/android/tools/r8/ir/optimize/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/fB;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/f60;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-static {v10}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    if-eq v10, v3, :cond_1

    goto/16 :goto_a

    :cond_2
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v9

    if-ne v9, v5, :cond_16

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->W()I

    move-result v9

    if-eq v9, v5, :cond_3

    goto/16 :goto_a

    :cond_3
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v10

    if-eq v10, v5, :cond_4

    goto/16 :goto_a

    :cond_5
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->m0()Lcom/android/tools/r8/internal/JT;

    move-result-object v9

    if-eqz v9, :cond_16

    iget-object v10, v9, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v10

    if-eqz v10, :cond_6

    goto/16 :goto_a

    :cond_6
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move v12, v1

    move-object v11, v3

    :goto_2
    const/4 v14, 0x0

    if-eqz v11, :cond_b

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/android/tools/r8/internal/zE;

    if-ne v9, v13, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v9}, Lcom/android/tools/r8/internal/U50;->a(Lcom/android/tools/r8/internal/zE;)I

    move-result v13

    sub-int/2addr v12, v13

    if-gez v12, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v9}, Lcom/android/tools/r8/internal/U50;->b(Lcom/android/tools/r8/internal/zE;)I

    move-result v13

    add-int/2addr v12, v13

    goto :goto_3

    :cond_9
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-static {v11}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v11

    goto :goto_2

    :cond_a
    move-object v11, v14

    goto :goto_2

    :cond_b
    :goto_4
    const/high16 v12, -0x80000000

    :goto_5
    if-eqz v12, :cond_c

    goto/16 :goto_a

    :cond_c
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    iget-object v12, v11, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v12, :cond_16

    instance-of v13, v12, Lcom/android/tools/r8/internal/Oo0;

    if-nez v13, :cond_e

    goto/16 :goto_a

    :cond_e
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    goto/16 :goto_a

    :cond_f
    iget-object v11, v11, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v12

    move v13, v1

    :goto_6
    if-eqz v12, :cond_12

    if-ne v12, v11, :cond_10

    goto :goto_7

    :cond_10
    invoke-static {v11}, Lcom/android/tools/r8/internal/U50;->b(Lcom/android/tools/r8/internal/zE;)I

    move-result v15

    sub-int/2addr v13, v15

    if-gez v13, :cond_11

    const/high16 v13, -0x80000000

    goto :goto_7

    :cond_11
    invoke-static {v11}, Lcom/android/tools/r8/internal/U50;->a(Lcom/android/tools/r8/internal/zE;)I

    move-result v15

    add-int/2addr v13, v15

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v12

    goto :goto_6

    :cond_12
    :goto_7
    if-eqz v13, :cond_d

    goto/16 :goto_a

    :cond_13
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    iget-object v12, v12, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->M0()Lcom/android/tools/r8/internal/Oo0;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    move v11, v1

    :goto_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_15

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/Oo0;

    iget-object v13, v12, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8, v11, v13, v14}, Lcom/android/tools/r8/internal/f60;->a(ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/a;)V

    iget-object v13, v12, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/xw0;

    iget-object v15, v13, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v15, v12}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iput-object v14, v13, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v13

    iget-object v13, v13, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v13, v12}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_15
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    iget-object v10, v9, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    iget-object v11, v10, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v11, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iput-object v14, v10, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    iget-object v10, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v10, v9}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    iput-boolean v5, v8, Lcom/android/tools/r8/internal/f60;->s:Z

    move v8, v5

    goto :goto_b

    :cond_16
    :goto_a
    move v8, v1

    :goto_b
    or-int/2addr v7, v8

    goto/16 :goto_1

    :cond_17
    if-eqz v7, :cond_18

    move v2, v5

    :cond_18
    move v6, v7

    goto/16 :goto_0

    :cond_19
    return v2
.end method
