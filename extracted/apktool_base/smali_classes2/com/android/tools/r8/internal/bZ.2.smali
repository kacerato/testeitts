.class public final Lcom/android/tools/r8/internal/bZ;
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
    const-string v0, "NaturalIntLoopRemover"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ;->i0:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v0, 0x19

    .line 4
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 6
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 p2, 0x4

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 19

    move-object/from16 v0, p1

    new-instance v1, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v1}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    iget-object v2, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_1b

    :cond_0
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_41

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v9

    if-eqz v9, :cond_3f

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v7}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v7}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v7

    goto :goto_2

    :cond_1
    iget-object v7, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x2

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eq v9, v8, :cond_4

    goto :goto_3

    :cond_4
    iget-object v9, v7, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    if-eq v9, v10, :cond_5

    :goto_3
    const/4 v7, 0x0

    :cond_5
    if-nez v7, :cond_6

    goto/16 :goto_19

    :cond_6
    move v9, v3

    move v12, v9

    move v13, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_15

    iget-object v14, v7, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v14}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v16

    if-eqz v16, :cond_7

    goto/16 :goto_19

    :cond_7
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v13, v13, Lcom/android/tools/r8/internal/uI;

    if-eqz v13, :cond_3d

    if-eqz v10, :cond_8

    goto/16 :goto_19

    :cond_8
    iget-object v10, v14, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v13

    move-object v10, v6

    goto/16 :goto_7

    :cond_9
    iget-object v15, v14, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->h1()Z

    move-result v15

    if-eqz v15, :cond_e

    if-eqz v11, :cond_a

    goto/16 :goto_19

    :cond_a
    iget-object v11, v14, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    iget-object v11, v11, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v15, v3

    move/from16 v17, v15

    :goto_5
    if-ge v15, v14, :cond_14

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v18

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v3, Lcom/android/tools/r8/internal/uI;

    if-eqz v3, :cond_c

    iget-object v3, v8, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v3

    if-eqz v3, :cond_3d

    if-eqz v12, :cond_b

    goto/16 :goto_19

    :cond_b
    move v12, v3

    const/4 v3, 0x0

    const/4 v8, 0x2

    goto :goto_5

    :cond_c
    if-ne v8, v7, :cond_3d

    if-eqz v17, :cond_d

    goto/16 :goto_19

    :cond_d
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/16 v17, 0x1

    goto :goto_5

    :cond_e
    iget-object v3, v14, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v3, Lcom/android/tools/r8/internal/Qq0;

    if-eqz v3, :cond_3d

    if-eqz v11, :cond_f

    goto/16 :goto_19

    :cond_f
    iget-object v3, v14, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->P0()Lcom/android/tools/r8/internal/Qq0;

    move-result-object v3

    iget-object v8, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    if-eq v8, v7, :cond_10

    goto/16 :goto_19

    :cond_10
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v8, Lcom/android/tools/r8/internal/uI;

    if-eqz v8, :cond_3d

    sget-boolean v8, Lcom/android/tools/r8/internal/bZ;->e:Z

    if-nez v8, :cond_12

    if-nez v12, :cond_11

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    :goto_6
    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v3

    neg-int v3, v3

    if-nez v3, :cond_13

    goto/16 :goto_19

    :cond_13
    move v12, v3

    :cond_14
    move-object v11, v6

    :goto_7
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x2

    goto/16 :goto_4

    :cond_15
    sget-boolean v3, Lcom/android/tools/r8/internal/bZ;->e:Z

    if-nez v3, :cond_17

    if-eqz v10, :cond_16

    goto :goto_8

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_17
    :goto_8
    if-nez v3, :cond_19

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_9

    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_19
    :goto_9
    if-nez v3, :cond_1b

    if-eqz v11, :cond_1a

    goto :goto_a

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1b
    :goto_a
    if-nez v3, :cond_1d

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v6

    if-eqz v6, :cond_1c

    goto :goto_b

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1d
    :goto_b
    if-nez v3, :cond_1f

    if-eqz v12, :cond_1e

    goto :goto_c

    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1f
    :goto_c
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    new-instance v6, Lcom/android/tools/r8/internal/Yx0;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    invoke-virtual {v6, v11}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    iget-object v7, v6, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_21

    const/4 v3, 0x0

    goto :goto_e

    :cond_21
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_22
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object v3

    :goto_e
    if-nez v3, :cond_23

    goto/16 :goto_19

    :cond_23
    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    sget-boolean v3, Lcom/android/tools/r8/internal/bZ;->e:Z

    if-eqz v3, :cond_24

    goto/16 :goto_19

    :cond_24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_25
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    goto/16 :goto_19

    :cond_26
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    goto :goto_f

    :cond_27
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    goto/16 :goto_19

    :cond_28
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    :goto_f
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    :cond_29
    invoke-interface {v8, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2b

    sget-boolean v9, Lcom/android/tools/r8/internal/bZ;->e:Z

    if-nez v9, :cond_30

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_2a

    goto :goto_11

    :cond_2a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2b
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/f60;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2d

    goto/16 :goto_19

    :cond_2e
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/f60;

    iget-object v14, v14, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-interface {v3, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2f

    goto/16 :goto_19

    :cond_30
    :goto_11
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v8

    sub-int v8, v13, v8

    invoke-static {v8}, Ljava/lang/Integer;->signum(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    goto :goto_12

    :cond_31
    iget-object v8, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v8

    sub-int/2addr v8, v13

    invoke-static {v8}, Ljava/lang/Integer;->signum(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    :goto_12
    if-ne v8, v7, :cond_3d

    add-int/2addr v13, v12

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v7

    sub-int/2addr v13, v7

    invoke-static {v13}, Ljava/lang/Integer;->signum(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    const/4 v9, 0x0

    goto :goto_13

    :cond_32
    iget-object v7, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v7

    sub-int/2addr v7, v13

    invoke-static {v7}, Ljava/lang/Integer;->signum(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    :goto_13
    if-ne v7, v6, :cond_3d

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/f60;

    rsub-int/lit8 v13, v7, 0x1

    iget-object v14, v12, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/xw0;

    iget-object v15, v12, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v15}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v16

    if-eqz v16, :cond_33

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v9

    invoke-interface {v15}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    invoke-interface {v15}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v9

    iget-object v9, v9, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/android/tools/r8/internal/xw0;

    :cond_33
    sget-boolean v9, Lcom/android/tools/r8/internal/aZ;->a:Z

    if-nez v9, :cond_35

    invoke-interface {v15}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v9

    if-eqz v9, :cond_35

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v9

    invoke-interface {v15}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34

    goto :goto_15

    :cond_34
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_35
    :goto_15
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_37

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-virtual {v10, v12, v14, v1}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_16

    :cond_36
    invoke-virtual {v10, v12, v15, v1}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_16

    :cond_37
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_39

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/f60;

    iget-object v13, v10, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_38

    invoke-virtual {v10, v12, v14, v1}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_17

    :cond_38
    invoke-virtual {v10, v12, v15, v1}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_17

    :cond_39
    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_14

    :cond_3a
    sget-boolean v3, Lcom/android/tools/r8/internal/aZ;->a:Z

    if-nez v3, :cond_3c

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_18

    :cond_3b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3c
    :goto_18
    new-instance v3, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/sL;)V

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/W5;->i(Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {v11, v5, v6}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    new-instance v3, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {v11, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/sL;)V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    sget-object v7, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    const/4 v8, 0x0

    invoke-virtual {v5, v11, v8, v3, v7}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    invoke-virtual {v6, v5, v11}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    const/4 v15, 0x1

    goto :goto_1a

    :cond_3d
    :goto_19
    const/4 v15, 0x0

    :goto_1a
    or-int/2addr v4, v15

    :cond_3e
    :goto_1b
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3f
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v3

    if-nez v3, :cond_40

    goto :goto_1b

    :cond_40
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_41
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0

    :cond_42
    if-eqz v4, :cond_43

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v5

    invoke-virtual {v1, v3, v0, v5}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    goto :goto_1c

    :cond_43
    move-object/from16 v2, p0

    :goto_1c
    if-eqz v4, :cond_44

    sget-object v0, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v0

    :cond_44
    sget-object v0, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v0
.end method
