.class public final LKg/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKg/f$a;
    }
.end annotation


# static fields
.field public static final synthetic o:Z


# instance fields
.field public final a:Lokhttp3/a;

.field public b:LKg/e$a;

.field public c:Lokhttp3/G;

.field public final d:Lokhttp3/k;

.field public final e:Lokhttp3/e;

.field public final f:Lokhttp3/r;

.field public final g:Ljava/lang/Object;

.field public final h:LKg/e;

.field public i:I

.field public j:LKg/c;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:LLg/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lokhttp3/k;Lokhttp3/a;Lokhttp3/e;Lokhttp3/r;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKg/f;->d:Lokhttp3/k;

    iput-object p2, p0, LKg/f;->a:Lokhttp3/a;

    iput-object p3, p0, LKg/f;->e:Lokhttp3/e;

    iput-object p4, p0, LKg/f;->f:Lokhttp3/r;

    new-instance p1, LKg/e;

    invoke-virtual {p0}, LKg/f;->p()LKg/d;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3, p4}, LKg/e;-><init>(Lokhttp3/a;LKg/d;Lokhttp3/e;Lokhttp3/r;)V

    iput-object p1, p0, LKg/f;->h:LKg/e;

    iput-object p5, p0, LKg/f;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(LKg/c;Z)V
    .locals 1

    iget-object v0, p0, LKg/f;->j:LKg/c;

    if-nez v0, :cond_0

    iput-object p1, p0, LKg/f;->j:LKg/c;

    iput-boolean p2, p0, LKg/f;->k:Z

    iget-object p1, p1, LKg/c;->n:Ljava/util/List;

    new-instance p2, LKg/f$a;

    iget-object v0, p0, LKg/f;->g:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, LKg/f$a;-><init>(LKg/f;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, LKg/f;->d:Lokhttp3/k;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, LKg/f;->m:Z

    iget-object v1, p0, LKg/f;->n:LLg/c;

    iget-object v2, p0, LKg/f;->j:LKg/c;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, LLg/c;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, LKg/c;->g()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c()LLg/c;
    .locals 2

    iget-object v0, p0, LKg/f;->d:Lokhttp3/k;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LKg/f;->n:LLg/c;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized d()LKg/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LKg/f;->j:LKg/c;
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

.method public final e(ZZZ)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iput-object v0, p0, LKg/f;->n:LLg/c;

    :cond_0
    const/4 p3, 0x1

    if-eqz p2, :cond_1

    iput-boolean p3, p0, LKg/f;->l:Z

    :cond_1
    iget-object p2, p0, LKg/f;->j:LKg/c;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_2

    iput-boolean p3, p2, LKg/c;->k:Z

    :cond_2
    iget-object p1, p0, LKg/f;->n:LLg/c;

    if-nez p1, :cond_5

    iget-boolean p1, p0, LKg/f;->l:Z

    if-nez p1, :cond_3

    iget-boolean p1, p2, LKg/c;->k:Z

    if-eqz p1, :cond_5

    :cond_3
    invoke-virtual {p0, p2}, LKg/f;->l(LKg/c;)V

    iget-object p1, p0, LKg/f;->j:LKg/c;

    iget-object p1, p1, LKg/c;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, LKg/f;->j:LKg/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, LKg/c;->o:J

    sget-object p1, LGg/a;->a:LGg/a;

    iget-object p2, p0, LKg/f;->d:Lokhttp3/k;

    iget-object p3, p0, LKg/f;->j:LKg/c;

    invoke-virtual {p1, p2, p3}, LGg/a;->e(Lokhttp3/k;LKg/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, LKg/f;->j:LKg/c;

    invoke-virtual {p1}, LKg/c;->d()Ljava/net/Socket;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v0

    :goto_0
    iput-object v0, p0, LKg/f;->j:LKg/c;

    move-object v0, p1

    :cond_5
    return-object v0
.end method

.method public final f(IIIIZ)LKg/c;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, LKg/f;->d:Lokhttp3/k;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, LKg/f;->l:Z

    if-nez v0, :cond_12

    iget-object v0, v1, LKg/f;->n:LLg/c;

    if-nez v0, :cond_11

    iget-boolean v0, v1, LKg/f;->m:Z

    if-nez v0, :cond_10

    iget-object v0, v1, LKg/f;->j:LKg/c;

    invoke-virtual/range {p0 .. p0}, LKg/f;->n()Ljava/net/Socket;

    move-result-object v3

    iget-object v4, v1, LKg/f;->j:LKg/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    iget-boolean v6, v1, LKg/f;->k:Z

    if-nez v6, :cond_1

    move-object v0, v5

    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_3

    sget-object v8, LGg/a;->a:LGg/a;

    iget-object v9, v1, LKg/f;->d:Lokhttp3/k;

    iget-object v10, v1, LKg/f;->a:Lokhttp3/a;

    invoke-virtual {v8, v9, v10, v1, v5}, LGg/a;->h(Lokhttp3/k;Lokhttp3/a;LKg/f;Lokhttp3/G;)LKg/c;

    iget-object v8, v1, LKg/f;->j:LKg/c;

    if-eqz v8, :cond_2

    move v9, v6

    move-object v4, v8

    move-object v8, v5

    goto :goto_2

    :cond_2
    iget-object v8, v1, LKg/f;->c:Lokhttp3/G;

    :goto_1
    move v9, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_3
    move-object v8, v5

    goto :goto_1

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, LGg/c;->i(Ljava/net/Socket;)V

    if-eqz v0, :cond_4

    iget-object v2, v1, LKg/f;->f:Lokhttp3/r;

    iget-object v3, v1, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {v2, v3, v0}, Lokhttp3/r;->h(Lokhttp3/e;Lokhttp3/j;)V

    :cond_4
    if-eqz v9, :cond_5

    iget-object v0, v1, LKg/f;->f:Lokhttp3/r;

    iget-object v2, v1, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {v0, v2, v4}, Lokhttp3/r;->g(Lokhttp3/e;Lokhttp3/j;)V

    :cond_5
    if-eqz v4, :cond_6

    return-object v4

    :cond_6
    if-nez v8, :cond_8

    iget-object v0, v1, LKg/f;->b:LKg/e$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, LKg/e$a;->b()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, v1, LKg/f;->h:LKg/e;

    invoke-virtual {v0}, LKg/e;->e()LKg/e$a;

    move-result-object v0

    iput-object v0, v1, LKg/f;->b:LKg/e$a;

    move v0, v6

    goto :goto_3

    :cond_8
    move v0, v7

    :goto_3
    iget-object v3, v1, LKg/f;->d:Lokhttp3/k;

    monitor-enter v3

    :try_start_1
    iget-boolean v2, v1, LKg/f;->m:Z

    if-nez v2, :cond_f

    if-eqz v0, :cond_a

    iget-object v0, v1, LKg/f;->b:LKg/e$a;

    invoke-virtual {v0}, LKg/e$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v10, v7

    :goto_4
    if-ge v10, v2, :cond_a

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lokhttp3/G;

    sget-object v12, LGg/a;->a:LGg/a;

    iget-object v13, v1, LKg/f;->d:Lokhttp3/k;

    iget-object v14, v1, LKg/f;->a:Lokhttp3/a;

    invoke-virtual {v12, v13, v14, v1, v11}, LGg/a;->h(Lokhttp3/k;Lokhttp3/a;LKg/f;Lokhttp3/G;)LKg/c;

    iget-object v12, v1, LKg/f;->j:LKg/c;

    if-eqz v12, :cond_9

    iput-object v11, v1, LKg/f;->c:Lokhttp3/G;

    move v9, v6

    move-object v4, v12

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-nez v9, :cond_c

    if-nez v8, :cond_b

    iget-object v0, v1, LKg/f;->b:LKg/e$a;

    invoke-virtual {v0}, LKg/e$a;->c()Lokhttp3/G;

    move-result-object v8

    :cond_b
    iput-object v8, v1, LKg/f;->c:Lokhttp3/G;

    iput v7, v1, LKg/f;->i:I

    new-instance v4, LKg/c;

    iget-object v0, v1, LKg/f;->d:Lokhttp3/k;

    invoke-direct {v4, v0, v8}, LKg/c;-><init>(Lokhttp3/k;Lokhttp3/G;)V

    invoke-virtual {v1, v4, v7}, LKg/f;->a(LKg/c;Z)V

    :cond_c
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_d

    iget-object v0, v1, LKg/f;->f:Lokhttp3/r;

    iget-object v2, v1, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {v0, v2, v4}, Lokhttp3/r;->g(Lokhttp3/e;Lokhttp3/j;)V

    return-object v4

    :cond_d
    iget-object v0, v1, LKg/f;->e:Lokhttp3/e;

    iget-object v2, v1, LKg/f;->f:Lokhttp3/r;

    move-object v10, v4

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, LKg/c;->h(IIIIZLokhttp3/e;Lokhttp3/r;)V

    invoke-virtual/range {p0 .. p0}, LKg/f;->p()LKg/d;

    move-result-object v0

    invoke-virtual {v4}, LKg/c;->b()Lokhttp3/G;

    move-result-object v2

    invoke-virtual {v0, v2}, LKg/d;->a(Lokhttp3/G;)V

    iget-object v2, v1, LKg/f;->d:Lokhttp3/k;

    monitor-enter v2

    :try_start_2
    iput-boolean v6, v1, LKg/f;->k:Z

    sget-object v0, LGg/a;->a:LGg/a;

    iget-object v3, v1, LKg/f;->d:Lokhttp3/k;

    invoke-virtual {v0, v3, v4}, LGg/a;->l(Lokhttp3/k;LKg/c;)V

    invoke-virtual {v4}, LKg/c;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, LGg/a;->a:LGg/a;

    iget-object v3, v1, LKg/f;->d:Lokhttp3/k;

    iget-object v4, v1, LKg/f;->a:Lokhttp3/a;

    invoke-virtual {v0, v3, v4, v1}, LGg/a;->f(Lokhttp3/k;Lokhttp3/a;LKg/f;)Ljava/net/Socket;

    move-result-object v5

    iget-object v4, v1, LKg/f;->j:LKg/c;

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_e
    :goto_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v5}, LGg/c;->i(Ljava/net/Socket;)V

    iget-object v0, v1, LKg/f;->f:Lokhttp3/r;

    iget-object v2, v1, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {v0, v2, v4}, Lokhttp3/r;->g(Lokhttp3/e;Lokhttp3/j;)V

    return-object v4

    :goto_7
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_f
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_8
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_10
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_9
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final g(IIIIZZ)LKg/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual/range {p0 .. p5}, LKg/f;->f(IIIIZ)LKg/c;

    move-result-object v0

    iget-object v1, p0, LKg/f;->d:Lokhttp3/k;

    monitor-enter v1

    :try_start_0
    iget v2, v0, LKg/c;->l:I

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p6}, LKg/c;->p(Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, LKg/f;->j()V

    goto :goto_0

    :cond_1
    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, LKg/f;->c:Lokhttp3/G;

    if-nez v0, :cond_2

    iget-object v0, p0, LKg/f;->b:LKg/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LKg/e$a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, LKg/f;->h:LKg/e;

    invoke-virtual {v0}, LKg/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i(Lokhttp3/z;Lokhttp3/w$a;Z)LLg/c;
    .locals 7

    invoke-interface {p2}, Lokhttp3/w$a;->h()I

    move-result v1

    invoke-interface {p2}, Lokhttp3/w$a;->a()I

    move-result v2

    invoke-interface {p2}, Lokhttp3/w$a;->g()I

    move-result v3

    invoke-virtual {p1}, Lokhttp3/z;->v()I

    move-result v4

    invoke-virtual {p1}, Lokhttp3/z;->B()Z

    move-result v5

    move-object v0, p0

    move v6, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, LKg/f;->g(IIIIZZ)LKg/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p0}, LKg/c;->r(Lokhttp3/z;Lokhttp3/w$a;LKg/f;)LLg/c;

    move-result-object p1

    iget-object p2, p0, LKg/f;->d:Lokhttp3/k;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object p1, p0, LKg/f;->n:LLg/c;

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lokhttp3/internal/connection/RouteException;

    invoke-direct {p2, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, LKg/f;->d:Lokhttp3/k;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LKg/f;->j:LKg/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, LKg/f;->e(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, LKg/f;->j:LKg/c;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, LGg/c;->i(Ljava/net/Socket;)V

    if-eqz v1, :cond_1

    iget-object v0, p0, LKg/f;->f:Lokhttp3/r;

    iget-object v2, p0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {v0, v2, v1}, Lokhttp3/r;->h(Lokhttp3/e;Lokhttp3/j;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public k()V
    .locals 5

    iget-object v0, p0, LKg/f;->d:Lokhttp3/k;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LKg/f;->j:LKg/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v3}, LKg/f;->e(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, LKg/f;->j:LKg/c;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v1, v4

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, LGg/c;->i(Ljava/net/Socket;)V

    if-eqz v1, :cond_1

    sget-object v0, LGg/a;->a:LGg/a;

    iget-object v2, p0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {v0, v2, v4}, LGg/a;->p(Lokhttp3/e;Ljava/io/IOException;)Ljava/io/IOException;

    iget-object v0, p0, LKg/f;->f:Lokhttp3/r;

    iget-object v2, p0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {v0, v2, v1}, Lokhttp3/r;->h(Lokhttp3/e;Lokhttp3/j;)V

    iget-object v0, p0, LKg/f;->f:Lokhttp3/r;

    iget-object v1, p0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {v0, v1}, Lokhttp3/r;->a(Lokhttp3/e;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final l(LKg/c;)V
    .locals 3

    iget-object v0, p1, LKg/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, LKg/c;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    iget-object p1, p1, LKg/c;->n:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public m(LKg/c;)Ljava/net/Socket;
    .locals 3

    iget-object v0, p0, LKg/f;->n:LLg/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LKg/f;->j:LKg/c;

    iget-object v0, v0, LKg/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LKg/f;->j:LKg/c;

    iget-object v0, v0, LKg/c;->n:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {p0, v1, v2, v2}, LKg/f;->e(ZZZ)Ljava/net/Socket;

    move-result-object v1

    iput-object p1, p0, LKg/f;->j:LKg/c;

    iget-object p1, p1, LKg/c;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final n()Ljava/net/Socket;
    .locals 2

    iget-object v0, p0, LKg/f;->j:LKg/c;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, LKg/c;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, LKg/f;->e(ZZZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lokhttp3/G;
    .locals 1

    iget-object v0, p0, LKg/f;->c:Lokhttp3/G;

    return-object v0
.end method

.method public final p()LKg/d;
    .locals 2

    sget-object v0, LGg/a;->a:LGg/a;

    iget-object v1, p0, LKg/f;->d:Lokhttp3/k;

    invoke-virtual {v0, v1}, LGg/a;->m(Lokhttp3/k;)LKg/d;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/io/IOException;)V
    .locals 6

    iget-object v0, p0, LKg/f;->d:Lokhttp3/k;

    monitor-enter v0

    :try_start_0
    instance-of v1, p1, Lokhttp3/internal/http2/StreamResetException;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    iget-object p1, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:LNg/a;

    sget-object v1, LNg/a;->REFUSED_STREAM:LNg/a;

    if-ne p1, v1, :cond_0

    iget p1, p0, LKg/f;->i:I

    add-int/2addr p1, v3

    iput p1, p0, LKg/f;->i:I

    if-le p1, v3, :cond_5

    iput-object v2, p0, LKg/f;->c:Lokhttp3/G;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    sget-object v1, LNg/a;->CANCEL:LNg/a;

    if-eq p1, v1, :cond_5

    iput-object v2, p0, LKg/f;->c:Lokhttp3/G;

    goto :goto_0

    :cond_1
    iget-object v1, p0, LKg/f;->j:LKg/c;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, LKg/c;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v1, :cond_5

    :cond_2
    iget-object v1, p0, LKg/f;->j:LKg/c;

    iget v1, v1, LKg/c;->l:I

    if-nez v1, :cond_4

    iget-object v1, p0, LKg/f;->c:Lokhttp3/G;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v5, p0, LKg/f;->h:LKg/e;

    invoke-virtual {v5, v1, p1}, LKg/e;->a(Lokhttp3/G;Ljava/io/IOException;)V

    :cond_3
    iput-object v2, p0, LKg/f;->c:Lokhttp3/G;

    :cond_4
    :goto_0
    move p1, v3

    goto :goto_1

    :cond_5
    move p1, v4

    :goto_1
    iget-object v1, p0, LKg/f;->j:LKg/c;

    invoke-virtual {p0, p1, v4, v3}, LKg/f;->e(ZZZ)Ljava/net/Socket;

    move-result-object p1

    iget-object v3, p0, LKg/f;->j:LKg/c;

    if-nez v3, :cond_7

    iget-boolean v3, p0, LKg/f;->k:Z

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v1

    :cond_7
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, LGg/c;->i(Ljava/net/Socket;)V

    if-eqz v2, :cond_8

    iget-object p1, p0, LKg/f;->f:Lokhttp3/r;

    iget-object v0, p0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {p1, v0, v2}, Lokhttp3/r;->h(Lokhttp3/e;Lokhttp3/j;)V

    :cond_8
    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public r(ZLLg/c;JLjava/io/IOException;)V
    .locals 2

    iget-object v0, p0, LKg/f;->f:Lokhttp3/r;

    iget-object v1, p0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {v0, v1, p3, p4}, Lokhttp3/r;->p(Lokhttp3/e;J)V

    iget-object p3, p0, LKg/f;->d:Lokhttp3/k;

    monitor-enter p3

    if-eqz p2, :cond_5

    :try_start_0
    iget-object p4, p0, LKg/f;->n:LLg/c;

    if-ne p2, p4, :cond_5

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-object p4, p0, LKg/f;->j:LKg/c;

    iget v0, p4, LKg/c;->l:I

    add-int/2addr v0, p2

    iput v0, p4, LKg/c;->l:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p4, p0, LKg/f;->j:LKg/c;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, LKg/f;->e(ZZZ)Ljava/net/Socket;

    move-result-object p1

    iget-object p2, p0, LKg/f;->j:LKg/c;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move-object p4, v0

    :cond_1
    iget-boolean p2, p0, LKg/f;->l:Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, LGg/c;->i(Ljava/net/Socket;)V

    if-eqz p4, :cond_2

    iget-object p1, p0, LKg/f;->f:Lokhttp3/r;

    iget-object p3, p0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {p1, p3, p4}, Lokhttp3/r;->h(Lokhttp3/e;Lokhttp3/j;)V

    :cond_2
    if-eqz p5, :cond_3

    sget-object p1, LGg/a;->a:LGg/a;

    iget-object p2, p0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {p1, p2, p5}, LGg/a;->p(Lokhttp3/e;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    iget-object p2, p0, LKg/f;->f:Lokhttp3/r;

    iget-object p3, p0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {p2, p3, p1}, Lokhttp3/r;->b(Lokhttp3/e;Ljava/io/IOException;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    sget-object p1, LGg/a;->a:LGg/a;

    iget-object p2, p0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {p1, p2, v0}, LGg/a;->p(Lokhttp3/e;Ljava/io/IOException;)Ljava/io/IOException;

    iget-object p1, p0, LKg/f;->f:Lokhttp3/r;

    iget-object p2, p0, LKg/f;->e:Lokhttp3/e;

    invoke-virtual {p1, p2}, Lokhttp3/r;->a(Lokhttp3/e;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "expected "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, LKg/f;->n:LLg/c;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " but was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LKg/f;->d()LKg/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LKg/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LKg/f;->a:Lokhttp3/a;

    invoke-virtual {v0}, Lokhttp3/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
