.class public final Lcom/android/tools/r8/internal/tB;
.super Lcom/android/tools/r8/internal/lB;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/ir/optimize/F;

.field public final c:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/F;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/lB;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/tB;->b:Lcom/android/tools/r8/ir/optimize/F;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/tB;->c:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;)Lcom/android/tools/r8/graph/i0;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    iget-object v1, v0, Lcom/android/tools/r8/internal/tB;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/lB;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v1}, Lcom/android/tools/r8/internal/Ni;->a(Lcom/android/tools/r8/graph/y;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    iget-object v1, v0, Lcom/android/tools/r8/internal/tB;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->l1()Z

    move-result v6

    if-nez v6, :cond_4

    instance-of v6, v5, Lcom/android/tools/r8/internal/fZ;

    if-eqz v6, :cond_3

    :cond_4
    iget-object v6, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :cond_5
    :goto_0
    if-ge v12, v11, :cond_3

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v13}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v14

    if-nez v14, :cond_5

    iget-object v14, v13, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d2()Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v13, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->z0()Lcom/android/tools/r8/internal/w10;

    move-result-object v14

    iget-object v14, v14, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    sget-object v15, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-ne v14, v15, :cond_5

    new-instance v14, Lcom/android/tools/r8/internal/gK;

    iget-object v15, v1, Lcom/android/tools/r8/graph/u1;->L4:Lcom/android/tools/r8/graph/I1;

    iget-object v15, v15, Lcom/android/tools/r8/graph/I1;->c:Lcom/android/tools/r8/graph/A2;

    new-instance v9, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v9, v13}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v14, v15, v10, v9}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4, v7, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    goto :goto_1

    :cond_6
    move-object v9, v3

    :goto_1
    if-eq v9, v3, :cond_7

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v3, v14}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v4

    move-object v3, v9

    goto :goto_2

    :cond_7
    invoke-interface {v4, v14}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :goto_2
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    sget-boolean v13, Lcom/android/tools/r8/ir/optimize/w0;->a:Z

    if-nez v13, :cond_5

    if-ne v9, v5, :cond_8

    goto :goto_0

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_9
    :goto_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/lB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_10

    iget-object v2, v7, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_6

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v10

    const/4 v3, 0x0

    :cond_c
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    if-ne v6, v11, :cond_c

    add-int/lit8 v3, v3, 0x1

    move-object v4, v5

    goto :goto_4

    :cond_d
    const/4 v2, 0x4

    if-le v3, v2, :cond_10

    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/w0;->a:Z

    if-nez v2, :cond_f

    if-eqz v4, :cond_e

    goto :goto_5

    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_f
    :goto_5
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/tools/r8/internal/Y5;

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {v3, v7, v9}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/fB;I)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    invoke-static {v3, v5, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/W5;

    iget-object v11, v7, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-direct {v6, v11}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    new-instance v11, Lcom/android/tools/r8/internal/bY;

    invoke-interface {v7, v5, v10}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-direct {v11, v5, v3, v1}, Lcom/android/tools/r8/internal/bY;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/nJ;)V

    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    new-instance v1, Lcom/android/tools/r8/internal/Or0;

    iget-object v5, v11, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v1, v5}, Lcom/android/tools/r8/internal/Or0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    iget-object v4, v6, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v4, v11, v10}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    iget-object v4, v6, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v4, v1, v10}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/aB;)V

    iget-object v1, v7, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/android/tools/r8/internal/W5;->d(I)V

    iget-object v1, v7, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v6, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_10
    :goto_6
    iget-object v1, v0, Lcom/android/tools/r8/internal/lB;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v7}, Lcom/android/tools/r8/ir/optimize/w0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/tools/r8/internal/tB;->b:Lcom/android/tools/r8/ir/optimize/F;

    invoke-virtual {v1, v7, v8}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    :cond_11
    iget-object v1, v0, Lcom/android/tools/r8/internal/lB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/tools/r8/internal/C2;->u:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v7, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/mB;->e()Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance v2, Lcom/android/tools/r8/internal/K7;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/K7;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v11

    const/4 v1, 0x0

    :cond_12
    :goto_7
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/w0;->a:Z

    if-nez v2, :cond_14

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->k2()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_8

    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_14
    :goto_8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v2

    sub-int/2addr v2, v9

    iget-object v5, v4, Lcom/android/tools/r8/internal/tI;->o:[I

    aget v2, v5, v2

    const v5, 0x7fffffff

    if-ne v2, v5, :cond_12

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v1

    if-ne v1, v9, :cond_15

    invoke-static {v7, v3, v4}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/tI;)V

    goto :goto_a

    :cond_15
    new-instance v1, Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v6

    sub-int/2addr v6, v9

    if-ge v2, v6, :cond_16

    iget-object v6, v4, Lcom/android/tools/r8/internal/tI;->o:[I

    aget v6, v6, v2

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    new-instance v6, Lcom/android/tools/r8/internal/CH;

    invoke-direct {v6, v9}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v5, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v5, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/internal/K7;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/tI;Ljava/util/List;Lcom/android/tools/r8/internal/CH;)V

    :goto_a
    move v1, v9

    goto :goto_7

    :cond_17
    if-eqz v1, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->z()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_18
    iget-object v1, v0, Lcom/android/tools/r8/internal/tB;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v7, v1}, Lcom/android/tools/r8/ir/optimize/w0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;)V

    iget-object v1, v0, Lcom/android/tools/r8/internal/tB;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v7, v1}, Lcom/android/tools/r8/ir/optimize/w0;->b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;)V

    iget-object v1, v0, Lcom/android/tools/r8/internal/tB;->c:Lcom/android/tools/r8/internal/nJ;

    sget-boolean v2, Lcom/android/tools/r8/internal/nJ;->h2:Z

    if-nez v2, :cond_1a

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_b

    :cond_19
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1a
    :goto_b
    iget-boolean v2, v1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v2, :cond_1d

    sget-object v2, Lcom/android/tools/r8/internal/C2;->y:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v7, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/N8;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->g()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_1c

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->o()Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_1c

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v9, :cond_1c

    new-instance v4, Lcom/android/tools/r8/internal/j2;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/j2;-><init>()V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_c

    :cond_1d
    iget-object v1, v0, Lcom/android/tools/r8/internal/tB;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v0, Lcom/android/tools/r8/internal/lB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/tools/r8/internal/C2;->J:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v12, 0x0

    goto/16 :goto_12

    :cond_1e
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v3

    :cond_1f
    :goto_d
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Lcom/android/tools/r8/internal/TJ;

    if-eqz v5, :cond_1f

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d0()Lcom/android/tools/r8/internal/TJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v11

    iget-object v12, v11, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v6, v12, :cond_20

    goto :goto_e

    :cond_20
    invoke-interface {v2, v6}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v11

    :goto_e
    if-eqz v11, :cond_21

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_1f

    :cond_21
    iget-object v6, v1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    iget-object v11, v11, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    const/16 v13, 0x65

    if-eq v11, v13, :cond_2a

    const/16 v13, 0x6e

    if-eq v11, v13, :cond_28

    const/16 v13, 0x74

    if-eq v11, v13, :cond_27

    const/16 v13, 0x77

    if-eq v11, v13, :cond_24

    const/16 v13, 0x67

    if-eq v11, v13, :cond_23

    const/16 v13, 0x68

    if-eq v11, v13, :cond_22

    goto/16 :goto_f

    :cond_22
    iget-object v11, v6, Lcom/android/tools/r8/graph/u1$c;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v11

    if-eqz v11, :cond_2b

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$c;->e:Lcom/android/tools/r8/graph/A2;

    goto :goto_10

    :cond_23
    iget-object v11, v6, Lcom/android/tools/r8/graph/u1$c;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v11

    if-eqz v11, :cond_2b

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$c;->d:Lcom/android/tools/r8/graph/A2;

    goto :goto_10

    :cond_24
    iget-object v11, v6, Lcom/android/tools/r8/graph/u1$c;->k:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v11

    if-eqz v11, :cond_25

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$c;->k:Lcom/android/tools/r8/graph/A2;

    goto :goto_10

    :cond_25
    iget-object v11, v6, Lcom/android/tools/r8/graph/u1$c;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v11

    if-eqz v11, :cond_26

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$c;->l:Lcom/android/tools/r8/graph/A2;

    goto :goto_10

    :cond_26
    iget-object v11, v6, Lcom/android/tools/r8/graph/u1$c;->m:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v11

    if-eqz v11, :cond_2b

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$c;->m:Lcom/android/tools/r8/graph/A2;

    goto :goto_10

    :cond_27
    iget-object v11, v6, Lcom/android/tools/r8/graph/u1$c;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v11

    if-eqz v11, :cond_2b

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$c;->h:Lcom/android/tools/r8/graph/A2;

    goto :goto_10

    :cond_28
    iget-object v11, v6, Lcom/android/tools/r8/graph/u1$c;->i:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v11

    if-eqz v11, :cond_29

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$c;->i:Lcom/android/tools/r8/graph/A2;

    goto :goto_10

    :cond_29
    iget-object v11, v6, Lcom/android/tools/r8/graph/u1$c;->j:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v11

    if-eqz v11, :cond_2b

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$c;->j:Lcom/android/tools/r8/graph/A2;

    goto :goto_10

    :cond_2a
    iget-object v11, v6, Lcom/android/tools/r8/graph/u1$c;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v11

    if-eqz v11, :cond_2b

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$c;->c:Lcom/android/tools/r8/graph/A2;

    goto :goto_10

    :cond_2b
    :goto_f
    move-object v6, v10

    :goto_10
    if-eqz v6, :cond_1f

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    invoke-interface {v2, v11}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v11

    if-eqz v11, :cond_2c

    invoke-virtual {v11, v5}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v5

    goto :goto_11

    :cond_2c
    move-object v5, v10

    :goto_11
    if-nez v5, :cond_1f

    new-instance v5, Lcom/android/tools/r8/internal/mK;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    iget-object v4, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-direct {v5, v6, v11, v4}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    invoke-interface {v3, v5, v10}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_d

    :cond_2d
    const/4 v12, 0x0

    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/w0;->a:Z

    if-nez v1, :cond_2f

    invoke-virtual {v7, v2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_12

    :cond_2e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2f
    :goto_12
    iget-object v1, v0, Lcom/android/tools/r8/internal/tB;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v0, Lcom/android/tools/r8/internal/lB;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v7, v1, v2}, Lcom/android/tools/r8/ir/optimize/w0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/y;)V

    sget-boolean v1, Lcom/android/tools/r8/internal/tB;->d:Z

    if-nez v1, :cond_31

    iget-object v2, v0, Lcom/android/tools/r8/internal/lB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7, v2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_13

    :cond_30
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_31
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->C()V

    if-nez v1, :cond_32

    iget-object v1, v0, Lcom/android/tools/r8/internal/tB;->b:Lcom/android/tools/r8/ir/optimize/F;

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/ir/optimize/F;->b(Lcom/android/tools/r8/internal/fB;)V

    :cond_32
    const-string v1, "Allocate registers"

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    new-instance v4, Lcom/android/tools/r8/internal/mS;

    iget-object v1, v0, Lcom/android/tools/r8/internal/lB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v4, v1, v7, v8}, Lcom/android/tools/r8/internal/mS;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/mS;->b()V

    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    new-instance v1, Lcom/android/tools/r8/internal/lt0;

    iget-object v2, v0, Lcom/android/tools/r8/internal/lB;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/lt0;-><init>(Lcom/android/tools/r8/graph/y;)V

    const-string v2, "Peephole optimize"

    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move v2, v12

    :goto_14
    const/4 v3, 0x2

    if-ge v2, v3, :cond_33

    invoke-virtual {v1, v7, v8}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    iget-object v3, v0, Lcom/android/tools/r8/internal/lB;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v3, v7, v4}, Lcom/android/tools/r8/ir/optimize/h0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/mS;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_33
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Clean up"

    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/x;->b:Z

    iget-object v2, v4, Lcom/android/tools/r8/internal/mS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v2, :cond_34

    goto/16 :goto_1d

    :cond_34
    iget-object v2, v7, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_15

    :cond_36
    iget-object v5, v3, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    if-eqz v5, :cond_35

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_37

    goto :goto_15

    :cond_37
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v6

    move-object v11, v10

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_39

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/zE;

    iget v14, v13, Lcom/android/tools/r8/internal/zE;->g:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_39

    if-eqz v11, :cond_38

    goto :goto_17

    :cond_38
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->M()Lcom/android/tools/r8/internal/fj;

    move-result-object v11

    goto :goto_16

    :cond_39
    :goto_17
    if-eqz v11, :cond_35

    new-instance v6, Lcom/android/tools/r8/internal/dH;

    iget v13, v5, Lcom/android/tools/r8/internal/dH;->h:I

    invoke-direct {v6, v13}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    invoke-virtual {v11, v6}, Lcom/android/tools/r8/internal/fj;->a(Lcom/android/tools/r8/internal/SG;)Z

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_15

    :cond_3a
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/dI;

    const/16 v13, 0x10

    invoke-direct {v6, v13}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    new-instance v14, Lcom/android/tools/r8/internal/dI;

    invoke-direct {v14, v13}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    iget-object v15, v3, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v15

    move/from16 v16, v12

    :goto_18
    if-eqz v15, :cond_40

    if-ne v15, v11, :cond_3b

    move/from16 v16, v9

    :cond_3b
    if-eqz v16, :cond_3d

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v17

    if-eqz v17, :cond_3d

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->p0()Lcom/android/tools/r8/internal/aY;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/aY;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    iget v12, v9, Lcom/android/tools/r8/internal/zE;->g:I

    invoke-virtual {v4, v10, v12}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v10

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    iget v13, v9, Lcom/android/tools/r8/internal/zE;->g:I

    invoke-virtual {v4, v12, v13}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v12

    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result v10

    if-nez v10, :cond_3d

    invoke-virtual {v14, v12}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result v10

    if-nez v10, :cond_3d

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3c
    move-object/from16 v18, v2

    goto :goto_1b

    :cond_3d
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    if-eqz v9, :cond_3e

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v9

    if-eqz v9, :cond_3e

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    iget v10, v15, Lcom/android/tools/r8/internal/zE;->g:I

    invoke-virtual {v4, v9, v10}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/dI;->remove(I)Z

    invoke-virtual {v14, v9}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    :cond_3e
    iget-object v9, v15, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3c

    iget-object v9, v15, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_19
    if-ge v12, v10, :cond_3c

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v18

    if-eqz v18, :cond_3f

    move-object/from16 v18, v2

    iget v2, v15, Lcom/android/tools/r8/internal/zE;->g:I

    invoke-virtual {v4, v13, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    goto :goto_1a

    :cond_3f
    move-object/from16 v18, v2

    :goto_1a
    move-object/from16 v2, v18

    goto :goto_19

    :goto_1b
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v15

    move-object/from16 v2, v18

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x10

    goto/16 :goto_18

    :cond_40
    move-object/from16 v18, v2

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_41
    move-object/from16 v2, v18

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    goto/16 :goto_15

    :cond_42
    new-instance v2, Lcom/android/tools/r8/internal/hF;

    const/16 v6, 0x10

    invoke-direct {v2, v6}, Lcom/android/tools/r8/internal/hF;-><init>(I)V

    new-instance v9, Lcom/android/tools/r8/internal/hF;

    invoke-direct {v9, v6}, Lcom/android/tools/r8/internal/hF;-><init>(I)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    move-object v6, v2

    move-object v2, v9

    :cond_43
    :goto_1c
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_41

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v10

    if-eqz v10, :cond_45

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->p0()Lcom/android/tools/r8/internal/aY;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/aY;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    iget v11, v9, Lcom/android/tools/r8/internal/zE;->g:I

    invoke-virtual {v4, v10, v11}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v10

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    iget v9, v9, Lcom/android/tools/r8/internal/zE;->g:I

    invoke-virtual {v4, v11, v9}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v11, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v10, v9}, Lcom/android/tools/r8/internal/hF;->b(II)I

    invoke-interface {v3}, Lcom/android/tools/r8/internal/EE;->s()V

    goto :goto_1c

    :cond_44
    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/hF;->remove(I)I

    goto :goto_1c

    :cond_45
    instance-of v10, v9, Lcom/android/tools/r8/internal/fj;

    if-eqz v10, :cond_43

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->M()Lcom/android/tools/r8/internal/fj;

    move-result-object v9

    iget-object v10, v9, Lcom/android/tools/r8/internal/fj;->k:Lcom/android/tools/r8/internal/dH;

    invoke-static {v6, v10}, Lcom/android/tools/r8/ir/optimize/x;->a(Lcom/android/tools/r8/internal/hF;Lcom/android/tools/r8/internal/dH;)V

    iget-object v6, v9, Lcom/android/tools/r8/internal/fj;->l:Lcom/android/tools/r8/internal/dH;

    invoke-static {v2, v6}, Lcom/android/tools/r8/ir/optimize/x;->a(Lcom/android/tools/r8/internal/hF;Lcom/android/tools/r8/internal/dH;)V

    new-instance v6, Lcom/android/tools/r8/internal/hF;

    iget v9, v2, Lcom/android/tools/r8/internal/hF;->i:I

    invoke-direct {v6, v9}, Lcom/android/tools/r8/internal/hF;-><init>(I)V

    invoke-virtual {v6, v2}, Lcom/android/tools/r8/internal/hF;->putAll(Ljava/util/Map;)V

    move-object/from16 v19, v6

    move-object v6, v2

    move-object/from16 v2, v19

    goto :goto_1c

    :cond_46
    :goto_1d
    invoke-virtual {v1, v7, v8}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    new-instance v8, Lcom/android/tools/r8/internal/Kn;

    iget-object v5, v0, Lcom/android/tools/r8/internal/tB;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v6, v7, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/Kn;-><init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/EW;)V

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Kn;->b()Lcom/android/tools/r8/graph/J0;

    move-result-object v1

    return-object v1
.end method
