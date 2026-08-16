.class public final Lokhttp3/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/B$b;
    }
.end annotation


# instance fields
.field public final b:Lokhttp3/z;

.field public final c:LLg/j;

.field public final d:LTg/a;

.field public e:Lokhttp3/r;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final f:Lokhttp3/C;

.field public final g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lokhttp3/z;Lokhttp3/C;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/B;->b:Lokhttp3/z;

    iput-object p2, p0, Lokhttp3/B;->f:Lokhttp3/C;

    iput-boolean p3, p0, Lokhttp3/B;->g:Z

    new-instance p2, LLg/j;

    invoke-direct {p2, p1, p3}, LLg/j;-><init>(Lokhttp3/z;Z)V

    iput-object p2, p0, Lokhttp3/B;->c:LLg/j;

    new-instance p2, Lokhttp3/B$a;

    invoke-direct {p2, p0}, Lokhttp3/B$a;-><init>(Lokhttp3/B;)V

    iput-object p2, p0, Lokhttp3/B;->d:LTg/a;

    invoke-virtual {p1}, Lokhttp3/z;->e()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, LTg/z;->h(JLjava/util/concurrent/TimeUnit;)LTg/z;

    return-void
.end method

.method public static synthetic a(Lokhttp3/B;)Lokhttp3/r;
    .locals 0

    iget-object p0, p0, Lokhttp3/B;->e:Lokhttp3/r;

    return-object p0
.end method

.method public static e(Lokhttp3/z;Lokhttp3/C;Z)Lokhttp3/B;
    .locals 1

    new-instance v0, Lokhttp3/B;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/B;-><init>(Lokhttp3/z;Lokhttp3/C;Z)V

    invoke-virtual {p0}, Lokhttp3/z;->m()Lokhttp3/r$c;

    move-result-object p0

    invoke-interface {p0, v0}, Lokhttp3/r$c;->a(Lokhttp3/e;)Lokhttp3/r;

    move-result-object p0

    iput-object p0, v0, Lokhttp3/B;->e:Lokhttp3/r;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized H3()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/B;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public V4(Lokhttp3/f;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/B;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/B;->h:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lokhttp3/B;->b()V

    iget-object v0, p0, Lokhttp3/B;->e:Lokhttp3/r;

    invoke-virtual {v0, p0}, Lokhttp3/r;->c(Lokhttp3/e;)V

    iget-object v0, p0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->k()Lokhttp3/p;

    move-result-object v0

    new-instance v1, Lokhttp3/B$b;

    invoke-direct {v1, p0, p1}, Lokhttp3/B$b;-><init>(Lokhttp3/B;Lokhttp3/f;)V

    invoke-virtual {v0, v1}, Lokhttp3/p;->b(Lokhttp3/B$b;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a0()LTg/z;
    .locals 1

    iget-object v0, p0, Lokhttp3/B;->d:LTg/a;

    return-object v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, LPg/f;->k()LPg/f;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, LPg/f;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/B;->c:LLg/j;

    invoke-virtual {v1, v0}, LLg/j;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public b0()Lokhttp3/C;
    .locals 1

    iget-object v0, p0, Lokhttp3/B;->f:Lokhttp3/C;

    return-object v0
.end method

.method public c()Lokhttp3/B;
    .locals 3

    iget-object v0, p0, Lokhttp3/B;->b:Lokhttp3/z;

    iget-object v1, p0, Lokhttp3/B;->f:Lokhttp3/C;

    iget-boolean v2, p0, Lokhttp3/B;->g:Z

    invoke-static {v0, v1, v2}, Lokhttp3/B;->e(Lokhttp3/z;Lokhttp3/C;Z)Lokhttp3/B;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lokhttp3/B;->c:LLg/j;

    invoke-virtual {v0}, LLg/j;->b()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokhttp3/B;->c()Lokhttp3/B;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lokhttp3/e;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lokhttp3/B;->c()Lokhttp3/B;

    move-result-object v0

    return-object v0
.end method

.method public d()Lokhttp3/E;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lokhttp3/B;->c:LLg/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LLg/a;

    iget-object v2, p0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/z;->j()Lokhttp3/n;

    move-result-object v2

    invoke-direct {v0, v2}, LLg/a;-><init>(Lokhttp3/n;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LIg/a;

    iget-object v2, p0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/z;->r()LIg/f;

    move-result-object v2

    invoke-direct {v0, v2}, LIg/a;-><init>(LIg/f;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LKg/a;

    iget-object v2, p0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-direct {v0, v2}, LKg/a;-><init>(Lokhttp3/z;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lokhttp3/B;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, LLg/b;

    iget-boolean v2, p0, Lokhttp3/B;->g:Z

    invoke-direct {v0, v2}, LLg/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, LLg/g;

    iget-object v6, p0, Lokhttp3/B;->f:Lokhttp3/C;

    iget-object v8, p0, Lokhttp3/B;->e:Lokhttp3/r;

    iget-object v0, p0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->g()I

    move-result v9

    iget-object v0, p0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->A()I

    move-result v10

    iget-object v0, p0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->E()I

    move-result v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, LLg/g;-><init>(Ljava/util/List;LKg/f;LLg/c;LKg/c;ILokhttp3/C;Lokhttp3/e;Lokhttp3/r;III)V

    iget-object v0, p0, Lokhttp3/B;->f:Lokhttp3/C;

    invoke-interface {v12, v0}, Lokhttp3/w$a;->c(Lokhttp3/C;)Lokhttp3/E;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lokhttp3/E;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/B;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/B;->h:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0}, Lokhttp3/B;->b()V

    iget-object v0, p0, Lokhttp3/B;->d:LTg/a;

    invoke-virtual {v0}, LTg/a;->m()V

    iget-object v0, p0, Lokhttp3/B;->e:Lokhttp3/r;

    invoke-virtual {v0, p0}, Lokhttp3/r;->c(Lokhttp3/e;)V

    :try_start_1
    iget-object v0, p0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->k()Lokhttp3/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/p;->c(Lokhttp3/B;)V

    invoke-virtual {p0}, Lokhttp3/B;->d()Lokhttp3/E;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->k()Lokhttp3/p;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/p;->g(Lokhttp3/B;)V

    return-object v0

    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v0}, Lokhttp3/B;->h(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/B;->e:Lokhttp3/r;

    invoke-virtual {v1, p0, v0}, Lokhttp3/r;->b(Lokhttp3/e;Ljava/io/IOException;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v1, p0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->k()Lokhttp3/p;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/p;->g(Lokhttp3/B;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/B;->f:Lokhttp3/C;

    invoke-virtual {v0}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/v;->N()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()LKg/f;
    .locals 1

    iget-object v0, p0, Lokhttp3/B;->c:LLg/j;

    invoke-virtual {v0}, LLg/j;->k()LKg/f;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/B;->d:LTg/a;

    invoke-virtual {v0}, LTg/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/B;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/B;->g:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/B;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lokhttp3/B;->c:LLg/j;

    invoke-virtual {v0}, LLg/j;->e()Z

    move-result v0

    return v0
.end method
