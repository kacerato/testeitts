.class public Lql/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/h;


# instance fields
.field public a:Lql/I;

.field public b:Lql/J;

.field public c:Lql/H;

.field public d:Lql/k;

.field public e:Lql/h;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f([BLql/j;)Lql/p;
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lql/M;->c:Lql/H;

    invoke-virtual {v1}, Lql/H;->h()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lql/M;->d:Lql/k;

    iget-object v1, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v1}, Lql/I;->m()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lql/k;->k([BLql/j;)[B

    move-result-object v1

    iget-object v2, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v2}, Lql/I;->j()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lql/k;->l([B[B)V

    iget-object v0, p0, Lql/M;->d:Lql/k;

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


# virtual methods
.method public a(ZLBi/k;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lql/M;->f:Z

    iput-boolean v0, p0, Lql/M;->g:Z

    check-cast p2, Lql/I;

    iput-object p2, p0, Lql/M;->a:Lql/I;

    invoke-virtual {p2}, Lql/I;->i()Lql/H;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lql/M;->c:Lql/H;

    goto :goto_1

    :cond_0
    iput-boolean v0, p0, Lql/M;->f:Z

    check-cast p2, Lql/J;

    iput-object p2, p0, Lql/M;->b:Lql/J;

    invoke-virtual {p2}, Lql/J;->e()Lql/H;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lql/M;->c:Lql/H;

    invoke-virtual {p1}, Lql/H;->i()Lql/k;

    move-result-object p1

    iput-object p1, p0, Lql/M;->d:Lql/k;

    invoke-virtual {p1}, Lql/k;->d()Lql/h;

    move-result-object p1

    iput-object p1, p0, Lql/M;->e:Lql/h;

    return-void
.end method

.method public b([B)[B
    .locals 7

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lql/M;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lql/M;->a:Lql/I;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v1}, Lql/I;->S0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v1}, Lql/I;->f()Lql/a;

    move-result-object v1

    invoke-virtual {v1}, Lql/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v1}, Lql/I;->g()I

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lql/M;->g:Z

    iget-object v2, p0, Lql/M;->e:Lql/h;

    iget-object v3, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v3}, Lql/I;->l()[B

    move-result-object v3

    int-to-long v4, v1

    const/16 v6, 0x20

    invoke-static {v4, v5, v6}, Lql/O;->t(JI)[B

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lql/h;->d([B[B)[B

    move-result-object v2

    iget-object v3, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v3}, Lql/I;->k()[B

    move-result-object v3

    iget-object v6, p0, Lql/M;->c:Lql/H;

    invoke-virtual {v6}, Lql/H;->h()I

    move-result v6

    invoke-static {v4, v5, v6}, Lql/O;->t(JI)[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object v3

    iget-object v4, p0, Lql/M;->e:Lql/h;

    invoke-virtual {v4, v3, p1}, Lql/h;->c([B[B)[B

    move-result-object p1

    new-instance v3, Lql/j$b;

    invoke-direct {v3}, Lql/j$b;-><init>()V

    invoke-virtual {v3, v1}, Lql/j$b;->p(I)Lql/j$b;

    move-result-object v3

    invoke-virtual {v3}, Lql/j$b;->e()Lql/r;

    move-result-object v3

    check-cast v3, Lql/j;

    invoke-direct {p0, p1, v3}, Lql/M;->f([BLql/j;)Lql/p;

    move-result-object p1

    new-instance v3, Lql/L$b;

    iget-object v4, p0, Lql/M;->c:Lql/H;

    invoke-direct {v3, v4}, Lql/L$b;-><init>(Lql/H;)V

    invoke-virtual {v3, v1}, Lql/L$b;->l(I)Lql/L$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lql/L$b;->m([B)Lql/L$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lql/K$a;->h(Lql/p;)Lql/K$a;

    move-result-object p1

    iget-object v1, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v1}, Lql/I;->f()Lql/a;

    move-result-object v1

    invoke-virtual {v1}, Lql/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lql/K$a;->f(Ljava/util/List;)Lql/K$a;

    move-result-object p1

    invoke-virtual {p1}, Lql/K$a;->e()Lql/K;

    move-result-object p1

    invoke-virtual {p1}, Lql/K;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v1}, Lql/I;->f()Lql/a;

    move-result-object v1

    invoke-virtual {v1}, Lql/a;->j()V

    iget-object v1, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v1}, Lql/I;->n()Lql/I;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    iget-object v1, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v1}, Lql/I;->f()Lql/a;

    move-result-object v1

    invoke-virtual {v1}, Lql/a;->j()V

    iget-object v1, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v1}, Lql/I;->n()Lql/I;

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "not initialized"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/pqc/crypto/ExhaustedPrivateKeyException;

    const-string v1, "no usages of private key remaining"

    invoke-direct {p1, v1}, Lorg/bouncycastle/pqc/crypto/ExhaustedPrivateKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "signing key no longer usable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "signer not initialized for signature generation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "message == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()LXi/c;
    .locals 3

    iget-object v0, p0, Lql/M;->a:Lql/I;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lql/M;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lql/M;->a:Lql/I;

    const/4 v2, 0x0

    iput-object v2, p0, Lql/M;->a:Lql/I;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lql/M;->a:Lql/I;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lql/I;->h()Lql/I;

    move-result-object v2

    iput-object v2, p0, Lql/M;->a:Lql/I;

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d([B[B)Z
    .locals 6

    new-instance v0, Lql/L$b;

    iget-object v1, p0, Lql/M;->c:Lql/H;

    invoke-direct {v0, v1}, Lql/L$b;-><init>(Lql/H;)V

    invoke-virtual {v0, p2}, Lql/L$b;->n([B)Lql/L$b;

    move-result-object p2

    invoke-virtual {p2}, Lql/L$b;->k()Lql/L;

    move-result-object v3

    invoke-virtual {v3}, Lql/L;->d()I

    move-result p2

    iget-object v0, p0, Lql/M;->d:Lql/k;

    iget-object v1, p0, Lql/M;->c:Lql/H;

    invoke-virtual {v1}, Lql/H;->h()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lql/M;->b:Lql/J;

    invoke-virtual {v2}, Lql/J;->f()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lql/k;->l([B[B)V

    invoke-virtual {v3}, Lql/L;->e()[B

    move-result-object v0

    iget-object v1, p0, Lql/M;->b:Lql/J;

    invoke-virtual {v1}, Lql/J;->g()[B

    move-result-object v1

    int-to-long v4, p2

    iget-object v2, p0, Lql/M;->c:Lql/H;

    invoke-virtual {v2}, Lql/H;->h()I

    move-result v2

    invoke-static {v4, v5, v2}, Lql/O;->t(JI)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object v0

    iget-object v1, p0, Lql/M;->e:Lql/h;

    invoke-virtual {v1, v0, p1}, Lql/h;->c([B[B)[B

    move-result-object v2

    iget-object p1, p0, Lql/M;->c:Lql/H;

    invoke-virtual {p1}, Lql/H;->b()I

    move-result v1

    invoke-static {v4, v5, v1}, Lql/O;->k(JI)I

    move-result v5

    new-instance p1, Lql/j$b;

    invoke-direct {p1}, Lql/j$b;-><init>()V

    invoke-virtual {p1, p2}, Lql/j$b;->p(I)Lql/j$b;

    move-result-object p1

    invoke-virtual {p1}, Lql/j$b;->e()Lql/r;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lql/j;

    iget-object v0, p0, Lql/M;->d:Lql/k;

    invoke-static/range {v0 .. v5}, Lql/P;->a(Lql/k;I[BLql/K;Lql/j;I)Lql/E;

    move-result-object p1

    invoke-virtual {p1}, Lql/E;->b()[B

    move-result-object p1

    iget-object p2, p0, Lql/M;->b:Lql/J;

    invoke-virtual {p2}, Lql/J;->g()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1

    return p1
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lql/M;->a:Lql/I;

    invoke-virtual {v0}, Lql/I;->S0()J

    move-result-wide v0

    return-wide v0
.end method
