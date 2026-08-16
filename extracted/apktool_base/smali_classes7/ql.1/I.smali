.class public final Lql/I;
.super Lql/u;
.source "SourceFile"

# interfaces
.implements Lql/N;
.implements Lorg/bouncycastle/util/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lql/I$b;
    }
.end annotation


# instance fields
.field public final h:Lql/H;

.field public final i:[B

.field public final j:[B

.field public final k:[B

.field public final l:[B

.field public volatile m:Lql/a;


# direct methods
.method public constructor <init>(Lql/I$b;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lql/I$b;->a(Lql/I$b;)Lql/H;

    move-result-object v0

    invoke-virtual {v0}, Lql/H;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lql/u;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Lql/I$b;->a(Lql/I$b;)Lql/H;

    move-result-object v3

    iput-object v3, p0, Lql/I;->h:Lql/H;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lql/H;->h()I

    move-result v0

    invoke-static {p1}, Lql/I$b;->b(Lql/I$b;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lql/H;->b()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v1, v4, v5}, Lql/O;->n(IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-static {v2, v1, v0}, Lql/O;->i([BII)[B

    move-result-object v4

    iput-object v4, p0, Lql/I;->i:[B

    add-int/2addr v1, v0

    invoke-static {v2, v1, v0}, Lql/O;->i([BII)[B

    move-result-object v4

    iput-object v4, p0, Lql/I;->j:[B

    add-int/2addr v1, v0

    invoke-static {v2, v1, v0}, Lql/O;->i([BII)[B

    move-result-object v4

    iput-object v4, p0, Lql/I;->k:[B

    add-int/2addr v1, v0

    invoke-static {v2, v1, v0}, Lql/O;->i([BII)[B

    move-result-object v4

    iput-object v4, p0, Lql/I;->l:[B

    add-int/2addr v1, v0

    array-length v0, v2

    sub-int/2addr v0, v1

    invoke-static {v2, v1, v0}, Lql/O;->i([BII)[B

    move-result-object v0

    :try_start_0
    const-class v1, Lql/a;

    invoke-static {v0, v1}, Lql/O;->g([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql/a;

    invoke-virtual {v0}, Lql/a;->c()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lql/I$b;->a(Lql/I$b;)Lql/H;

    move-result-object p1

    invoke-virtual {p1}, Lql/H;->g()Loh/x;

    move-result-object p1

    invoke-virtual {v0, p1}, Lql/a;->o(Loh/x;)Lql/a;

    move-result-object p1

    iput-object p1, p0, Lql/I;->m:Lql/a;

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "serialized BDS has wrong index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lql/I$b;->c(Lql/I$b;)[B

    move-result-object v5

    if-eqz v5, :cond_4

    array-length v2, v5

    if-ne v2, v0, :cond_3

    iput-object v5, p0, Lql/I;->i:[B

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-array v2, v0, [B

    iput-object v2, p0, Lql/I;->i:[B

    :goto_2
    invoke-static {p1}, Lql/I$b;->d(Lql/I$b;)[B

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v4, v2

    if-ne v4, v0, :cond_5

    iput-object v2, p0, Lql/I;->j:[B

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-array v2, v0, [B

    iput-object v2, p0, Lql/I;->j:[B

    :goto_3
    invoke-static {p1}, Lql/I$b;->e(Lql/I$b;)[B

    move-result-object v4

    if-eqz v4, :cond_8

    array-length v2, v4

    if-ne v2, v0, :cond_7

    iput-object v4, p0, Lql/I;->k:[B

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-array v2, v0, [B

    iput-object v2, p0, Lql/I;->k:[B

    :goto_4
    invoke-static {p1}, Lql/I$b;->f(Lql/I$b;)[B

    move-result-object v2

    if-eqz v2, :cond_a

    array-length v6, v2

    if-ne v6, v0, :cond_9

    iput-object v2, p0, Lql/I;->l:[B

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of root needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-array v0, v0, [B

    iput-object v0, p0, Lql/I;->l:[B

    :goto_5
    invoke-static {p1}, Lql/I$b;->g(Lql/I$b;)Lql/a;

    move-result-object v0

    if-eqz v0, :cond_b

    :goto_6
    iput-object v0, p0, Lql/I;->m:Lql/a;

    goto :goto_7

    :cond_b
    invoke-static {p1}, Lql/I$b;->h(Lql/I$b;)I

    move-result v0

    invoke-virtual {v3}, Lql/H;->b()I

    move-result v2

    shl-int v2, v1, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_c

    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    new-instance v0, Lql/a;

    new-instance v1, Lql/j$b;

    invoke-direct {v1}, Lql/j$b;-><init>()V

    invoke-virtual {v1}, Lql/j$b;->e()Lql/r;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lql/j;

    invoke-static {p1}, Lql/I$b;->h(Lql/I$b;)I

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lql/a;-><init>(Lql/H;[B[BLql/j;I)V

    goto :goto_6

    :cond_c
    new-instance v0, Lql/a;

    invoke-virtual {v3}, Lql/H;->b()I

    move-result v2

    shl-int v2, v1, v2

    sub-int/2addr v2, v1

    invoke-static {p1}, Lql/I$b;->h(Lql/I$b;)I

    move-result v1

    invoke-direct {v0, v3, v2, v1}, Lql/a;-><init>(Lql/H;II)V

    goto :goto_6

    :goto_7
    invoke-static {p1}, Lql/I$b;->i(Lql/I$b;)I

    move-result v0

    if-ltz v0, :cond_e

    invoke-static {p1}, Lql/I$b;->i(Lql/I$b;)I

    move-result p1

    iget-object v0, p0, Lql/I;->m:Lql/a;

    invoke-virtual {v0}, Lql/a;->d()I

    move-result v0

    if-ne p1, v0, :cond_d

    goto :goto_8

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxIndex set but not reflected in state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_8
    return-void

    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "params == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lql/I$b;Lql/I$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lql/I;-><init>(Lql/I$b;)V

    return-void
.end method


# virtual methods
.method public S0()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lql/I;->m:Lql/a;

    invoke-virtual {v0}, Lql/a;->d()I

    move-result v0

    invoke-virtual {p0}, Lql/I;->g()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(I)Lql/I;
    .locals 6

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    monitor-enter p0

    int-to-long v1, p1

    :try_start_0
    invoke-virtual {p0}, Lql/I;->S0()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_2

    new-instance v3, Lql/I$b;

    iget-object v4, p0, Lql/I;->h:Lql/H;

    invoke-direct {v3, v4}, Lql/I$b;-><init>(Lql/H;)V

    iget-object v4, p0, Lql/I;->i:[B

    invoke-virtual {v3, v4}, Lql/I$b;->r([B)Lql/I$b;

    move-result-object v3

    iget-object v4, p0, Lql/I;->j:[B

    invoke-virtual {v3, v4}, Lql/I$b;->q([B)Lql/I$b;

    move-result-object v3

    iget-object v4, p0, Lql/I;->k:[B

    invoke-virtual {v3, v4}, Lql/I$b;->o([B)Lql/I$b;

    move-result-object v3

    iget-object v4, p0, Lql/I;->l:[B

    invoke-virtual {v3, v4}, Lql/I$b;->p([B)Lql/I$b;

    move-result-object v3

    invoke-virtual {p0}, Lql/I;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Lql/I$b;->l(I)Lql/I$b;

    move-result-object v3

    iget-object v4, p0, Lql/I;->m:Lql/a;

    iget-object v5, p0, Lql/I;->m:Lql/a;

    invoke-virtual {v5}, Lql/a;->c()I

    move-result v5

    add-int/2addr v5, p1

    sub-int/2addr v5, v0

    iget-object v0, p0, Lql/I;->h:Lql/H;

    invoke-virtual {v0}, Lql/H;->g()Loh/x;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lql/a;->n(ILoh/x;)Lql/a;

    move-result-object v0

    invoke-virtual {v3, v0}, Lql/I$b;->k(Lql/a;)Lql/I$b;

    move-result-object v0

    invoke-virtual {v0}, Lql/I$b;->j()Lql/I;

    move-result-object v0

    invoke-virtual {p0}, Lql/I;->S0()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Lql/a;

    iget-object v2, p0, Lql/I;->h:Lql/H;

    iget-object v3, p0, Lql/I;->m:Lql/a;

    invoke-virtual {v3}, Lql/a;->d()I

    move-result v3

    invoke-virtual {p0}, Lql/I;->g()I

    move-result v4

    add-int/2addr v4, p1

    invoke-direct {v1, v2, v3, v4}, Lql/a;-><init>(Lql/H;II)V

    iput-object v1, p0, Lql/I;->m:Lql/a;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance v1, Lql/j$b;

    invoke-direct {v1}, Lql/j$b;-><init>()V

    invoke-virtual {v1}, Lql/j$b;->e()Lql/r;

    move-result-object v1

    check-cast v1, Lql/j;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, p1, :cond_1

    iget-object v3, p0, Lql/I;->m:Lql/a;

    iget-object v4, p0, Lql/I;->k:[B

    iget-object v5, p0, Lql/I;->i:[B

    invoke-virtual {v3, v4, v5, v1}, Lql/a;->e([B[BLql/j;)Lql/a;

    move-result-object v3

    iput-object v3, p0, Lql/I;->m:Lql/a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "usageCount exceeds usages remaining"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot ask for a shard with 0 keys"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Lql/a;
    .locals 1

    iget-object v0, p0, Lql/I;->m:Lql/a;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lql/I;->m:Lql/a;

    invoke-virtual {v0}, Lql/a;->c()I

    move-result v0

    return v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lql/I;->toByteArray()[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Lql/I;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lql/I;->e(I)Lql/I;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()Lql/H;
    .locals 1

    iget-object v0, p0, Lql/I;->h:Lql/H;

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lql/I;->k:[B

    invoke-static {v0}, Lql/O;->d([B)[B

    move-result-object v0

    return-object v0
.end method

.method public k()[B
    .locals 1

    iget-object v0, p0, Lql/I;->l:[B

    invoke-static {v0}, Lql/O;->d([B)[B

    move-result-object v0

    return-object v0
.end method

.method public l()[B
    .locals 1

    iget-object v0, p0, Lql/I;->j:[B

    invoke-static {v0}, Lql/O;->d([B)[B

    move-result-object v0

    return-object v0
.end method

.method public m()[B
    .locals 1

    iget-object v0, p0, Lql/I;->i:[B

    invoke-static {v0}, Lql/O;->d([B)[B

    move-result-object v0

    return-object v0
.end method

.method public n()Lql/I;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lql/I;->m:Lql/a;

    invoke-virtual {v0}, Lql/a;->c()I

    move-result v0

    iget-object v1, p0, Lql/I;->m:Lql/a;

    invoke-virtual {v1}, Lql/a;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lql/I;->m:Lql/a;

    iget-object v1, p0, Lql/I;->k:[B

    iget-object v2, p0, Lql/I;->i:[B

    new-instance v3, Lql/j$b;

    invoke-direct {v3}, Lql/j$b;-><init>()V

    invoke-virtual {v3}, Lql/j$b;->e()Lql/r;

    move-result-object v3

    check-cast v3, Lql/j;

    invoke-virtual {v0, v1, v2, v3}, Lql/a;->e([B[BLql/j;)Lql/a;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lql/I;->m:Lql/a;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v0, Lql/a;

    iget-object v1, p0, Lql/I;->h:Lql/H;

    iget-object v2, p0, Lql/I;->m:Lql/a;

    invoke-virtual {v2}, Lql/a;->d()I

    move-result v2

    iget-object v3, p0, Lql/I;->m:Lql/a;

    invoke-virtual {v3}, Lql/a;->d()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lql/a;-><init>(Lql/H;II)V

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-object p0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toByteArray()[B
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lql/I;->h:Lql/H;

    invoke-virtual {v0}, Lql/H;->h()I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    new-array v1, v1, [B

    iget-object v2, p0, Lql/I;->m:Lql/a;

    invoke-virtual {v2}, Lql/a;->c()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget-object v2, p0, Lql/I;->i:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lql/O;->f([B[BI)V

    add-int/2addr v3, v0

    iget-object v2, p0, Lql/I;->j:[B

    invoke-static {v1, v2, v3}, Lql/O;->f([B[BI)V

    add-int/2addr v3, v0

    iget-object v2, p0, Lql/I;->k:[B

    invoke-static {v1, v2, v3}, Lql/O;->f([B[BI)V

    add-int/2addr v3, v0

    iget-object v0, p0, Lql/I;->l:[B

    invoke-static {v1, v0, v3}, Lql/O;->f([B[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lql/I;->m:Lql/a;

    invoke-static {v0}, Lql/O;->s(Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error serializing bds state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
