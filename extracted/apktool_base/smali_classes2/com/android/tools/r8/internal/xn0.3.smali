.class public final Lcom/android/tools/r8/internal/xn0;
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

.method public static synthetic a(ILcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/internal/W5;)V
    .locals 0

    .line 6
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/W5;->c(I)V

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SplitReturnRewriter"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 2
    sget-boolean p1, Lcom/android/tools/r8/internal/xn0;->e:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    .line 3
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->Z:Z

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/xn0;->c(Lcom/android/tools/r8/internal/fB;)I

    move-result v1

    new-instance v2, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v2}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayDeque;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->f()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    iget-object v9, v8, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    new-instance v12, Lcom/android/tools/r8/internal/CH;

    const/16 v13, 0x10

    invoke-direct {v12, v13}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ge v13, v14, :cond_e

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-virtual {v14, v1}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v16

    if-eqz v16, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-static {v14}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    if-eq v5, v8, :cond_5

    sget-boolean v5, Lcom/android/tools/r8/internal/xn0;->e:Z

    if-nez v5, :cond_d

    invoke-virtual {v14, v8}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_7

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_6
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    sget-object v5, Lcom/android/tools/r8/internal/N8;->e:Lcom/android/tools/r8/internal/N8;

    iput-object v5, v8, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    move v6, v15

    goto :goto_4

    :cond_7
    sget-boolean v5, Lcom/android/tools/r8/internal/xn0;->e:Z

    if-nez v5, :cond_9

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    if-eqz v10, :cond_a

    invoke-interface {v10}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    if-ne v5, v8, :cond_a

    invoke-interface {v10}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    goto :goto_5

    :cond_a
    move-object v5, v10

    :goto_5
    new-instance v15, Lcom/android/tools/r8/internal/xk0;

    invoke-direct {v15}, Lcom/android/tools/r8/internal/xk0;-><init>()V

    iput-object v5, v15, Lcom/android/tools/r8/internal/xk0;->d:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    iput-object v5, v15, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    iget-object v5, v15, Lcom/android/tools/r8/internal/xk0;->d:Lcom/android/tools/r8/internal/xw0;

    if-nez v5, :cond_b

    new-instance v5, Lcom/android/tools/r8/internal/yk0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/yk0;-><init>()V

    goto :goto_6

    :cond_b
    new-instance v5, Lcom/android/tools/r8/internal/yk0;

    iget-object v11, v15, Lcom/android/tools/r8/internal/xk0;->d:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v5, v11}, Lcom/android/tools/r8/internal/yk0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    :goto_6
    iget-object v11, v15, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v11, :cond_c

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_c
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->O()V

    invoke-virtual {v12, v13}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    invoke-virtual {v4, v14}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v12, Lcom/android/tools/r8/internal/CH;->c:I

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v5, v7, :cond_11

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/f60;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    iget-object v12, v11, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {v12, v7}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    if-eqz v10, :cond_16

    iget-object v5, v10, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iput-object v12, v10, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    goto :goto_c

    :cond_11
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/a0;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    move-object v11, v9

    check-cast v11, Lcom/android/tools/r8/internal/X;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/X;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v10, v11, 0x1

    goto :goto_9

    :cond_13
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v10, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_a
    invoke-virtual {v8, v12}, Lcom/android/tools/r8/internal/W5;->a(Ljava/util/List;)V

    iget-object v5, v8, Lcom/android/tools/r8/internal/W5;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_14
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/f60;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f60;->d0()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v9

    sget-object v10, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v2, v9, v10}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z

    goto :goto_b

    :cond_15
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v5

    iget-object v7, v2, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_16
    :goto_c
    move v7, v15

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/Collection;)V

    if-eqz v6, :cond_18

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    :cond_18
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v5

    invoke-virtual {v2, v4, v0, v5}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    if-eqz v7, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_19
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->a(I)V

    if-eqz v7, :cond_1a

    sget-object v0, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v0

    :cond_1a
    sget-object v0, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/internal/fB;)I
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->y()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$p;->l0:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/N8;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Ky1;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/Ky1;-><init>(ILcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/Consumer;)V

    return v0
.end method
