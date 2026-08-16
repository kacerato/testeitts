.class public final Lql/A;
.super Lql/y;
.source "SourceFile"

# interfaces
.implements Lql/N;
.implements Lorg/bouncycastle/util/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lql/A$b;
    }
.end annotation


# instance fields
.field public final d:Lql/z;

.field public final e:[B

.field public final f:[B

.field public final g:[B

.field public final h:[B

.field public volatile i:J

.field public volatile j:Lql/b;

.field public volatile k:Z


# direct methods
.method public constructor <init>(Lql/A$b;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lql/A$b;->a(Lql/A$b;)Lql/z;

    move-result-object v0

    invoke-virtual {v0}, Lql/z;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lql/y;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Lql/A$b;->a(Lql/A$b;)Lql/z;

    move-result-object v3

    iput-object v3, p0, Lql/A;->d:Lql/z;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lql/z;->g()I

    move-result v0

    invoke-static {p1}, Lql/A$b;->b(Lql/A$b;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lql/A$b;->c(Lql/A$b;)Lql/H;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lql/z;->a()I

    move-result v2

    add-int/lit8 v3, v2, 0x7

    div-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lql/O;->b([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lql/A;->i:J

    iget-wide v4, p0, Lql/A;->i:J

    invoke-static {v2, v4, v5}, Lql/O;->n(IJ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v3, v0}, Lql/O;->i([BII)[B

    move-result-object v2

    iput-object v2, p0, Lql/A;->e:[B

    add-int/2addr v3, v0

    invoke-static {v1, v3, v0}, Lql/O;->i([BII)[B

    move-result-object v2

    iput-object v2, p0, Lql/A;->f:[B

    add-int/2addr v3, v0

    invoke-static {v1, v3, v0}, Lql/O;->i([BII)[B

    move-result-object v2

    iput-object v2, p0, Lql/A;->g:[B

    add-int/2addr v3, v0

    invoke-static {v1, v3, v0}, Lql/O;->i([BII)[B

    move-result-object v2

    iput-object v2, p0, Lql/A;->h:[B

    add-int/2addr v3, v0

    array-length v0, v1

    sub-int/2addr v0, v3

    invoke-static {v1, v3, v0}, Lql/O;->i([BII)[B

    move-result-object v0

    :try_start_0
    const-class v1, Lql/b;

    invoke-static {v0, v1}, Lql/O;->g([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql/b;

    invoke-static {p1}, Lql/A$b;->c(Lql/A$b;)Lql/H;

    move-result-object p1

    invoke-virtual {p1}, Lql/H;->g()Loh/x;

    move-result-object p1

    invoke-virtual {v0, p1}, Lql/b;->h(Loh/x;)Lql/b;

    move-result-object p1

    iput-object p1, p0, Lql/A;->j:Lql/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

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

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "xmss == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lql/A$b;->d(Lql/A$b;)J

    move-result-wide v1

    iput-wide v1, p0, Lql/A;->i:J

    invoke-static {p1}, Lql/A$b;->e(Lql/A$b;)[B

    move-result-object v7

    if-eqz v7, :cond_4

    array-length v1, v7

    if-ne v1, v0, :cond_3

    iput-object v7, p0, Lql/A;->e:[B

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-array v1, v0, [B

    iput-object v1, p0, Lql/A;->e:[B

    :goto_2
    invoke-static {p1}, Lql/A$b;->f(Lql/A$b;)[B

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v2, v1

    if-ne v2, v0, :cond_5

    iput-object v1, p0, Lql/A;->f:[B

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-array v1, v0, [B

    iput-object v1, p0, Lql/A;->f:[B

    :goto_3
    invoke-static {p1}, Lql/A$b;->g(Lql/A$b;)[B

    move-result-object v6

    if-eqz v6, :cond_8

    array-length v1, v6

    if-ne v1, v0, :cond_7

    iput-object v6, p0, Lql/A;->g:[B

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-array v1, v0, [B

    iput-object v1, p0, Lql/A;->g:[B

    :goto_4
    invoke-static {p1}, Lql/A$b;->h(Lql/A$b;)[B

    move-result-object v1

    if-eqz v1, :cond_a

    array-length v2, v1

    if-ne v2, v0, :cond_9

    iput-object v1, p0, Lql/A;->h:[B

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of root needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-array v0, v0, [B

    iput-object v0, p0, Lql/A;->h:[B

    :goto_5
    invoke-static {p1}, Lql/A$b;->i(Lql/A$b;)Lql/b;

    move-result-object v0

    if-eqz v0, :cond_b

    :goto_6
    iput-object v0, p0, Lql/A;->j:Lql/b;

    goto :goto_7

    :cond_b
    invoke-static {p1}, Lql/A$b;->d(Lql/A$b;)J

    move-result-wide v0

    invoke-virtual {v3}, Lql/z;->a()I

    move-result v2

    invoke-static {v2, v0, v1}, Lql/O;->n(IJ)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    new-instance v0, Lql/b;

    invoke-static {p1}, Lql/A$b;->d(Lql/A$b;)J

    move-result-wide v4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lql/b;-><init>(Lql/z;J[B[B)V

    goto :goto_6

    :cond_c
    new-instance v0, Lql/b;

    invoke-static {p1}, Lql/A$b;->j(Lql/A$b;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lql/b;-><init>(J)V

    goto :goto_6

    :goto_7
    invoke-static {p1}, Lql/A$b;->j(Lql/A$b;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    invoke-static {p1}, Lql/A$b;->j(Lql/A$b;)J

    move-result-wide v0

    iget-object p1, p0, Lql/A;->j:Lql/b;

    invoke-virtual {p1}, Lql/b;->b()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_d

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

.method public synthetic constructor <init>(Lql/A$b;Lql/A$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lql/A;-><init>(Lql/A$b;)V

    return-void
.end method


# virtual methods
.method public S0()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lql/A;->j:Lql/b;

    invoke-virtual {v0}, Lql/b;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lql/A;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(I)Lql/A;
    .locals 7

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    monitor-enter p0

    int-to-long v0, p1

    :try_start_0
    invoke-virtual {p0}, Lql/A;->S0()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    new-instance v2, Lql/A$b;

    iget-object v3, p0, Lql/A;->d:Lql/z;

    invoke-direct {v2, v3}, Lql/A$b;-><init>(Lql/z;)V

    iget-object v3, p0, Lql/A;->e:[B

    invoke-virtual {v2, v3}, Lql/A$b;->s([B)Lql/A$b;

    move-result-object v2

    iget-object v3, p0, Lql/A;->f:[B

    invoke-virtual {v2, v3}, Lql/A$b;->r([B)Lql/A$b;

    move-result-object v2

    iget-object v3, p0, Lql/A;->g:[B

    invoke-virtual {v2, v3}, Lql/A$b;->p([B)Lql/A$b;

    move-result-object v2

    iget-object v3, p0, Lql/A;->h:[B

    invoke-virtual {v2, v3}, Lql/A$b;->q([B)Lql/A$b;

    move-result-object v2

    invoke-virtual {p0}, Lql/A;->g()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lql/A$b;->m(J)Lql/A$b;

    move-result-object v2

    new-instance v3, Lql/b;

    iget-object v4, p0, Lql/A;->j:Lql/b;

    invoke-virtual {p0}, Lql/A;->g()J

    move-result-wide v5

    add-long/2addr v5, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v5, v0

    invoke-direct {v3, v4, v5, v6}, Lql/b;-><init>(Lql/b;J)V

    invoke-virtual {v2, v3}, Lql/A$b;->l(Lql/b;)Lql/A$b;

    move-result-object v0

    invoke-virtual {v0}, Lql/A$b;->k()Lql/A;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p1, :cond_0

    invoke-virtual {p0}, Lql/A;->n()Lql/A;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "usageCount exceeds usages remaining"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot ask for a shard with 0 keys"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Lql/b;
    .locals 1

    iget-object v0, p0, Lql/A;->j:Lql/b;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lql/A;->i:J

    return-wide v0
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
    invoke-virtual {p0}, Lql/A;->toByteArray()[B

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

.method public h()Lql/A;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lql/A;->e(I)Lql/A;

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

.method public i()Lql/z;
    .locals 1

    iget-object v0, p0, Lql/A;->d:Lql/z;

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lql/A;->g:[B

    invoke-static {v0}, Lql/O;->d([B)[B

    move-result-object v0

    return-object v0
.end method

.method public k()[B
    .locals 1

    iget-object v0, p0, Lql/A;->h:[B

    invoke-static {v0}, Lql/O;->d([B)[B

    move-result-object v0

    return-object v0
.end method

.method public l()[B
    .locals 1

    iget-object v0, p0, Lql/A;->f:[B

    invoke-static {v0}, Lql/O;->d([B)[B

    move-result-object v0

    return-object v0
.end method

.method public m()[B
    .locals 1

    iget-object v0, p0, Lql/A;->e:[B

    invoke-static {v0}, Lql/O;->d([B)[B

    move-result-object v0

    return-object v0
.end method

.method public n()Lql/A;
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lql/A;->g()J

    move-result-wide v0

    iget-object v2, p0, Lql/A;->j:Lql/b;

    invoke-virtual {v2}, Lql/b;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    if-gez v0, :cond_0

    iget-object v4, p0, Lql/A;->j:Lql/b;

    iget-object v5, p0, Lql/A;->d:Lql/z;

    iget-wide v6, p0, Lql/A;->i:J

    iget-object v8, p0, Lql/A;->g:[B

    iget-object v9, p0, Lql/A;->e:[B

    invoke-virtual/range {v4 .. v9}, Lql/b;->g(Lql/z;J[B[B)V

    iget-wide v4, p0, Lql/A;->i:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lql/A;->i:J

    :goto_0
    iput-boolean v1, p0, Lql/A;->k:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lql/A;->j:Lql/b;

    invoke-virtual {v0}, Lql/b;->b()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lql/A;->i:J

    new-instance v0, Lql/b;

    iget-object v2, p0, Lql/A;->j:Lql/b;

    invoke-virtual {v2}, Lql/b;->b()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lql/b;-><init>(J)V

    iput-object v0, p0, Lql/A;->j:Lql/b;

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
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lql/A;->d:Lql/z;

    invoke-virtual {v0}, Lql/z;->g()I

    move-result v0

    iget-object v1, p0, Lql/A;->d:Lql/z;

    invoke-virtual {v1}, Lql/z;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int v2, v1, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    new-array v2, v2, [B

    iget-wide v3, p0, Lql/A;->i:J

    invoke-static {v3, v4, v1}, Lql/O;->t(JI)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lql/O;->f([B[BI)V

    iget-object v3, p0, Lql/A;->e:[B

    invoke-static {v2, v3, v1}, Lql/O;->f([B[BI)V

    add-int/2addr v1, v0

    iget-object v3, p0, Lql/A;->f:[B

    invoke-static {v2, v3, v1}, Lql/O;->f([B[BI)V

    add-int/2addr v1, v0

    iget-object v3, p0, Lql/A;->g:[B

    invoke-static {v2, v3, v1}, Lql/O;->f([B[BI)V

    add-int/2addr v1, v0

    iget-object v0, p0, Lql/A;->h:[B

    invoke-static {v2, v0, v1}, Lql/O;->f([B[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lql/A;->j:Lql/b;

    invoke-static {v0}, Lql/O;->s(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error serializing bds state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
