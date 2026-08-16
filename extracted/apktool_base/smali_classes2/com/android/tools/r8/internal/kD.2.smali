.class public final Lcom/android/tools/r8/internal/kD;
.super Lcom/android/tools/r8/internal/fD;
.source "SourceFile"


# instance fields
.field public final f:Lcom/android/tools/r8/graph/l1;

.field public final g:Lcom/android/tools/r8/internal/DG;

.field public final h:Lcom/android/tools/r8/internal/sx0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/DG;Lcom/android/tools/r8/internal/sx0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/fD;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/kD;->g:Lcom/android/tools/r8/internal/DG;

    iput-object p1, p0, Lcom/android/tools/r8/internal/kD;->f:Lcom/android/tools/r8/graph/l1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/kD;->h:Lcom/android/tools/r8/internal/sx0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xA;)Lcom/android/tools/r8/internal/WS;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    new-instance v3, Lcom/android/tools/r8/internal/i60;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/i60;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    invoke-static {v4, v5, v3, v6}, Lcom/android/tools/r8/internal/WS;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/bT;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/PS;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v6, v7

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    new-instance v9, Lcom/android/tools/r8/internal/xw0;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v8, v7}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v8

    iget-object v11, v3, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v11, v8, v9}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/internal/PS;->a(I)Lcom/android/tools/r8/internal/PS;

    const/4 v8, 0x1

    move v11, v8

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v12

    invoke-virtual {v13, v12}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v12

    if-ge v11, v12, :cond_1

    move-object/from16 v12, p2

    invoke-virtual {v12, v11}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v14

    new-instance v15, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v15, v11, v14, v7}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v14

    iget-object v10, v3, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v10, v14, v15}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v10

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/M2;->F0()Z

    invoke-virtual {v4, v10}, Lcom/android/tools/r8/internal/PS;->a(I)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v12, p2

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v1

    new-instance v10, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v10, v11, v1, v7}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v1

    iget-object v13, v3, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v13, v1, v10}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    iget-object v1, v0, Lcom/android/tools/r8/internal/kD;->f:Lcom/android/tools/r8/graph/l1;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v13, 0xb4

    invoke-virtual {v4, v13, v1, v9}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v1, v11, 0x1

    iget-object v9, v0, Lcom/android/tools/r8/internal/kD;->g:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/DG;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/sG;

    new-instance v13, Lcom/android/tools/r8/internal/rG;

    iget-object v9, v9, Lcom/android/tools/r8/internal/sG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-direct {v13, v9}, Lcom/android/tools/r8/internal/rG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    iget-object v9, v0, Lcom/android/tools/r8/internal/kD;->g:Lcom/android/tools/r8/internal/DG;

    iget v9, v9, Lcom/android/tools/r8/internal/DG;->c:I

    iget-object v14, v0, Lcom/android/tools/r8/internal/kD;->h:Lcom/android/tools/r8/internal/sx0;

    if-eqz v14, :cond_2

    move v14, v8

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    xor-int/2addr v8, v14

    invoke-static {v8}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v8

    sub-int/2addr v9, v8

    new-array v8, v9, [I

    new-array v14, v9, [I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v1, v15

    add-int/lit8 v1, v1, 0x3

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v9, :cond_3

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object v7

    iget v7, v7, Lcom/android/tools/r8/internal/S;->b:I

    aput v7, v8, v15

    aput v1, v14, v15

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/LS;

    invoke-direct {v1, v8, v14}, Lcom/android/tools/r8/internal/LS;-><init>([I[I)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/16 v10, 0xaa

    invoke-virtual {v4, v10, v1, v7}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v1, v11, 0x2

    iget-object v7, v0, Lcom/android/tools/r8/internal/kD;->h:Lcom/android/tools/r8/internal/sx0;

    const/16 v13, 0xb9

    if-eqz v7, :cond_4

    iget-object v14, v7, Lcom/android/tools/r8/internal/sx0;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/graph/A2;

    sget-object v10, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {v2, v14, v15, v10}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/NW;

    move-result-object v10

    iget-object v10, v10, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    check-cast v10, Lcom/android/tools/r8/graph/A2;

    iget-object v7, v7, Lcom/android/tools/r8/internal/sx0;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    iget-object v14, v2, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v10, v7, v14}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/16 v10, 0xcf

    invoke-virtual {v4, v10, v7, v5}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    goto :goto_4

    :cond_4
    iget-object v7, v0, Lcom/android/tools/r8/internal/kD;->g:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/DG;->d()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/lZ;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v13, v7, v5}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    goto :goto_4

    :cond_5
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/16 v10, 0xb6

    invoke-virtual {v4, v10, v7, v5}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v7

    const/16 v10, 0xb0

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/PS;->b()Lcom/android/tools/r8/internal/PS;

    goto :goto_5

    :cond_6
    new-instance v7, Lcom/android/tools/r8/internal/xw0;

    const/4 v14, 0x0

    invoke-direct {v7, v1, v6, v14}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v1

    iget-object v14, v3, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v14, v1, v7}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v10, v1, v7}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    :goto_5
    add-int/lit8 v11, v11, 0x4

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v9, :cond_9

    aget v7, v8, v1

    iget-object v14, v0, Lcom/android/tools/r8/internal/kD;->g:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v14, v7}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/lZ;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v13, v7, v5}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    const/16 v14, 0xb6

    goto :goto_7

    :cond_7
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/16 v14, 0xb6

    invoke-virtual {v4, v14, v7, v5}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/PS;->b()Lcom/android/tools/r8/internal/PS;

    const/4 v15, 0x0

    goto :goto_8

    :cond_8
    new-instance v7, Lcom/android/tools/r8/internal/xw0;

    const/4 v15, 0x0

    invoke-direct {v7, v11, v6, v15}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v13

    iget-object v14, v3, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v14, v13, v7}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v10, v13, v7}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    :goto_8
    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v1, v1, 0x1

    const/16 v13, 0xb9

    goto :goto_6

    :cond_9
    new-instance v1, Lcom/android/tools/r8/internal/jD;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/PS;->d()Lcom/android/tools/r8/internal/WS;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/tools/r8/internal/jD;-><init>(Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/xA;)V

    return-object v1
.end method

.method public final l(I)V
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "IncompleteVirtuallyMergedMethodCode"

    return-object v0
.end method
