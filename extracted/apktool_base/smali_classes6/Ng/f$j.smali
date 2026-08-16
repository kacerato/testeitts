.class public LNg/f$j;
.super LGg/b;
.source "SourceFile"

# interfaces
.implements LNg/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final c:LNg/g;

.field public final synthetic d:LNg/f;


# direct methods
.method public constructor <init>(LNg/f;LNg/g;)V
    .locals 1

    iput-object p1, p0, LNg/f$j;->d:LNg/f;

    iget-object p1, p1, LNg/f;->e:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "OkHttp %s"

    invoke-direct {p0, v0, p1}, LGg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, LNg/f$j;->c:LNg/g;

    return-void
.end method


# virtual methods
.method public a(ZLNg/l;)V
    .locals 8

    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LNg/f$j;->d:LNg/f;

    iget-object v1, v1, LNg/f;->p:LNg/l;

    invoke-virtual {v1}, LNg/l;->e()I

    move-result v1

    if-eqz p1, :cond_0

    iget-object p1, p0, LNg/f$j;->d:LNg/f;

    iget-object p1, p1, LNg/f;->p:LNg/l;

    invoke-virtual {p1}, LNg/l;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object p1, p0, LNg/f$j;->d:LNg/f;

    iget-object p1, p1, LNg/f;->p:LNg/l;

    invoke-virtual {p1, p2}, LNg/l;->j(LNg/l;)V

    invoke-virtual {p0, p2}, LNg/f$j;->n(LNg/l;)V

    iget-object p1, p0, LNg/f$j;->d:LNg/f;

    iget-object p1, p1, LNg/f;->p:LNg/l;

    invoke-virtual {p1}, LNg/l;->e()I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    sub-int/2addr p1, v1

    int-to-long p1, p1

    iget-object v1, p0, LNg/f$j;->d:LNg/f;

    iget-boolean v5, v1, LNg/f;->q:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, v1, LNg/f;->q:Z

    :cond_1
    iget-object v1, v1, LNg/f;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, LNg/f$j;->d:LNg/f;

    iget-object v1, v1, LNg/f;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v4, p0, LNg/f$j;->d:LNg/f;

    iget-object v4, v4, LNg/f;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [LNg/h;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [LNg/h;

    goto :goto_1

    :cond_2
    move-wide p1, v2

    :cond_3
    :goto_1
    invoke-static {}, LNg/f;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v5, LNg/f$j$b;

    const-string v6, "OkHttp %s settings"

    iget-object v7, p0, LNg/f$j;->d:LNg/f;

    iget-object v7, v7, LNg/f;->e:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, LNg/f$j$b;-><init>(LNg/f$j;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    array-length v0, v4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    aget-object v2, v4, v1

    monitor-enter v2

    :try_start_1
    invoke-virtual {v2, p1, p2}, LNg/h;->c(J)V

    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_4
    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "LNg/b;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {p1, p2, p3}, LNg/f;->s(ILjava/util/List;)V

    return-void
.end method

.method public c(ILNg/a;LTg/f;)V
    .locals 3

    invoke-virtual {p3}, LTg/f;->S()I

    iget-object p2, p0, LNg/f$j;->d:LNg/f;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, LNg/f$j;->d:LNg/f;

    iget-object p3, p3, LNg/f;->d:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    iget-object v0, v0, LNg/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [LNg/h;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [LNg/h;

    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, LNg/f;->h:Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    invoke-virtual {v1}, LNg/h;->k()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, LNg/h;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, LNg/a;->REFUSED_STREAM:LNg/a;

    invoke-virtual {v1, v2}, LNg/h;->t(LNg/a;)V

    iget-object v2, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {v1}, LNg/h;->k()I

    move-result v1

    invoke-virtual {v2, v1}, LNg/f;->w(I)LNg/h;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(ILNg/a;)V
    .locals 1

    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {v0, p1}, LNg/f;->v(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {v0, p1, p2}, LNg/f;->t(ILNg/a;)V

    return-void

    :cond_0
    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {v0, p1}, LNg/f;->w(I)LNg/h;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, LNg/h;->t(LNg/a;)V

    :cond_1
    return-void
.end method

.method public e(ZII)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, LNg/f$j;->d:LNg/f;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, LNg/f$j;->d:LNg/f;

    const/4 p3, 0x0

    invoke-static {p2, p3}, LNg/f;->e(LNg/f;Z)Z

    iget-object p2, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :try_start_1
    iget-object p1, p0, LNg/f$j;->d:LNg/f;

    invoke-static {p1}, LNg/f;->d(LNg/f;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, LNg/f$i;

    iget-object v1, p0, LNg/f$j;->d:LNg/f;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2, p3}, LNg/f$i;-><init>(LNg/f;ZII)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public f(ZIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "LNg/b;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {p3, p2}, LNg/f;->v(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {p3, p2, p4, p1}, LNg/f;->r(ILjava/util/List;Z)V

    return-void

    :cond_0
    iget-object p3, p0, LNg/f$j;->d:LNg/f;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {v0, p2}, LNg/f;->k(I)LNg/h;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    iget-boolean v1, v0, LNg/f;->h:Z

    if-eqz v1, :cond_1

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget v1, v0, LNg/f;->f:I

    if-gt p2, v1, :cond_2

    monitor-exit p3

    return-void

    :cond_2
    rem-int/lit8 v1, p2, 0x2

    iget v0, v0, LNg/f;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v1, v0, :cond_3

    monitor-exit p3

    return-void

    :cond_3
    invoke-static {p4}, LGg/c;->I(Ljava/util/List;)Lokhttp3/u;

    move-result-object v5

    new-instance p4, LNg/h;

    iget-object v2, p0, LNg/f$j;->d:LNg/f;

    const/4 v3, 0x0

    move-object v0, p4

    move v1, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, LNg/h;-><init>(ILNg/f;ZZLokhttp3/u;)V

    iget-object p1, p0, LNg/f$j;->d:LNg/f;

    iput p2, p1, LNg/f;->f:I

    iget-object p1, p1, LNg/f;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LNg/f;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, LNg/f$j$a;

    const-string v1, "OkHttp %s stream %d"

    iget-object v2, p0, LNg/f$j;->d:LNg/f;

    iget-object v2, v2, LNg/f;->e:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2, p4}, LNg/f$j$a;-><init>(LNg/f$j;Ljava/lang/String;[Ljava/lang/Object;LNg/h;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p3

    return-void

    :cond_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p4}, LNg/h;->s(Ljava/util/List;)V

    if-eqz p1, :cond_5

    invoke-virtual {v0}, LNg/h;->r()V

    :cond_5
    return-void

    :goto_0
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public h(IJ)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, LNg/f$j;->d:LNg/f;

    iget-wide v1, p1, LNg/f;->n:J

    add-long/2addr v1, p2

    iput-wide v1, p1, LNg/f;->n:J

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {v0, p1}, LNg/f;->k(I)LNg/h;

    move-result-object p1

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2, p3}, LNg/h;->c(J)V

    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public i(ZILTg/e;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {v0, p2}, LNg/f;->v(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {v0, p2, p3, p4, p1}, LNg/f;->p(ILTg/e;IZ)V

    return-void

    :cond_0
    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {v0, p2}, LNg/f;->k(I)LNg/h;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, LNg/f$j;->d:LNg/f;

    sget-object v0, LNg/a;->PROTOCOL_ERROR:LNg/a;

    invoke-virtual {p1, p2, v0}, LNg/f;->R(ILNg/a;)V

    iget-object p1, p0, LNg/f$j;->d:LNg/f;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, LNg/f;->A(J)V

    invoke-interface {p3, v0, v1}, LTg/e;->skip(J)V

    return-void

    :cond_1
    invoke-virtual {v0, p3, p4}, LNg/h;->q(LTg/e;I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, LNg/h;->r()V

    :cond_2
    return-void
.end method

.method public j(ILjava/lang/String;LTg/f;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l(IIIZ)V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 4

    sget-object v0, LNg/a;->INTERNAL_ERROR:LNg/a;

    :try_start_0
    iget-object v1, p0, LNg/f$j;->c:LNg/g;

    invoke-virtual {v1, p0}, LNg/g;->c(LNg/g$b;)V

    :goto_0
    iget-object v1, p0, LNg/f$j;->c:LNg/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, LNg/g;->b(ZLNg/g$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, LNg/a;->NO_ERROR:LNg/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, LNg/a;->CANCEL:LNg/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {v2, v1, v0}, LNg/f;->g(LNg/a;LNg/a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    iget-object v0, p0, LNg/f$j;->c:LNg/g;

    invoke-static {v0}, LGg/c;->g(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-object v1, v0

    :catch_2
    :try_start_3
    sget-object v0, LNg/a;->PROTOCOL_ERROR:LNg/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {v1, v0, v0}, LNg/f;->g(LNg/a;LNg/a;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    :try_start_5
    iget-object v3, p0, LNg/f$j;->d:LNg/f;

    invoke-virtual {v3, v1, v0}, LNg/f;->g(LNg/a;LNg/a;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    iget-object v0, p0, LNg/f$j;->c:LNg/g;

    invoke-static {v0}, LGg/c;->g(Ljava/io/Closeable;)V

    throw v2
.end method

.method public final n(LNg/l;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, LNg/f$j;->d:LNg/f;

    invoke-static {v0}, LNg/f;->d(LNg/f;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, LNg/f$j$c;

    const-string v2, "OkHttp %s ACK Settings"

    iget-object v3, p0, LNg/f$j;->d:LNg/f;

    iget-object v3, v3, LNg/f;->e:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, LNg/f$j$c;-><init>(LNg/f$j;Ljava/lang/String;[Ljava/lang/Object;LNg/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
