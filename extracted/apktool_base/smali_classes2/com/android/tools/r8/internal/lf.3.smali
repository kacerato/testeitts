.class public final Lcom/android/tools/r8/internal/lf;
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

    .line 2
    const-string v0, "CommonSubexpressionElimination"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 18

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->y()I

    move-result v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->s1()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->n2()Z

    move-result v7

    if-nez v7, :cond_1

    instance-of v7, v6, Lcom/android/tools/r8/internal/mE;

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_1
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v7

    if-nez v7, :cond_15

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->c1()Z

    move-result v6

    if-nez v6, :cond_15

    new-instance v2, Lcom/android/tools/r8/internal/Q3;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Q3;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/kf;

    move-object/from16 v6, p0

    iget-object v5, v6, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v3, v5}, Lcom/android/tools/r8/internal/kf;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    new-instance v5, Lcom/android/tools/r8/internal/dt;

    const/4 v7, 0x1

    invoke-direct {v5, v0, v7}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    iget-object v10, v5, Lcom/android/tools/r8/internal/dt;->a:[Lcom/android/tools/r8/internal/W5;

    array-length v11, v10

    if-ge v8, v11, :cond_14

    aget-object v10, v10, v8

    invoke-virtual {v10, v1}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    move-object/from16 v17, v5

    move v5, v7

    goto/16 :goto_c

    :cond_3
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->s1()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->n2()Z

    move-result v13

    if-nez v13, :cond_5

    instance-of v13, v12, Lcom/android/tools/r8/internal/mE;

    if-nez v13, :cond_5

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v17, v5

    move v5, v7

    goto/16 :goto_b

    :cond_5
    :goto_4
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v13

    if-nez v13, :cond_4

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->c1()Z

    move-result v13

    if-nez v13, :cond_4

    new-instance v13, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v13, v3, v12}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    invoke-virtual {v2, v13}, Lcom/android/tools/r8/internal/Q3;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/x0;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v14, v13, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    if-lez v14, :cond_f

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v14, v13, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    instance-of v15, v14, Ljava/util/List;

    if-eqz v15, :cond_6

    move-object v15, v14

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v15

    goto :goto_5

    :cond_6
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v4, v13, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    if-ne v4, v14, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v4, v13, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    if-ne v4, v14, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    iget-object v7, v4, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    invoke-virtual {v5, v10, v7}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v4, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v16

    if-nez v16, :cond_9

    sget-boolean v16, Lcom/android/tools/r8/internal/lf;->e:Z

    if-nez v16, :cond_8

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_6
    move-object/from16 v17, v5

    const/4 v5, 0x1

    goto :goto_8

    :cond_9
    sget-boolean v16, Lcom/android/tools/r8/internal/lf;->e:Z

    if-nez v16, :cond_b

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v16

    if-eqz v16, :cond_a

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_7
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v16

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/N8;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_8
    if-eqz v5, :cond_d

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/tK0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/tK0;-><init>()V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v11}, Lcom/android/tools/r8/internal/EE;->i()V

    const/4 v4, 0x1

    const/4 v9, 0x1

    goto :goto_a

    :cond_c
    move-object/from16 v17, v5

    :cond_d
    move-object/from16 v5, v17

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_e
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_f
    move-object/from16 v17, v5

    goto :goto_9

    :cond_10
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :goto_9
    const/4 v4, 0x0

    :goto_a
    if-nez v4, :cond_11

    new-instance v4, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v4, v3, v12}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    iget-object v7, v2, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    if-nez v7, :cond_13

    new-instance v7, Ljava/util/ArrayList;

    iget v12, v2, Lcom/android/tools/r8/internal/Q3;->h:I

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget v5, v2, Lcom/android/tools/r8/internal/A0;->g:I

    const/4 v12, 0x1

    add-int/2addr v5, v12

    iput v5, v2, Lcom/android/tools/r8/internal/A0;->g:I

    iget-object v5, v2, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const/4 v5, 0x1

    goto :goto_b

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "New Collection violated the Collection spec"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_13
    invoke-interface {v7, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget v4, v2, Lcom/android/tools/r8/internal/A0;->g:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v2, Lcom/android/tools/r8/internal/A0;->g:I

    :goto_b
    move v7, v5

    move-object/from16 v5, v17

    goto/16 :goto_3

    :goto_c
    add-int/lit8 v8, v8, 0x1

    move v7, v5

    move-object/from16 v5, v17

    goto/16 :goto_2

    :cond_14
    move v4, v9

    goto :goto_d

    :cond_15
    move-object/from16 v6, p0

    goto/16 :goto_1

    :cond_16
    move-object/from16 v6, p0

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/W5;->c(I)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v6, p0

    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->a(I)V

    if-eqz v4, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_18
    if-eqz v4, :cond_19

    sget-object v0, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v0

    :cond_19
    sget-object v0, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v0
.end method
