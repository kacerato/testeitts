.class public Lql/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/h;


# instance fields
.field public a:Lql/A;

.field public b:Lql/B;

.field public c:Lql/z;

.field public d:Lql/H;

.field public e:Lql/k;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lql/D;->g:Z

    iput-boolean v0, p0, Lql/D;->f:Z

    check-cast p2, Lql/A;

    iput-object p2, p0, Lql/D;->a:Lql/A;

    invoke-virtual {p2}, Lql/A;->i()Lql/z;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lql/D;->c:Lql/z;

    invoke-virtual {p1}, Lql/z;->j()Lql/H;

    move-result-object p1

    iput-object p1, p0, Lql/D;->d:Lql/H;

    goto :goto_1

    :cond_0
    iput-boolean v0, p0, Lql/D;->g:Z

    check-cast p2, Lql/B;

    iput-object p2, p0, Lql/D;->b:Lql/B;

    invoke-virtual {p2}, Lql/B;->e()Lql/z;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lql/D;->c:Lql/z;

    invoke-virtual {p1}, Lql/z;->h()Lql/k;

    move-result-object p1

    iput-object p1, p0, Lql/D;->e:Lql/k;

    return-void
.end method

.method public b([B)[B
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_a

    iget-boolean v2, v1, Lql/D;->g:Z

    if-eqz v2, :cond_9

    iget-object v2, v1, Lql/D;->a:Lql/A;

    if-eqz v2, :cond_8

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v3}, Lql/A;->S0()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    iget-object v3, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v3}, Lql/A;->f()Lql/b;

    move-result-object v3

    invoke-virtual {v3}, Lql/b;->c()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_6

    :try_start_1
    iget-object v3, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v3}, Lql/A;->f()Lql/b;

    move-result-object v3

    iget-object v4, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v4}, Lql/A;->g()J

    move-result-wide v7

    iget-object v4, v1, Lql/D;->c:Lql/z;

    invoke-virtual {v4}, Lql/z;->a()I

    iget-object v4, v1, Lql/D;->d:Lql/H;

    invoke-virtual {v4}, Lql/H;->b()I

    move-result v4

    iget-object v9, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v9}, Lql/A;->S0()J

    move-result-wide v9

    cmp-long v5, v9, v5

    if-lez v5, :cond_5

    iget-object v5, v1, Lql/D;->e:Lql/k;

    invoke-virtual {v5}, Lql/k;->d()Lql/h;

    move-result-object v5

    iget-object v6, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v6}, Lql/A;->l()[B

    move-result-object v6

    const/16 v9, 0x20

    invoke-static {v7, v8, v9}, Lql/O;->t(JI)[B

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lql/h;->d([B[B)[B

    move-result-object v5

    iget-object v6, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v6}, Lql/A;->k()[B

    move-result-object v6

    iget-object v9, v1, Lql/D;->c:Lql/z;

    invoke-virtual {v9}, Lql/z;->g()I

    move-result v9

    invoke-static {v7, v8, v9}, Lql/O;->t(JI)[B

    move-result-object v9

    invoke-static {v5, v6, v9}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object v6

    iget-object v9, v1, Lql/D;->e:Lql/k;

    invoke-virtual {v9}, Lql/k;->d()Lql/h;

    move-result-object v9

    invoke-virtual {v9, v6, v0}, Lql/h;->c([B[B)[B

    move-result-object v0

    const/4 v6, 0x1

    iput-boolean v6, v1, Lql/D;->f:Z

    new-instance v9, Lql/C$b;

    iget-object v10, v1, Lql/D;->c:Lql/z;

    invoke-direct {v9, v10}, Lql/C$b;-><init>(Lql/z;)V

    invoke-virtual {v9, v7, v8}, Lql/C$b;->g(J)Lql/C$b;

    move-result-object v9

    invoke-virtual {v9, v5}, Lql/C$b;->h([B)Lql/C$b;

    move-result-object v5

    invoke-virtual {v5}, Lql/C$b;->f()Lql/C;

    move-result-object v5

    invoke-static {v7, v8, v4}, Lql/O;->l(JI)J

    move-result-wide v9

    invoke-static {v7, v8, v4}, Lql/O;->k(JI)I

    move-result v11

    iget-object v12, v1, Lql/D;->e:Lql/k;

    iget-object v13, v1, Lql/D;->c:Lql/z;

    invoke-virtual {v13}, Lql/z;->g()I

    move-result v13

    new-array v13, v13, [B

    iget-object v14, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v14}, Lql/A;->j()[B

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lql/k;->l([B[B)V

    new-instance v12, Lql/j$b;

    invoke-direct {v12}, Lql/j$b;-><init>()V

    invoke-virtual {v12, v9, v10}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v12

    check-cast v12, Lql/j$b;

    invoke-virtual {v12, v11}, Lql/j$b;->p(I)Lql/j$b;

    move-result-object v12

    invoke-virtual {v12}, Lql/j$b;->e()Lql/r;

    move-result-object v12

    check-cast v12, Lql/j;

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lql/b;->a(I)Lql/a;

    move-result-object v14

    if-eqz v14, :cond_0

    if-nez v11, :cond_1

    :cond_0
    new-instance v11, Lql/a;

    iget-object v14, v1, Lql/D;->d:Lql/H;

    iget-object v15, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v15}, Lql/A;->j()[B

    move-result-object v15

    iget-object v6, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v6}, Lql/A;->m()[B

    move-result-object v6

    invoke-direct {v11, v14, v15, v6, v12}, Lql/a;-><init>(Lql/H;[B[BLql/j;)V

    invoke-virtual {v3, v13, v11}, Lql/b;->d(ILql/a;)V

    :cond_1
    invoke-virtual {v1, v0, v12}, Lql/D;->f([BLql/j;)Lql/p;

    move-result-object v0

    new-instance v6, Lql/K$a;

    iget-object v11, v1, Lql/D;->d:Lql/H;

    invoke-direct {v6, v11}, Lql/K$a;-><init>(Lql/H;)V

    invoke-virtual {v6, v0}, Lql/K$a;->h(Lql/p;)Lql/K$a;

    move-result-object v0

    invoke-virtual {v3, v13}, Lql/b;->a(I)Lql/a;

    move-result-object v6

    invoke-virtual {v6}, Lql/a;->a()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Lql/K$a;->f(Ljava/util/List;)Lql/K$a;

    move-result-object v0

    invoke-virtual {v0}, Lql/K$a;->e()Lql/K;

    move-result-object v0

    invoke-virtual {v5}, Lql/C;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :goto_0
    iget-object v0, v1, Lql/D;->c:Lql/z;

    invoke-virtual {v0}, Lql/z;->b()I

    move-result v0

    if-ge v6, v0, :cond_4

    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v3, v0}, Lql/b;->a(I)Lql/a;

    move-result-object v0

    invoke-virtual {v0}, Lql/a;->f()Lql/E;

    move-result-object v0

    invoke-static {v9, v10, v4}, Lql/O;->k(JI)I

    move-result v11

    invoke-static {v9, v10, v4}, Lql/O;->l(JI)J

    move-result-wide v9

    new-instance v12, Lql/j$b;

    invoke-direct {v12}, Lql/j$b;-><init>()V

    invoke-virtual {v12, v6}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v12

    check-cast v12, Lql/j$b;

    invoke-virtual {v12, v9, v10}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v12

    check-cast v12, Lql/j$b;

    invoke-virtual {v12, v11}, Lql/j$b;->p(I)Lql/j$b;

    move-result-object v11

    invoke-virtual {v11}, Lql/j$b;->e()Lql/r;

    move-result-object v11

    check-cast v11, Lql/j;

    invoke-virtual {v0}, Lql/E;->b()[B

    move-result-object v0

    invoke-virtual {v1, v0, v11}, Lql/D;->f([BLql/j;)Lql/p;

    move-result-object v0

    invoke-virtual {v3, v6}, Lql/b;->a(I)Lql/a;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-static {v7, v8, v4, v6}, Lql/O;->p(JII)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v12, Lql/a;

    iget-object v13, v1, Lql/D;->d:Lql/H;

    iget-object v14, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v14}, Lql/A;->j()[B

    move-result-object v14

    iget-object v15, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v15}, Lql/A;->m()[B

    move-result-object v15

    invoke-direct {v12, v13, v14, v15, v11}, Lql/a;-><init>(Lql/H;[B[BLql/j;)V

    invoke-virtual {v3, v6, v12}, Lql/b;->d(ILql/a;)V

    :cond_3
    new-instance v11, Lql/K$a;

    iget-object v12, v1, Lql/D;->d:Lql/H;

    invoke-direct {v11, v12}, Lql/K$a;-><init>(Lql/H;)V

    invoke-virtual {v11, v0}, Lql/K$a;->h(Lql/p;)Lql/K$a;

    move-result-object v0

    invoke-virtual {v3, v6}, Lql/b;->a(I)Lql/a;

    move-result-object v11

    invoke-virtual {v11}, Lql/a;->a()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Lql/K$a;->f(Ljava/util/List;)Lql/K$a;

    move-result-object v0

    invoke-virtual {v0}, Lql/K$a;->e()Lql/K;

    move-result-object v0

    invoke-virtual {v5}, Lql/C;->c()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v5}, Lql/C;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v3}, Lql/A;->n()Lql/A;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "index out of bounds"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    iget-object v3, v1, Lql/D;->a:Lql/A;

    invoke-virtual {v3}, Lql/A;->n()Lql/A;

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "not initialized"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "no usages of private key remaining"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "signing key no longer usable"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "signer not initialized for signature generation"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "message == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()LXi/c;
    .locals 2

    iget-boolean v0, p0, Lql/D;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lql/D;->a:Lql/A;

    const/4 v1, 0x0

    iput-object v1, p0, Lql/D;->a:Lql/A;

    return-object v0

    :cond_0
    iget-object v0, p0, Lql/D;->a:Lql/A;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lql/A;->h()Lql/A;

    move-result-object v1

    iput-object v1, p0, Lql/D;->a:Lql/A;

    :cond_1
    return-object v0
.end method

.method public d([B[B)Z
    .locals 11

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lql/D;->b:Lql/B;

    if-eqz v0, :cond_1

    new-instance v0, Lql/C$b;

    iget-object v1, p0, Lql/D;->c:Lql/z;

    invoke-direct {v0, v1}, Lql/C$b;-><init>(Lql/z;)V

    invoke-virtual {v0, p2}, Lql/C$b;->j([B)Lql/C$b;

    move-result-object p2

    invoke-virtual {p2}, Lql/C$b;->f()Lql/C;

    move-result-object p2

    invoke-virtual {p2}, Lql/C;->b()[B

    move-result-object v0

    iget-object v1, p0, Lql/D;->b:Lql/B;

    invoke-virtual {v1}, Lql/B;->g()[B

    move-result-object v1

    invoke-virtual {p2}, Lql/C;->a()J

    move-result-wide v2

    iget-object v4, p0, Lql/D;->c:Lql/z;

    invoke-virtual {v4}, Lql/z;->g()I

    move-result v4

    invoke-static {v2, v3, v4}, Lql/O;->t(JI)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object v0

    iget-object v1, p0, Lql/D;->e:Lql/k;

    invoke-virtual {v1}, Lql/k;->d()Lql/h;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lql/h;->c([B[B)[B

    move-result-object v4

    invoke-virtual {p2}, Lql/C;->a()J

    move-result-wide v0

    iget-object p1, p0, Lql/D;->d:Lql/H;

    invoke-virtual {p1}, Lql/H;->b()I

    move-result p1

    invoke-static {v0, v1, p1}, Lql/O;->l(JI)J

    move-result-wide v8

    invoke-static {v0, v1, p1}, Lql/O;->k(JI)I

    move-result v7

    iget-object v0, p0, Lql/D;->e:Lql/k;

    iget-object v1, p0, Lql/D;->c:Lql/z;

    invoke-virtual {v1}, Lql/z;->g()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lql/D;->b:Lql/B;

    invoke-virtual {v2}, Lql/B;->f()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lql/k;->l([B[B)V

    new-instance v0, Lql/j$b;

    invoke-direct {v0}, Lql/j$b;-><init>()V

    invoke-virtual {v0, v8, v9}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v0

    check-cast v0, Lql/j$b;

    invoke-virtual {v0, v7}, Lql/j$b;->p(I)Lql/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lql/j$b;->e()Lql/r;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lql/j;

    invoke-virtual {p2}, Lql/C;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lql/K;

    iget-object v2, p0, Lql/D;->e:Lql/k;

    move v3, p1

    invoke-static/range {v2 .. v7}, Lql/P;->a(Lql/k;I[BLql/K;Lql/j;I)Lql/E;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lql/D;->c:Lql/z;

    invoke-virtual {v2}, Lql/z;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p2}, Lql/C;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lql/K;

    invoke-static {v8, v9, p1}, Lql/O;->k(JI)I

    move-result v10

    invoke-static {v8, v9, p1}, Lql/O;->l(JI)J

    move-result-wide v3

    new-instance v5, Lql/j$b;

    invoke-direct {v5}, Lql/j$b;-><init>()V

    invoke-virtual {v5, v1}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v5

    check-cast v5, Lql/j$b;

    invoke-virtual {v5, v3, v4}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v5

    check-cast v5, Lql/j$b;

    invoke-virtual {v5, v10}, Lql/j$b;->p(I)Lql/j$b;

    move-result-object v5

    invoke-virtual {v5}, Lql/j$b;->e()Lql/r;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lql/j;

    iget-object v5, p0, Lql/D;->e:Lql/k;

    invoke-virtual {v0}, Lql/E;->b()[B

    move-result-object v7

    move v6, p1

    move-object v8, v2

    invoke-static/range {v5 .. v10}, Lql/P;->a(Lql/k;I[BLql/K;Lql/j;I)Lql/E;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    move-wide v8, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lql/E;->b()[B

    move-result-object p1

    iget-object p2, p0, Lql/D;->b:Lql/B;

    invoke-virtual {p2}, Lql/B;->g()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "publicKey == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "signature == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "message == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lql/D;->a:Lql/A;

    invoke-virtual {v0}, Lql/A;->S0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f([BLql/j;)Lql/p;
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lql/D;->c:Lql/z;

    invoke-virtual {v1}, Lql/z;->g()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lql/D;->e:Lql/k;

    iget-object v1, p0, Lql/D;->a:Lql/A;

    invoke-virtual {v1}, Lql/A;->m()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lql/k;->k([BLql/j;)[B

    move-result-object v1

    iget-object v2, p0, Lql/D;->a:Lql/A;

    invoke-virtual {v2}, Lql/A;->j()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lql/k;->l([B[B)V

    iget-object v0, p0, Lql/D;->e:Lql/k;

    invoke-virtual {v0, p1, p2}, Lql/k;->m([BLql/j;)Lql/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "otsHashAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
