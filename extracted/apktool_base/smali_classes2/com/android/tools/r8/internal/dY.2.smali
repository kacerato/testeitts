.class public final Lcom/android/tools/r8/internal/dY;
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

.method public static synthetic a(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/C4;)V
    .locals 0

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/U6;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MoveResultRewriter"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mB;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/lu0;

    iget-object v5, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v1, v6}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/tools/r8/internal/lu0;->b:Z

    move v7, v6

    move v8, v7

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_10

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/W5;

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    :goto_2
    move v6, v5

    goto/16 :goto_a

    :cond_3
    iget-object v13, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v13

    if-nez v13, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v13, v13, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/TW;->G()Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/TW;->t()I

    move-result v13

    if-ltz v13, :cond_2

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v14

    iget-object v14, v14, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v14, v14, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v15

    iget-object v6, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v14, v15, v6}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v14

    iget-object v14, v14, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v14, v14, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v14, v14, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v14, v14, v13

    goto :goto_3

    :cond_6
    if-nez v13, :cond_7

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v14

    iget-object v14, v14, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    goto :goto_3

    :cond_7
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v14

    iget-object v14, v14, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v14, v14, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v14, v14, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    add-int/lit8 v15, v13, -0x1

    aget-object v14, v14, v15

    :goto_3
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v15

    iget-object v5, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v14, v15, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    iget-object v14, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v14

    if-eqz v14, :cond_8

    iget-object v14, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v6, v14}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v5

    goto :goto_4

    :cond_8
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_4
    if-nez v5, :cond_9

    :goto_5
    const/4 v6, 0x1

    goto/16 :goto_a

    :cond_9
    iget-object v5, v12, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    sget-boolean v13, Lcom/android/tools/r8/internal/dY;->e:Z

    if-nez v13, :cond_a

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Kw0;)V

    :cond_a
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v14

    iget-object v15, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v13, v14, v15}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v13

    if-nez v13, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    sget-object v8, Lcom/android/tools/r8/ir/optimize/a;->c:Lcom/android/tools/r8/ir/optimize/a;

    goto :goto_6

    :cond_c
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->a()Lcom/android/tools/r8/ir/optimize/a;

    move-result-object v8

    :goto_6
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v13

    if-lez v13, :cond_d

    const/4 v13, 0x1

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    :goto_7
    or-int/2addr v7, v13

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v12, v10}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    iget-object v5, v8, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    new-instance v5, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/U6;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/tools/r8/internal/lu0;->b:Z

    new-instance v12, Lcom/android/tools/r8/internal/G81;

    invoke-direct {v12, v5, v9}, Lcom/android/tools/r8/internal/G81;-><init>(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {v4, v8, v12}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/U6;->d()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    move-object v11, v5

    goto :goto_8

    :cond_e
    const/4 v6, 0x1

    :cond_f
    :goto_8
    move v5, v6

    move v8, v5

    :goto_9
    const/4 v6, 0x0

    goto/16 :goto_1

    :goto_a
    move v5, v6

    goto :goto_9

    :cond_10
    new-instance v3, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v3}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/Collection;)V

    invoke-virtual {v1, v10, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    sget-boolean v2, Lcom/android/tools/r8/internal/dY;->e:Z

    if-nez v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->n()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_b

    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_12
    if-eqz v7, :cond_13

    invoke-virtual {v1, v10, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    :cond_13
    :goto_b
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    if-eqz v8, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_14
    if-eqz v8, :cond_15

    sget-object v1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v1

    :cond_15
    sget-object v1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v1
.end method
