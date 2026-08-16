.class public final Lokhttp3/B$b;
.super LGg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# static fields
.field public static final synthetic e:Z


# instance fields
.field public final c:Lokhttp3/f;

.field public final synthetic d:Lokhttp3/B;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lokhttp3/B;Lokhttp3/f;)V
    .locals 1

    iput-object p1, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    invoke-virtual {p1}, Lokhttp3/B;->f()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "OkHttp %s"

    invoke-direct {p0, v0, p1}, LGg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lokhttp3/B$b;->c:Lokhttp3/f;

    return-void
.end method


# virtual methods
.method public m()V
    .locals 5

    iget-object v0, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    iget-object v0, v0, Lokhttp3/B;->d:LTg/a;

    invoke-virtual {v0}, LTg/a;->m()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    invoke-virtual {v1}, Lokhttp3/B;->d()Lokhttp3/E;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    iget-object v2, v2, Lokhttp3/B;->c:LLg/j;

    invoke-virtual {v2}, LLg/j;->e()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lokhttp3/B$b;->c:Lokhttp3/f;

    iget-object v1, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Lokhttp3/f;->a(Lokhttp3/e;Ljava/io/IOException;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lokhttp3/B$b;->c:Lokhttp3/f;

    iget-object v3, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    invoke-interface {v0, v3, v1}, Lokhttp3/f;->b(Lokhttp3/e;Lokhttp3/E;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    iget-object v0, v0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->k()Lokhttp3/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/p;->f(Lokhttp3/B$b;)V

    goto :goto_2

    :catch_1
    move-exception v1

    move v2, v0

    move-object v0, v1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    invoke-virtual {v1, v0}, Lokhttp3/B;->h(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-static {}, LPg/f;->k()LPg/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback failure for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    invoke-virtual {v3}, Lokhttp3/B;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, LPg/f;->r(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    invoke-static {v1}, Lokhttp3/B;->a(Lokhttp3/B;)Lokhttp3/r;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    invoke-virtual {v1, v2, v0}, Lokhttp3/r;->b(Lokhttp3/e;Ljava/io/IOException;)V

    iget-object v1, p0, Lokhttp3/B$b;->c:Lokhttp3/f;

    iget-object v2, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    invoke-interface {v1, v2, v0}, Lokhttp3/f;->a(Lokhttp3/e;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    iget-object v1, v1, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->k()Lokhttp3/p;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/p;->f(Lokhttp3/B$b;)V

    throw v0
.end method

.method public n(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object p1, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    invoke-static {p1}, Lokhttp3/B;->a(Lokhttp3/B;)Lokhttp3/r;

    move-result-object p1

    iget-object v1, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    invoke-virtual {p1, v1, v0}, Lokhttp3/r;->b(Lokhttp3/e;Ljava/io/IOException;)V

    iget-object p1, p0, Lokhttp3/B$b;->c:Lokhttp3/f;

    iget-object v1, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    invoke-interface {p1, v1, v0}, Lokhttp3/f;->a(Lokhttp3/e;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    iget-object p1, p1, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {p1}, Lokhttp3/z;->k()Lokhttp3/p;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp3/p;->f(Lokhttp3/B$b;)V

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    iget-object v0, v0, Lokhttp3/B;->b:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->k()Lokhttp3/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/p;->f(Lokhttp3/B$b;)V

    throw p1
.end method

.method public o()Lokhttp3/B;
    .locals 1

    iget-object v0, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    iget-object v0, v0, Lokhttp3/B;->f:Lokhttp3/C;

    invoke-virtual {v0}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/v;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Lokhttp3/C;
    .locals 1

    iget-object v0, p0, Lokhttp3/B$b;->d:Lokhttp3/B;

    iget-object v0, v0, Lokhttp3/B;->f:Lokhttp3/C;

    return-object v0
.end method
