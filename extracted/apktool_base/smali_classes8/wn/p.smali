.class public Lwn/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwn/p$a;,
        Lwn/p$b;
    }
.end annotation


# instance fields
.field public final a:Lwn/p$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lwn/p;->a:Lwn/p$a;

    return-void
.end method

.method public constructor <init>(Lwn/p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressListener"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lwn/p;->a:Lwn/p$a;

    return-void
.end method

.method public static synthetic a(Lwn/p;Lxn/c;Lwn/t;[F[FIILjava/util/concurrent/atomic/AtomicInteger;IILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-virtual/range {p0 .. p11}, Lwn/p;->k(Lxn/c;Lwn/t;[F[FIILjava/util/concurrent/atomic/AtomicInteger;IILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public b(IILxn/b;Lwn/t;Lwn/h;Lwn/N;)Lwn/p$b;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tileX",
            "tileZ",
            "geom",
            "cfg",
            "solid",
            "ctx"
        }
    .end annotation

    invoke-virtual {p0, p5, p4, p6}, Lwn/p;->j(Lwn/h;Lwn/t;Lwn/N;)V

    invoke-virtual {p0, p3, p4, p6, p5}, Lwn/p;->d(Lxn/b;Lwn/t;Lwn/N;Lwn/h;)Lwn/c;

    move-result-object v4

    iget-object p3, p4, Lwn/t;->a:Lwn/u$a;

    sget-object v0, Lwn/u$a;->WATERSHED:Lwn/u$a;

    if-ne p3, v0, :cond_0

    invoke-static {p6, v4}, Lwn/H;->e(Lwn/N;Lwn/c;)V

    iget p3, p4, Lwn/t;->m:I

    iget v0, p4, Lwn/t;->n:I

    invoke-static {p6, v4, p3, v0}, Lwn/H;->g(Lwn/N;Lwn/c;II)V

    goto :goto_0

    :cond_0
    sget-object v0, Lwn/u$a;->MONOTONE:Lwn/u$a;

    if-ne p3, v0, :cond_1

    iget p3, p4, Lwn/t;->m:I

    iget v0, p4, Lwn/t;->n:I

    invoke-static {p6, v4, p3, v0}, Lwn/H;->h(Lwn/N;Lwn/c;II)V

    goto :goto_0

    :cond_1
    iget p3, p4, Lwn/t;->m:I

    invoke-static {p6, v4, p3}, Lwn/H;->f(Lwn/N;Lwn/c;I)V

    :goto_0
    iget p3, p4, Lwn/t;->l:F

    iget v0, p4, Lwn/t;->k:I

    sget v1, Lwn/u;->k:I

    invoke-static {p6, v4, p3, v0, v1}, Lwn/v;->a(Lwn/N;Lwn/c;FII)Lwn/f;

    move-result-object v5

    iget p3, p4, Lwn/t;->o:I

    invoke-static {p6, v5, p3}, Lwn/E;->e(Lwn/N;Lwn/f;I)Lwn/k;

    move-result-object v6

    iget-boolean p3, p4, Lwn/t;->v:Z

    if-eqz p3, :cond_2

    iget p3, p4, Lwn/t;->p:F

    iget p4, p4, Lwn/t;->q:F

    invoke-static {p6, v6, v4, p3, p4}, Lwn/F;->c(Lwn/N;Lwn/k;Lwn/c;FF)Lwn/l;

    move-result-object p3

    :goto_1
    move-object v7, p3

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    goto :goto_1

    :goto_2
    new-instance p3, Lwn/p$b;

    move-object v0, p3

    move v1, p1

    move v2, p2

    move-object v3, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lwn/p$b;-><init>(IILwn/h;Lwn/c;Lwn/f;Lwn/k;Lwn/l;Lwn/N;)V

    return-object p3
.end method

.method public c(Lxn/c;Lwn/q;)Lwn/p$b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "geom",
            "builderCfg"
        }
    .end annotation

    iget-object v4, p2, Lwn/q;->a:Lwn/t;

    new-instance v6, Lwn/N;

    invoke-direct {v6}, Lwn/N;-><init>()V

    invoke-static {p1, p2, v6}, Lwn/J;->a(Lxn/c;Lwn/q;Lwn/N;)Lwn/h;

    move-result-object v5

    iget v1, p2, Lwn/q;->b:I

    iget v2, p2, Lwn/q;->c:I

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lwn/p;->b(IILxn/b;Lwn/t;Lwn/h;Lwn/N;)Lwn/p$b;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lxn/b;Lwn/t;Lwn/N;Lwn/h;)Lwn/c;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "volumeProvider",
            "cfg",
            "ctx",
            "solid"
        }
    .end annotation

    iget v0, p2, Lwn/t;->h:I

    iget v1, p2, Lwn/t;->i:I

    invoke-static {p3, v0, v1, p4}, Lwn/s;->a(Lwn/N;IILwn/h;)Lwn/c;

    move-result-object p4

    iget p2, p2, Lwn/t;->j:I

    invoke-static {p3, p2, p4}, Lwn/n;->a(Lwn/N;ILwn/c;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lxn/b;->a()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lwn/g;

    iget-object v3, p2, Lwn/g;->a:[F

    iget v4, p2, Lwn/g;->b:F

    iget v5, p2, Lwn/g;->c:F

    iget-object v6, p2, Lwn/g;->d:Lwn/a;

    move-object v2, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lwn/n;->c(Lwn/N;[FFFLwn/a;Lwn/c;)V

    goto :goto_0

    :cond_0
    return-object p4
.end method

.method public e(Lxn/c;Lwn/q;)Lwn/i;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "geom",
            "builderCfg"
        }
    .end annotation

    new-instance v0, Lwn/N;

    invoke-direct {v0}, Lwn/N;-><init>()V

    invoke-static {p1, p2, v0}, Lwn/J;->a(Lxn/c;Lwn/q;Lwn/N;)Lwn/h;

    move-result-object v1

    iget-object v2, p2, Lwn/q;->a:Lwn/t;

    invoke-virtual {p0, v1, v2, v0}, Lwn/p;->j(Lwn/h;Lwn/t;Lwn/N;)V

    iget-object v2, p2, Lwn/q;->a:Lwn/t;

    invoke-virtual {p0, p1, v2, v0, v1}, Lwn/p;->d(Lxn/b;Lwn/t;Lwn/N;Lwn/h;)Lwn/c;

    move-result-object p1

    iget-object p2, p2, Lwn/q;->a:Lwn/t;

    iget p2, p2, Lwn/t;->h:I

    invoke-static {v0, p1, p2}, Lwn/D;->b(Lwn/N;Lwn/c;I)Lwn/i;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lxn/c;Lwn/t;[F[FIILjava/util/concurrent/Executor;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "geom",
            "cfg",
            "bmin",
            "bmax",
            "tw",
            "th",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxn/c;",
            "Lwn/t;",
            "[F[FII",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/List<",
            "Lwn/p$b;",
            ">;"
        }
    .end annotation

    move/from16 v13, p5

    move/from16 v14, p6

    new-instance v15, Ljava/util/ArrayList;

    mul-int v0, v13, v14

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v16, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v12, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/16 v17, 0x0

    move/from16 v11, v17

    :goto_0
    if-ge v11, v13, :cond_1

    move/from16 v10, v17

    :goto_1
    if-ge v10, v14, :cond_0

    new-instance v9, Lwn/o;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v11

    move v7, v10

    move-object/from16 v8, v16

    move-object v13, v9

    move/from16 v9, p5

    move/from16 v18, v10

    move/from16 v10, p6

    move/from16 v19, v11

    move-object v11, v15

    move-object/from16 v20, v12

    invoke-direct/range {v0 .. v12}, Lwn/o;-><init>(Lwn/p;Lxn/c;Lwn/t;[F[FIILjava/util/concurrent/atomic/AtomicInteger;IILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v0, p7

    invoke-interface {v0, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v10, v18, 0x1

    move/from16 v13, p5

    move/from16 v11, v19

    goto :goto_1

    :cond_0
    move-object/from16 v0, p7

    move/from16 v19, v11

    move-object/from16 v20, v12

    add-int/lit8 v11, v19, 0x1

    move/from16 v13, p5

    goto :goto_0

    :cond_1
    move-object/from16 v20, v12

    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v15
.end method

.method public final g(Lxn/c;Lwn/t;[F[FII)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "geom",
            "cfg",
            "bmin",
            "bmax",
            "tw",
            "th"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxn/c;",
            "Lwn/t;",
            "[F[FII)",
            "Ljava/util/List<",
            "Lwn/p$b;",
            ">;"
        }
    .end annotation

    move/from16 v0, p5

    move/from16 v1, p6

    new-instance v2, Ljava/util/ArrayList;

    mul-int v12, v0, v1

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v1, :cond_1

    move v11, v14

    :goto_1
    if-ge v11, v0, :cond_0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v8, v11

    move v9, v15

    move-object v10, v13

    move/from16 v16, v11

    move v11, v12

    invoke-virtual/range {v3 .. v11}, Lwn/p;->h(Lxn/c;Lwn/t;[F[FIILjava/util/concurrent/atomic/AtomicInteger;I)Lwn/p$b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v16, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public final h(Lxn/c;Lwn/t;[F[FIILjava/util/concurrent/atomic/AtomicInteger;I)Lwn/p$b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "geom",
            "cfg",
            "bmin",
            "bmax",
            "tx",
            "ty",
            "counter",
            "total"
        }
    .end annotation

    new-instance v6, Lwn/q;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lwn/q;-><init>(Lwn/t;[F[FII)V

    invoke-virtual {p0, p1, v6}, Lwn/p;->c(Lxn/c;Lwn/q;)Lwn/p$b;

    move-result-object p1

    iget-object p2, p0, Lwn/p;->a:Lwn/p$a;

    if-eqz p2, :cond_0

    invoke-virtual {p7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    invoke-interface {p2, p3, p8}, Lwn/p$a;->a(II)V

    :cond_0
    return-object p1
.end method

.method public i(Lxn/c;Lwn/t;Ljava/util/Optional;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "geom",
            "cfg",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxn/c;",
            "Lwn/t;",
            "Ljava/util/Optional<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Ljava/util/List<",
            "Lwn/p$b;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lxn/c;->c()[F

    move-result-object v3

    invoke-interface {p1}, Lxn/c;->d()[F

    move-result-object v4

    iget v0, p2, Lwn/t;->e:F

    iget v1, p2, Lwn/t;->c:I

    iget v2, p2, Lwn/t;->d:I

    invoke-static {v3, v4, v0, v1, v2}, Lwn/m;->c([F[FFII)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v5, v0, v1

    const/4 v1, 0x1

    aget v6, v0, v1

    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Ljava/util/concurrent/Executor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lwn/p;->f(Lxn/c;Lwn/t;[F[FIILjava/util/concurrent/Executor;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lwn/p;->g(Lxn/c;Lwn/t;[F[FII)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final j(Lwn/h;Lwn/t;Lwn/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "solid",
            "cfg",
            "ctx"
        }
    .end annotation

    iget-boolean v0, p2, Lwn/t;->s:Z

    if-eqz v0, :cond_0

    iget v0, p2, Lwn/t;->i:I

    invoke-static {p3, v0, p1}, Lwn/C;->b(Lwn/N;ILwn/h;)V

    :cond_0
    iget-boolean v0, p2, Lwn/t;->t:Z

    if-eqz v0, :cond_1

    iget v0, p2, Lwn/t;->h:I

    iget v1, p2, Lwn/t;->i:I

    invoke-static {p3, v0, v1, p1}, Lwn/C;->a(Lwn/N;IILwn/h;)V

    :cond_1
    iget-boolean v0, p2, Lwn/t;->u:Z

    if-eqz v0, :cond_2

    iget p2, p2, Lwn/t;->h:I

    invoke-static {p3, p2, p1}, Lwn/C;->c(Lwn/N;ILwn/h;)V

    :cond_2
    return-void
.end method

.method public final synthetic k(Lxn/c;Lwn/t;[F[FIILjava/util/concurrent/atomic/AtomicInteger;IILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 11

    move-object/from16 v1, p10

    mul-int v10, p8, p9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    :try_start_0
    invoke-virtual/range {v2 .. v10}, Lwn/p;->h(Lxn/c;Lwn/t;[F[FIILjava/util/concurrent/atomic/AtomicInteger;I)Lwn/p$b;

    move-result-object v0

    monitor-enter p10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual/range {p11 .. p11}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
