.class public Lorg/bouncycastle/pqc/crypto/lms/f;
.super Lorg/bouncycastle/pqc/crypto/lms/t;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/lms/p;


# instance fields
.field public final c:I

.field public final d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/lms/v;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/lms/x;",
            ">;"
        }
    .end annotation
.end field

.field public final g:J

.field public h:J

.field public i:Lorg/bouncycastle/pqc/crypto/lms/g;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/List;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/lms/v;",
            ">;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/lms/x;",
            ">;JJ)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/t;-><init>(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->c:I

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->f:Ljava/util/List;

    iput-wide p4, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J

    iput-wide p6, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->g:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->d:Z

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->s()V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;JJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/lms/v;",
            ">;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/lms/x;",
            ">;JJZ)V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/t;-><init>(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->c:I

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->f:Ljava/util/List;

    iput-wide p4, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J

    iput-wide p6, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->g:J

    iput-boolean p8, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->d:Z

    return-void
.end method

.method public static g(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/f;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/f;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->k(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v3, -0x1

    if-ge v0, v1, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/x;->a(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/x;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/bouncycastle/pqc/crypto/lms/f;

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/f;-><init>(ILjava/util/List;Ljava/util/List;JJZ)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unknown version for hss private key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/f;->g(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    throw p0

    :cond_6
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lfm/d;->e(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->g(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h([B[B)Lorg/bouncycastle/pqc/crypto/lms/f;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->g(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object p0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/g;->d(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/g;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->i:Lorg/bouncycastle/pqc/crypto/lms/g;

    return-object p0
.end method

.method public static q(Lorg/bouncycastle/pqc/crypto/lms/f;)Lorg/bouncycastle/pqc/crypto/lms/f;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->g(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public S0()J
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->g:J

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public T0()Lorg/bouncycastle/pqc/crypto/lms/o;
    .locals 10

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->j()I

    move-result v0

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/c;->e(Lorg/bouncycastle/pqc/crypto/lms/f;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->n()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->i()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/lms/v;

    new-array v4, v0, [Lorg/bouncycastle/pqc/crypto/lms/y;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    new-instance v6, Lorg/bouncycastle/pqc/crypto/lms/y;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/crypto/lms/x;

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/lms/v;->p()Lorg/bouncycastle/pqc/crypto/lms/w;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lorg/bouncycastle/pqc/crypto/lms/y;-><init>(Lorg/bouncycastle/pqc/crypto/lms/x;Lorg/bouncycastle/pqc/crypto/lms/w;)V

    aput-object v6, v4, v5

    move v5, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->o()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/v;->T0()Lorg/bouncycastle/pqc/crypto/lms/o;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/lms/o;->o([Lorg/bouncycastle/pqc/crypto/lms/y;)Lorg/bouncycastle/pqc/crypto/lms/o;

    move-result-object v0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public U0(Lorg/bouncycastle/pqc/crypto/lms/o;)[B
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->j()I

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/c;->b(ILorg/bouncycastle/pqc/crypto/lms/o;)Lorg/bouncycastle/pqc/crypto/lms/h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/h;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->q(Lorg/bouncycastle/pqc/crypto/lms/f;)Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lorg/bouncycastle/pqc/crypto/lms/f;
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->S0()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    iget-wide v8, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J

    add-long v10, v8, v2

    add-long/2addr v2, v8

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->i()Ljava/util/List;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->n()Ljava/util/List;

    move-result-object p1

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/f;

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->c:I

    const/4 v12, 0x1

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/bouncycastle/pqc/crypto/lms/f;-><init>(ILjava/util/List;Ljava/util/List;JJZ)V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/f;->q(Lorg/bouncycastle/pqc/crypto/lms/f;)Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->s()V

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "usageCount exceeds usages remaining in current leaf"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized e()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/f;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->c:I

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/lms/f;->c:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->d:Z

    iget-boolean v2, p1, Lorg/bouncycastle/pqc/crypto/lms/f;->d:Z

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->g:J

    iget-wide v3, p1, Lorg/bouncycastle/pqc/crypto/lms/f;->g:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    return v0

    :cond_4
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J

    iget-wide v3, p1, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    return v0

    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->f:Ljava/util/List;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/lms/f;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->g:J

    return-wide v0
.end method

.method public declared-synchronized getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->c:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/a;->n(J)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->g:J

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/a;->n(J)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->d:Z

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->a(Z)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/g;)Lorg/bouncycastle/pqc/crypto/lms/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/lms/x;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/g;)Lorg/bouncycastle/pqc/crypto/lms/a;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->c:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->g:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/lms/v;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->c:I

    return v0
.end method

.method public declared-synchronized k()[Lorg/bouncycastle/pqc/crypto/lms/u;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/pqc/crypto/lms/u;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/lms/v;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/lms/u;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/v;->q()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v5

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/v;->o()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/pqc/crypto/lms/u;-><init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;)V

    aput-object v4, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized l()Lorg/bouncycastle/pqc/crypto/lms/g;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/g;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->c:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->m()Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/v;->p()Lorg/bouncycastle/pqc/crypto/lms/w;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/g;-><init>(ILorg/bouncycastle/pqc/crypto/lms/w;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public m()Lorg/bouncycastle/pqc/crypto/lms/v;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/v;

    return-object v0
.end method

.method public declared-synchronized n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/lms/x;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->f:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized o()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->d:Z

    return v0
.end method

.method public r(I)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/v;->h()Lorg/bouncycastle/pqc/crypto/lms/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/k;->d()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/j;->d()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/k;->a()Lorg/bouncycastle/pqc/crypto/lms/D;

    move-result-object v0

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/lms/D;->h(I)V

    new-array v3, v2, [B

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/D;->a([BZ)V

    new-array v2, v2, [B

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lorg/bouncycastle/pqc/crypto/lms/D;->a([BZ)V

    const/16 v0, 0x10

    new-array v5, v0, [B

    invoke-static {v2, v4, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/v;->q()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v6

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/v;->o()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v2

    invoke-static {v6, v2, v4, v5, v3}, Lorg/bouncycastle/pqc/crypto/lms/n;->a(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;I[B[B)Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/v;->p()Lorg/bouncycastle/pqc/crypto/lms/w;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/w;->toByteArray()[B

    move-result-object p1

    invoke-static {v3, p1}, Lorg/bouncycastle/pqc/crypto/lms/n;->c(Lorg/bouncycastle/pqc/crypto/lms/v;[B)Lorg/bouncycastle/pqc/crypto/lms/x;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->f:Ljava/util/List;

    return-void
.end method

.method public s()V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [J

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->e()J

    move-result-wide v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_0
    if-ltz v6, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/lms/v;->q()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/lms/A;->c()I

    move-result v9

    shl-int v9, v7, v9

    sub-int/2addr v9, v7

    int-to-long v9, v9

    and-long/2addr v9, v4

    aput-wide v9, v3, v6

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/lms/A;->c()I

    move-result v8

    ushr-long/2addr v4, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/bouncycastle/pqc/crypto/lms/v;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/lms/f;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/bouncycastle/pqc/crypto/lms/x;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/bouncycastle/pqc/crypto/lms/x;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->m()Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v9, v4, v8

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/lms/v;->j()I

    move-result v9

    sub-int/2addr v9, v7

    int-to-long v9, v9

    aget-wide v11, v3, v8

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/lms/v;->q()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v9

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/lms/v;->o()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v10

    aget-wide v11, v3, v8

    long-to-int v11, v11

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/lms/v;->i()[B

    move-result-object v12

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/lms/v;->m()[B

    move-result-object v6

    invoke-static {v9, v10, v11, v12, v6}, Lorg/bouncycastle/pqc/crypto/lms/n;->a(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;I[B[B)Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object v6

    aput-object v6, v4, v8

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    move v9, v7

    :goto_2
    if-ge v9, v2, :cond_6

    add-int/lit8 v10, v9, -0x1

    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/lms/v;->o()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/lms/j;->d()I

    move-result v12

    const/16 v13, 0x10

    new-array v14, v13, [B

    new-array v15, v12, [B

    new-instance v13, Lorg/bouncycastle/pqc/crypto/lms/D;

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/lms/v;->i()[B

    move-result-object v8

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/lms/v;->m()[B

    move-result-object v7

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/lms/v;->o()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/pqc/crypto/lms/b;->c(Lorg/bouncycastle/pqc/crypto/lms/j;)LBi/y;

    move-result-object v11

    invoke-direct {v13, v8, v7, v11}, Lorg/bouncycastle/pqc/crypto/lms/D;-><init>([B[BLBi/y;)V

    aget-wide v7, v3, v10

    long-to-int v7, v7

    invoke-virtual {v13, v7}, Lorg/bouncycastle/pqc/crypto/lms/D;->i(I)V

    const/4 v7, -0x2

    invoke-virtual {v13, v7}, Lorg/bouncycastle/pqc/crypto/lms/D;->h(I)V

    const/4 v7, 0x1

    invoke-virtual {v13, v15, v7}, Lorg/bouncycastle/pqc/crypto/lms/D;->a([BZ)V

    new-array v8, v12, [B

    const/4 v11, 0x0

    invoke-virtual {v13, v8, v11}, Lorg/bouncycastle/pqc/crypto/lms/D;->a([BZ)V

    const/16 v12, 0x10

    invoke-static {v8, v11, v14, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v2, -0x1

    if-ge v9, v8, :cond_3

    aget-wide v12, v3, v9

    aget-object v8, v4, v9

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/lms/v;->j()I

    move-result v8

    sub-int/2addr v8, v7

    int-to-long v7, v8

    cmp-long v7, v12, v7

    if-nez v7, :cond_2

    :goto_3
    const/4 v7, 0x1

    goto :goto_4

    :cond_2
    move v7, v11

    goto :goto_4

    :cond_3
    aget-wide v7, v3, v9

    aget-object v12, v4, v9

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/lms/v;->j()I

    move-result v12

    int-to-long v12, v12

    cmp-long v7, v7, v12

    if-nez v7, :cond_2

    goto :goto_3

    :goto_4
    aget-object v8, v4, v9

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/lms/v;->i()[B

    move-result-object v8

    invoke-static {v14, v8}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v8

    if-eqz v8, :cond_4

    aget-object v8, v4, v9

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/lms/v;->m()[B

    move-result-object v8

    invoke-static {v15, v8}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v7, :cond_5

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/lms/v;->q()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v6

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/lms/v;->o()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v7

    aget-wide v12, v3, v9

    long-to-int v8, v12

    invoke-static {v6, v7, v8, v14, v15}, Lorg/bouncycastle/pqc/crypto/lms/n;->a(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;I[B[B)Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object v6

    aput-object v6, v4, v9

    :goto_5
    const/4 v6, 0x1

    goto :goto_6

    :cond_4
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/lms/v;->q()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v6

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/crypto/lms/v;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/lms/v;->o()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v7

    aget-wide v12, v3, v9

    long-to-int v8, v12

    invoke-static {v6, v7, v8, v14, v15}, Lorg/bouncycastle/pqc/crypto/lms/n;->a(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;I[B[B)Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object v6

    aput-object v6, v4, v9

    aget-object v7, v4, v10

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/lms/v;->p()Lorg/bouncycastle/pqc/crypto/lms/w;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/lms/w;->toByteArray()[B

    move-result-object v6

    invoke-static {v7, v6}, Lorg/bouncycastle/pqc/crypto/lms/n;->c(Lorg/bouncycastle/pqc/crypto/lms/v;[B)Lorg/bouncycastle/pqc/crypto/lms/x;

    move-result-object v6

    aput-object v6, v5, v10

    goto :goto_5

    :cond_5
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move v8, v11

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/lms/f;->t([Lorg/bouncycastle/pqc/crypto/lms/v;[Lorg/bouncycastle/pqc/crypto/lms/x;)V

    :cond_7
    return-void
.end method

.method public t([Lorg/bouncycastle/pqc/crypto/lms/v;[Lorg/bouncycastle/pqc/crypto/lms/x;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->f:Ljava/util/List;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
