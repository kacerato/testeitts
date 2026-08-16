.class public final LNg/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNg/h$c;,
        LNg/h$a;,
        LNg/h$b;
    }
.end annotation


# static fields
.field public static final synthetic m:Z


# instance fields
.field public a:J

.field public b:J

.field public final c:I

.field public final d:LNg/f;

.field public final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lokhttp3/u;",
            ">;"
        }
    .end annotation
.end field

.field public f:LNg/b$a;

.field public g:Z

.field public final h:LNg/h$b;

.field public final i:LNg/h$a;

.field public final j:LNg/h$c;

.field public final k:LNg/h$c;

.field public l:LNg/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILNg/f;ZZLokhttp3/u;)V
    .locals 3
    .param p5    # Lokhttp3/u;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LNg/h;->a:J

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LNg/h;->e:Ljava/util/Deque;

    new-instance v1, LNg/h$c;

    invoke-direct {v1, p0}, LNg/h$c;-><init>(LNg/h;)V

    iput-object v1, p0, LNg/h;->j:LNg/h$c;

    new-instance v1, LNg/h$c;

    invoke-direct {v1, p0}, LNg/h$c;-><init>(LNg/h;)V

    iput-object v1, p0, LNg/h;->k:LNg/h$c;

    const/4 v1, 0x0

    iput-object v1, p0, LNg/h;->l:LNg/a;

    if-eqz p2, :cond_5

    iput p1, p0, LNg/h;->c:I

    iput-object p2, p0, LNg/h;->d:LNg/f;

    iget-object p1, p2, LNg/f;->p:LNg/l;

    invoke-virtual {p1}, LNg/l;->e()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, LNg/h;->b:J

    new-instance p1, LNg/h$b;

    iget-object p2, p2, LNg/f;->o:LNg/l;

    invoke-virtual {p2}, LNg/l;->e()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2}, LNg/h$b;-><init>(LNg/h;J)V

    iput-object p1, p0, LNg/h;->h:LNg/h$b;

    new-instance p2, LNg/h$a;

    invoke-direct {p2, p0}, LNg/h$a;-><init>(LNg/h;)V

    iput-object p2, p0, LNg/h;->i:LNg/h$a;

    iput-boolean p4, p1, LNg/h$b;->f:Z

    iput-boolean p3, p2, LNg/h$a;->d:Z

    if-eqz p5, :cond_0

    invoke-interface {v0, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, LNg/h;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, LNg/h;->n()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(LNg/h;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, LNg/h;->e:Ljava/util/Deque;

    return-object p0
.end method

.method public static synthetic b(LNg/h;)LNg/b$a;
    .locals 0

    iget-object p0, p0, LNg/h;->f:LNg/b$a;

    return-object p0
.end method


# virtual methods
.method public c(J)V
    .locals 2

    iget-wide v0, p0, LNg/h;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, LNg/h;->b:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LNg/h;->h:LNg/h$b;

    iget-boolean v1, v0, LNg/h$b;->f:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, LNg/h$b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LNg/h;->i:LNg/h$a;

    iget-boolean v1, v0, LNg/h$a;->d:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, LNg/h$a;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, LNg/h;->o()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-object v0, LNg/a;->CANCEL:LNg/a;

    invoke-virtual {p0, v0}, LNg/h;->f(LNg/a;)V

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, LNg/h;->d:LNg/f;

    iget v1, p0, LNg/h;->c:I

    invoke-virtual {v0, v1}, LNg/f;->w(I)LNg/h;

    :cond_3
    :goto_2
    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LNg/h;->i:LNg/h$a;

    iget-boolean v1, v0, LNg/h$a;->c:Z

    if-nez v1, :cond_2

    iget-boolean v0, v0, LNg/h$a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LNg/h;->l:LNg/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, LNg/h;->l:LNg/a;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(LNg/a;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(LNg/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LNg/h;->g(LNg/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LNg/h;->d:LNg/f;

    iget v1, p0, LNg/h;->c:I

    invoke-virtual {v0, v1, p1}, LNg/f;->Q(ILNg/a;)V

    return-void
.end method

.method public final g(LNg/a;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LNg/h;->l:LNg/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LNg/h;->h:LNg/h$b;

    iget-boolean v0, v0, LNg/h$b;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LNg/h;->i:LNg/h$a;

    iget-boolean v0, v0, LNg/h$a;->d:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iput-object p1, p0, LNg/h;->l:LNg/a;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LNg/h;->d:LNg/f;

    iget v0, p0, LNg/h;->c:I

    invoke-virtual {p1, v0}, LNg/f;->w(I)LNg/h;

    const/4 p1, 0x1

    return p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public h(LNg/a;)V
    .locals 2

    invoke-virtual {p0, p1}, LNg/h;->g(LNg/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LNg/h;->d:LNg/f;

    iget v1, p0, LNg/h;->c:I

    invoke-virtual {v0, v1, p1}, LNg/f;->R(ILNg/a;)V

    return-void
.end method

.method public i()LNg/f;
    .locals 1

    iget-object v0, p0, LNg/h;->d:LNg/f;

    return-object v0
.end method

.method public declared-synchronized j()LNg/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LNg/h;->l:LNg/a;
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

.method public k()I
    .locals 1

    iget v0, p0, LNg/h;->c:I

    return v0
.end method

.method public l()LTg/x;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LNg/h;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, LNg/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LNg/h;->i:LNg/h$a;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public m()LTg/y;
    .locals 1

    iget-object v0, p0, LNg/h;->h:LNg/h$b;

    return-object v0
.end method

.method public n()Z
    .locals 4

    iget v0, p0, LNg/h;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, LNg/h;->d:LNg/f;

    iget-boolean v3, v3, LNg/f;->b:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public declared-synchronized o()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LNg/h;->l:LNg/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, LNg/h;->h:LNg/h$b;

    iget-boolean v2, v0, LNg/h$b;->f:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, LNg/h$b;->e:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, LNg/h;->i:LNg/h$a;

    iget-boolean v2, v0, LNg/h$a;->d:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, LNg/h$a;->c:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, LNg/h;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public p()LTg/z;
    .locals 1

    iget-object v0, p0, LNg/h;->j:LNg/h$c;

    return-object v0
.end method

.method public q(LTg/e;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LNg/h;->h:LNg/h$b;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, LNg/h$b;->a(LTg/e;J)V

    return-void
.end method

.method public r()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LNg/h;->h:LNg/h$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, LNg/h$b;->f:Z

    invoke-virtual {p0}, LNg/h;->o()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, LNg/h;->d:LNg/f;

    iget v1, p0, LNg/h;->c:I

    invoke-virtual {v0, v1}, LNg/f;->w(I)LNg/h;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public s(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LNg/b;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, LNg/h;->g:Z

    iget-object v0, p0, LNg/h;->e:Ljava/util/Deque;

    invoke-static {p1}, LGg/c;->I(Ljava/util/List;)Lokhttp3/u;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LNg/h;->o()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    iget-object p1, p0, LNg/h;->d:LNg/f;

    iget v0, p0, LNg/h;->c:I

    invoke-virtual {p1, v0}, LNg/f;->w(I)LNg/h;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized t(LNg/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LNg/h;->l:LNg/a;

    if-nez v0, :cond_0

    iput-object p1, p0, LNg/h;->l:LNg/a;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
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

.method public declared-synchronized u(LNg/b$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, LNg/h;->f:LNg/b$a;

    iget-object v0, p0, LNg/h;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
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

.method public declared-synchronized v()Lokhttp3/u;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LNg/h;->j:LNg/h$c;

    invoke-virtual {v0}, LTg/a;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v0, p0, LNg/h;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LNg/h;->l:LNg/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LNg/h;->w()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v0, p0, LNg/h;->j:LNg/h$c;

    invoke-virtual {v0}, LNg/h$c;->w()V

    iget-object v0, p0, LNg/h;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LNg/h;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_3
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, LNg/h;->l:LNg/a;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(LNg/a;)V

    throw v0

    :goto_1
    iget-object v1, p0, LNg/h;->j:LNg/h$c;

    invoke-virtual {v1}, LNg/h$c;->w()V

    throw v0

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public w()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public x(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LNg/b;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, LNg/h;->g:Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, LNg/h;->i:LNg/h$a;

    iput-boolean v0, p2, LNg/h$a;->d:Z

    move p2, v0

    :goto_0
    move v2, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    move p2, v1

    goto :goto_0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    iget-object v3, p0, LNg/h;->d:LNg/f;

    monitor-enter v3

    :try_start_1
    iget-object p2, p0, LNg/h;->d:LNg/f;

    iget-wide v4, p2, LNg/f;->n:J

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    monitor-exit v3

    move p2, v0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_2
    :goto_3
    iget-object v0, p0, LNg/h;->d:LNg/f;

    iget v1, p0, LNg/h;->c:I

    invoke-virtual {v0, v1, v2, p1}, LNg/f;->N(IZLjava/util/List;)V

    if-eqz p2, :cond_3

    iget-object p1, p0, LNg/h;->d:LNg/f;

    invoke-virtual {p1}, LNg/f;->flush()V

    :cond_3
    return-void

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "headers == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y()LTg/z;
    .locals 1

    iget-object v0, p0, LNg/h;->k:LNg/h$c;

    return-object v0
.end method
