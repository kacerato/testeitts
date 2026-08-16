.class public final Lokhttp3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/c$d;,
        Lokhttp3/c$e;,
        Lokhttp3/c$c;
    }
.end annotation


# static fields
.field public static final i:I = 0x31191

.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2


# instance fields
.field public final b:LIg/f;

.field public final c:LIg/d;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1

    .line 1
    sget-object v0, LOg/a;->a:LOg/a;

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/c;-><init>(Ljava/io/File;JLOg/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLOg/a;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lokhttp3/c$a;

    invoke-direct {v0, p0}, Lokhttp3/c$a;-><init>(Lokhttp3/c;)V

    iput-object v0, p0, Lokhttp3/c;->b:LIg/f;

    const v3, 0x31191

    const/4 v4, 0x2

    move-object v1, p4

    move-object v2, p1

    move-wide v5, p2

    .line 4
    invoke-static/range {v1 .. v6}, LIg/d;->e(LOg/a;Ljava/io/File;IIJ)LIg/d;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/c;->c:LIg/d;

    return-void
.end method

.method public static j(Lokhttp3/v;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lokhttp3/v;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object p0

    invoke-virtual {p0}, LTg/f;->H()LTg/f;

    move-result-object p0

    invoke-virtual {p0}, LTg/f;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(LTg/e;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, LTg/e;->c2()J

    move-result-wide v0

    invoke-interface {p0}, LTg/e;->L1()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    long-to-int p0, v0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(LIg/d$d;)V
    .locals 0
    .param p1    # LIg/d$d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, LIg/d$d;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {v0}, LIg/d;->f()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {v0}, LIg/d;->close()V

    return-void
.end method

.method public d()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {v0}, LIg/d;->l()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {v0}, LIg/d;->j()V

    return-void
.end method

.method public f(Lokhttp3/C;)Lokhttp3/E;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/c;->j(Lokhttp3/v;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {v2, v0}, LIg/d;->k(Ljava/lang/String;)LIg/d$f;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v2, Lokhttp3/c$e;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LIg/d$f;->e(I)LTg/y;

    move-result-object v3

    invoke-direct {v2, v3}, Lokhttp3/c$e;-><init>(LTg/y;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v2, v0}, Lokhttp3/c$e;->d(LIg/d$f;)Lokhttp3/E;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lokhttp3/c$e;->b(Lokhttp3/C;Lokhttp3/E;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object p1

    invoke-static {p1}, LGg/c;->g(Ljava/io/Closeable;)V

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    invoke-static {v0}, LGg/c;->g(Ljava/io/Closeable;)V

    :catch_1
    return-object v1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {v0}, LIg/d;->flush()V

    return-void
.end method

.method public declared-synchronized g()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->g:I
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

.method public h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {v0}, LIg/d;->n()V

    return-void
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {v0}, LIg/d;->isClosed()Z

    move-result v0

    return v0
.end method

.method public k()J
    .locals 2

    iget-object v0, p0, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {v0}, LIg/d;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized l()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->f:I
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

.method public m(Lokhttp3/E;)LIg/b;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/C;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/C;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LLg/f;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/c;->o(Lokhttp3/C;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2

    :cond_0
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-static {p1}, LLg/e;->e(Lokhttp3/E;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    new-instance v0, Lokhttp3/c$e;

    invoke-direct {v0, p1}, Lokhttp3/c$e;-><init>(Lokhttp3/E;)V

    :try_start_1
    iget-object v1, p0, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/c;->j(Lokhttp3/v;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, LIg/d;->g(Ljava/lang/String;)LIg/d$d;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_3

    return-object v2

    :cond_3
    :try_start_2
    invoke-virtual {v0, p1}, Lokhttp3/c$e;->f(LIg/d$d;)V

    new-instance v0, Lokhttp3/c$c;

    invoke-direct {v0, p0, p1}, Lokhttp3/c$c;-><init>(Lokhttp3/c;LIg/d$d;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_1
    move-object p1, v2

    :catch_2
    invoke-virtual {p0, p1}, Lokhttp3/c;->a(LIg/d$d;)V

    return-object v2
.end method

.method public o(Lokhttp3/C;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {p1}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/c;->j(Lokhttp3/v;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LIg/d;->u(Ljava/lang/String;)Z

    return-void
.end method

.method public declared-synchronized p()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->h:I
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

.method public q()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c;->c:LIg/d;

    invoke-virtual {v0}, LIg/d;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized r()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/c;->g:I
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

.method public declared-synchronized s(LIg/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/c;->h:I

    iget-object v0, p1, LIg/c;->a:Lokhttp3/C;

    if-eqz v0, :cond_0

    iget p1, p0, Lokhttp3/c;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/c;->f:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p1, LIg/c;->b:Lokhttp3/E;

    if-eqz p1, :cond_1

    iget p1, p0, Lokhttp3/c;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/c;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public t(Lokhttp3/E;Lokhttp3/E;)V
    .locals 1

    new-instance v0, Lokhttp3/c$e;

    invoke-direct {v0, p2}, Lokhttp3/c$e;-><init>(Lokhttp3/E;)V

    invoke-virtual {p1}, Lokhttp3/E;->c()Lokhttp3/F;

    move-result-object p1

    check-cast p1, Lokhttp3/c$d;

    iget-object p1, p1, Lokhttp3/c$d;->c:LIg/d$f;

    :try_start_0
    invoke-virtual {p1}, LIg/d$f;->c()LIg/d$d;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {v0, p1}, Lokhttp3/c$e;->f(LIg/d$d;)V

    invoke-virtual {p1}, LIg/d$d;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :catch_1
    invoke-virtual {p0, p1}, Lokhttp3/c;->a(LIg/d$d;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public u()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/c$b;

    invoke-direct {v0, p0}, Lokhttp3/c$b;-><init>(Lokhttp3/c;)V

    return-object v0
.end method

.method public declared-synchronized v()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->e:I
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

.method public declared-synchronized w()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->d:I
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
