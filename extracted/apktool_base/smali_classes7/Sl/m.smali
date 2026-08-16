.class public LSl/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSl/m$b;,
        LSl/m$c;
    }
.end annotation


# instance fields
.field public g:LSl/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 6

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, LSl/m;->g:LSl/l;

    iget v2, v2, LSl/l;->j:I

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_0

    new-instance v4, LSl/m$b;

    invoke-direct {v4, p0, v3}, LSl/m$b;-><init>(LSl/m;LSl/m$a;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, LSl/m;->g:LSl/l;

    iget v2, v2, LSl/l;->j:I

    :goto_1
    if-ltz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LSl/o$a;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, LSl/m;->g:LSl/l;

    iget v5, v5, LSl/l;->j:I

    if-ne v2, v5, :cond_1

    new-instance v3, LSl/p;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LSl/o$a;

    iget-object v4, v4, LSl/o$a;->c:LYl/e;

    iget-object v5, p0, LSl/m;->g:LSl/l;

    invoke-virtual {v5}, LSl/l;->d()LSl/n;

    move-result-object v5

    invoke-direct {v3, v4, v5}, LSl/p;-><init>(LYl/e;LSl/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :goto_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v1, LSl/o;

    invoke-direct {v1, v0, v3}, LSl/o;-><init>(Ljava/util/List;LSl/p;)V

    new-instance v0, LBi/c;

    invoke-direct {v0, v3, v1}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    check-cast p1, LSl/l;

    iput-object p1, p0, LSl/m;->g:LSl/l;

    return-void
.end method

.method public final c()LSl/m$c;
    .locals 25

    move-object/from16 v6, p0

    iget-object v0, v6, LSl/m;->g:LSl/l;

    iget v5, v0, LSl/l;->d:I

    iget v13, v0, LSl/l;->e:I

    iget v1, v0, LSl/l;->f:I

    iget v2, v0, LSl/l;->g:I

    iget v3, v0, LSl/l;->h:I

    iget v4, v0, LSl/l;->i:I

    iget v14, v0, LSl/l;->s:I

    mul-int/lit8 v7, v5, 0x2

    const/4 v15, 0x1

    add-int/lit8 v12, v7, 0x1

    iget-boolean v0, v0, LSl/l;->r:Z

    :goto_0
    iget-object v7, v6, LSl/m;->g:LSl/l;

    iget v7, v7, LSl/l;->x:I

    if-nez v7, :cond_0

    add-int/lit8 v7, v1, 0x1

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-static {v5, v7, v1, v8}, LYl/d;->Y(IIILjava/security/SecureRandom;)LYl/d;

    move-result-object v7

    move v15, v12

    :goto_1
    move-object v12, v7

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v4, 0x1

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v16

    move v7, v5

    move v8, v2

    move v9, v3

    move v11, v4

    move v15, v12

    move-object/from16 v12, v16

    invoke-static/range {v7 .. v12}, LYl/j;->i(IIIIILjava/security/SecureRandom;)LYl/j;

    move-result-object v7

    goto :goto_1

    :goto_2
    invoke-interface {v12}, LYl/i;->b()LYl/e;

    move-result-object v11

    if-eqz v0, :cond_2

    invoke-virtual {v11, v15}, LYl/e;->J(I)LYl/h;

    move-result-object v7

    iget-object v7, v7, LYl/k;->b:Ljava/math/BigInteger;

    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    move v12, v15

    const/4 v15, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    invoke-virtual {v11, v13}, LYl/e;->y(I)LYl/e;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v11}, LYl/e;->K()LYl/k;

    move-result-object v9

    :goto_4
    iget-object v7, v6, LSl/m;->g:LSl/l;

    iget v7, v7, LSl/l;->x:I

    if-nez v7, :cond_3

    add-int/lit8 v7, v1, 0x1

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-static {v5, v7, v1, v8}, LYl/d;->Y(IIILjava/security/SecureRandom;)LYl/d;

    move-result-object v7

    move/from16 v18, v1

    move/from16 v16, v2

    move-object v1, v9

    move-object/from16 v24, v10

    move-object v2, v11

    move/from16 v19, v14

    move-object v14, v12

    goto :goto_5

    :cond_3
    add-int/lit8 v16, v4, 0x1

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v17

    move v7, v5

    move v8, v2

    move/from16 v18, v1

    move-object v1, v9

    move v9, v3

    move-object/from16 v24, v10

    move/from16 v10, v16

    move/from16 v16, v2

    move-object v2, v11

    move v11, v4

    move/from16 v19, v14

    move-object v14, v12

    move-object/from16 v12, v17

    invoke-static/range {v7 .. v12}, LYl/j;->i(IIIIILjava/security/SecureRandom;)LYl/j;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, LYl/i;->b()LYl/e;

    move-result-object v8

    if-eqz v0, :cond_5

    invoke-virtual {v8, v15}, LYl/e;->J(I)LYl/h;

    move-result-object v9

    iget-object v9, v9, LYl/k;->b:Ljava/math/BigInteger;

    sget-object v10, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_6

    :cond_4
    move-object v9, v1

    move-object v11, v2

    move-object v12, v14

    move/from16 v2, v16

    move/from16 v1, v18

    move/from16 v14, v19

    move-object/from16 v10, v24

    goto :goto_4

    :cond_5
    :goto_6
    invoke-virtual {v8, v13}, LYl/e;->y(I)LYl/e;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, LYl/e;->K()LYl/k;

    move-result-object v9

    iget-object v10, v1, LYl/k;->b:Ljava/math/BigInteger;

    iget-object v11, v9, LYl/k;->b:Ljava/math/BigInteger;

    invoke-static {v10, v11}, LXl/a;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)LXl/a;

    move-result-object v10

    iget-object v11, v10, LXl/a;->c:Ljava/math/BigInteger;

    sget-object v12, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v0, v1, LYl/k;->a:LYl/b;

    invoke-virtual {v0}, LYl/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LYl/b;

    iget-object v3, v10, LXl/a;->a:Ljava/math/BigInteger;

    int-to-long v11, v13

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, LYl/b;->l(Ljava/math/BigInteger;)V

    iget-object v3, v9, LYl/k;->a:LYl/b;

    invoke-virtual {v3}, LYl/b;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LYl/b;

    iget-object v4, v10, LXl/a;->b:Ljava/math/BigInteger;

    neg-int v10, v13

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, LYl/b;->l(Ljava/math/BigInteger;)V

    iget-object v4, v6, LSl/m;->g:LSl/l;

    iget v4, v4, LSl/l;->v:I

    const/4 v10, 0x0

    if-nez v4, :cond_7

    new-array v1, v5, [I

    new-array v4, v5, [I

    iget-object v9, v2, LYl/e;->a:[I

    aget v9, v9, v10

    aput v9, v1, v10

    iget-object v9, v8, LYl/e;->a:[I

    aget v9, v9, v10

    aput v9, v4, v10

    const/4 v15, 0x1

    :goto_7
    if-ge v15, v5, :cond_6

    iget-object v9, v2, LYl/e;->a:[I

    sub-int v10, v5, v15

    aget v9, v9, v10

    aput v9, v1, v15

    iget-object v9, v8, LYl/e;->a:[I

    aget v9, v9, v10

    aput v9, v4, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_6
    new-instance v9, LYl/e;

    invoke-direct {v9, v1}, LYl/e;-><init>([I)V

    new-instance v1, LYl/e;

    invoke-direct {v1, v4}, LYl/e;-><init>([I)V

    invoke-interface {v14, v9}, LYl/i;->a(LYl/e;)LYl/e;

    move-result-object v4

    invoke-interface {v7, v1}, LYl/i;->a(LYl/e;)LYl/e;

    move-result-object v10

    invoke-virtual {v4, v10}, LYl/e;->h(LYl/e;)V

    invoke-virtual {v4}, LYl/e;->K()LYl/k;

    move-result-object v4

    invoke-virtual {v9, v3}, LYl/e;->c(LYl/b;)LYl/b;

    move-result-object v9

    invoke-virtual {v1, v0}, LYl/e;->c(LYl/b;)LYl/b;

    move-result-object v1

    invoke-virtual {v9, v1}, LYl/b;->a(LYl/b;)V

    iget-object v1, v4, LYl/k;->a:LYl/b;

    invoke-virtual {v9, v1}, LYl/b;->j(LYl/b;)LYl/b;

    move-result-object v1

    iget-object v4, v4, LYl/k;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, LYl/b;->d(Ljava/math/BigInteger;)V

    goto :goto_9

    :cond_7
    const/4 v4, 0x1

    :goto_8
    if-ge v4, v5, :cond_8

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v4, v4, 0xa

    goto :goto_8

    :cond_8
    iget-object v4, v1, LYl/k;->a:LYl/b;

    new-instance v11, Ljava/math/BigDecimal;

    iget-object v1, v1, LYl/k;->b:Ljava/math/BigInteger;

    invoke-direct {v11, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3}, LYl/b;->g()I

    move-result v1

    const/4 v12, 0x1

    add-int/2addr v1, v12

    add-int/2addr v1, v10

    invoke-virtual {v4, v11, v1}, LYl/b;->c(Ljava/math/BigDecimal;I)LYl/a;

    move-result-object v1

    iget-object v4, v9, LYl/k;->a:LYl/b;

    new-instance v11, Ljava/math/BigDecimal;

    iget-object v9, v9, LYl/k;->b:Ljava/math/BigInteger;

    invoke-direct {v11, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, LYl/b;->g()I

    move-result v9

    add-int/2addr v9, v12

    add-int/2addr v9, v10

    invoke-virtual {v4, v11, v9}, LYl/b;->c(Ljava/math/BigDecimal;I)LYl/a;

    move-result-object v4

    invoke-virtual {v1, v3}, LYl/a;->g(LYl/b;)LYl/a;

    move-result-object v1

    invoke-virtual {v4, v0}, LYl/a;->g(LYl/b;)LYl/a;

    move-result-object v4

    invoke-virtual {v1, v4}, LYl/a;->a(LYl/a;)V

    invoke-virtual {v1}, LYl/a;->e()V

    invoke-virtual {v1}, LYl/a;->i()LYl/b;

    move-result-object v1

    :goto_9
    invoke-virtual {v3}, LYl/b;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LYl/b;

    invoke-interface {v14, v1}, LYl/i;->c(LYl/b;)LYl/b;

    move-result-object v4

    invoke-virtual {v3, v4}, LYl/b;->n(LYl/b;)V

    invoke-virtual {v0}, LYl/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LYl/b;

    invoke-interface {v7, v1}, LYl/i;->c(LYl/b;)LYl/b;

    move-result-object v1

    invoke-virtual {v0, v1}, LYl/b;->n(LYl/b;)V

    new-instance v9, LYl/e;

    invoke-direct {v9, v3}, LYl/e;-><init>(LYl/b;)V

    new-instance v10, LYl/e;

    invoke-direct {v10, v0}, LYl/e;-><init>(LYl/b;)V

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-virtual/range {v0 .. v5}, LSl/m;->f(LYl/e;LYl/e;LYl/e;LYl/e;I)V

    move-object/from16 v8, v24

    if-nez v19, :cond_9

    invoke-interface {v7, v8, v13}, LYl/i;->e(LYl/e;I)LYl/e;

    move-result-object v0

    move-object/from16 v19, v9

    goto :goto_a

    :cond_9
    invoke-virtual {v9, v8, v13}, LYl/e;->e(LYl/e;I)LYl/e;

    move-result-object v0

    move-object/from16 v19, v7

    :goto_a
    invoke-virtual {v0, v13}, LYl/e;->D(I)V

    new-instance v1, LSl/m$c;

    iget-object v2, v6, LSl/m;->g:LSl/l;

    move-object/from16 v17, v1

    move-object/from16 v18, v14

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v23}, LSl/m$c;-><init>(LYl/i;LYl/i;LYl/e;LYl/e;LYl/e;LSl/l;)V

    return-object v1
.end method

.method public d()LSl/o$a;
    .locals 2

    :cond_0
    invoke-virtual {p0}, LSl/m;->c()LSl/m$c;

    move-result-object v0

    invoke-virtual {v0}, LSl/m$c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public e()LBi/c;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LSl/m;->g:LSl/l;

    iget v1, v1, LSl/l;->j:I

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0}, LSl/m;->d()LSl/o$a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    new-instance v2, LSl/p;

    iget-object v3, v3, LSl/o$a;->c:LYl/e;

    iget-object v4, p0, LSl/m;->g:LSl/l;

    invoke-virtual {v4}, LSl/l;->d()LSl/n;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LSl/p;-><init>(LYl/e;LSl/n;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    new-instance v1, LSl/o;

    invoke-direct {v1, v0, v2}, LSl/o;-><init>(Ljava/util/List;LSl/p;)V

    new-instance v0, LBi/c;

    invoke-direct {v0, v2, v1}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v0
.end method

.method public final f(LYl/e;LYl/e;LYl/e;LYl/e;I)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_0

    mul-int/lit8 v8, v4, 0x2

    iget-object v9, v0, LYl/e;->a:[I

    aget v9, v9, v6

    mul-int/2addr v9, v9

    iget-object v10, v1, LYl/e;->a:[I

    aget v10, v10, v6

    mul-int/2addr v10, v10

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v7, -0x4

    invoke-virtual/range {p1 .. p1}, LYl/e;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LYl/e;

    invoke-virtual/range {p2 .. p2}, LYl/e;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LYl/e;

    move v9, v5

    move v10, v9

    :goto_1
    if-ge v9, v4, :cond_4

    if-ge v10, v4, :cond_4

    move v11, v5

    move v12, v11

    :goto_2
    if-ge v11, v4, :cond_1

    iget-object v13, v2, LYl/e;->a:[I

    aget v13, v13, v11

    iget-object v14, v0, LYl/e;->a:[I

    aget v14, v14, v11

    mul-int/2addr v13, v14

    iget-object v14, v3, LYl/e;->a:[I

    aget v14, v14, v11

    iget-object v15, v1, LYl/e;->a:[I

    aget v15, v15, v11

    mul-int/2addr v14, v15

    mul-int/lit8 v15, v4, 0x4

    add-int/2addr v13, v14

    mul-int/2addr v15, v13

    add-int/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual/range {p3 .. p3}, LYl/e;->T()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, LYl/e;->T()I

    move-result v13

    add-int/2addr v11, v13

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v12, v11

    if-le v12, v7, :cond_2

    invoke-virtual {v2, v6}, LYl/e;->R(LYl/e;)V

    invoke-virtual {v3, v8}, LYl/e;->R(LYl/e;)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v10, v5

    goto :goto_4

    :cond_2
    neg-int v11, v7

    if-ge v12, v11, :cond_3

    invoke-virtual {v2, v6}, LYl/e;->h(LYl/e;)V

    invoke-virtual {v3, v8}, LYl/e;->h(LYl/e;)V

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6}, LYl/e;->M()V

    invoke-virtual {v8}, LYl/e;->M()V

    goto :goto_1

    :cond_4
    return-void
.end method
