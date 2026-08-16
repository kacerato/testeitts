.class public final LSg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/I;
.implements LSg/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSg/a$c;,
        LSg/a$g;,
        LSg/a$d;,
        LSg/a$e;,
        LSg/a$f;
    }
.end annotation


# static fields
.field public static final synthetic A:Z = false

.field public static final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/A;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:J = 0x1000000L

.field public static final z:J = 0xea60L


# instance fields
.field public final a:Lokhttp3/C;

.field public final b:Lokhttp3/J;

.field public final c:Ljava/util/Random;

.field public final d:J

.field public final e:Ljava/lang/String;

.field public f:Lokhttp3/e;

.field public final g:Ljava/lang/Runnable;

.field public h:LSg/c;

.field public i:LSg/d;

.field public j:Ljava/util/concurrent/ScheduledExecutorService;

.field public k:LSg/a$g;

.field public final l:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "LTg/f;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public n:J

.field public o:Z

.field public p:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:I

.field public u:I

.field public v:I

.field public w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokhttp3/A;->HTTP_1_1:Lokhttp3/A;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LSg/a;->x:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/C;Lokhttp3/J;Ljava/util/Random;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LSg/a;->l:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LSg/a;->m:Ljava/util/ArrayDeque;

    const/4 v0, -0x1

    iput v0, p0, LSg/a;->q:I

    invoke-virtual {p1}, Lokhttp3/C;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LSg/a;->a:Lokhttp3/C;

    iput-object p2, p0, LSg/a;->b:Lokhttp3/J;

    iput-object p3, p0, LSg/a;->c:Ljava/util/Random;

    iput-wide p4, p0, LSg/a;->d:J

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-virtual {p3, p1}, Ljava/util/Random;->nextBytes([B)V

    invoke-static {p1}, LTg/f;->J([B)LTg/f;

    move-result-object p1

    invoke-virtual {p1}, LTg/f;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LSg/a;->e:Ljava/lang/String;

    new-instance p1, LSg/a$a;

    invoke-direct {p1, p0}, LSg/a$a;-><init>(LSg/a;)V

    iput-object p1, p0, LSg/a;->g:Ljava/lang/Runnable;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Request must be GET: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/C;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(LTg/f;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LSg/a;->v(LTg/f;I)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "bytes == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LTg/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LSg/a;->b:Lokhttp3/J;

    invoke-virtual {v0, p0, p1}, Lokhttp3/J;->d(Lokhttp3/I;LTg/f;)V

    return-void
.end method

.method public b0()Lokhttp3/C;
    .locals 1

    iget-object v0, p0, LSg/a;->a:Lokhttp3/C;

    return-object v0
.end method

.method public declared-synchronized c()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, LSg/a;->n:J
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

.method public cancel()V
    .locals 1

    iget-object v0, p0, LSg/a;->f:Lokhttp3/e;

    invoke-interface {v0}, Lokhttp3/e;->cancel()V

    return-void
.end method

.method public d(ILjava/lang/String;)Z
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, p2, v0, v1}, LSg/a;->l(ILjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized e(LTg/f;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget p1, p0, LSg/a;->v:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LSg/a;->v:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LSg/a;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f(ILjava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget v1, p0, LSg/a;->q:I

    if-ne v1, v0, :cond_3

    iput p1, p0, LSg/a;->q:I

    iput-object p2, p0, LSg/a;->r:Ljava/lang/String;

    iget-boolean v0, p0, LSg/a;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, LSg/a;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LSg/a;->k:LSg/a$g;

    iput-object v1, p0, LSg/a;->k:LSg/a$g;

    iget-object v1, p0, LSg/a;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v1, p0, LSg/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move-object v1, v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, LSg/a;->b:Lokhttp3/J;

    invoke-virtual {v0, p0, p1, p2}, Lokhttp3/J;->b(Lokhttp3/I;ILjava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v0, p0, LSg/a;->b:Lokhttp3/J;

    invoke-virtual {v0, p0, p1, p2}, Lokhttp3/J;->a(Lokhttp3/I;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v1}, LGg/c;->g(Ljava/io/Closeable;)V

    return-void

    :goto_2
    invoke-static {v1}, LGg/c;->g(Ljava/io/Closeable;)V

    throw p1

    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public declared-synchronized g(LTg/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LSg/a;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LSg/a;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LSg/a;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, LSg/a;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LSg/a;->u()V

    iget p1, p0, LSg/a;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LSg/a;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

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

.method public h(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LSg/a;->v(LTg/f;I)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "text == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LSg/a;->b:Lokhttp3/J;

    invoke-virtual {v0, p0, p1}, Lokhttp3/J;->e(Lokhttp3/I;Ljava/lang/String;)V

    return-void
.end method

.method public j(ILjava/util/concurrent/TimeUnit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, LSg/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2, p2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public k(Lokhttp3/E;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p1}, Lokhttp3/E;->g()I

    move-result v0

    const/16 v1, 0x65

    const-string v2, "\'"

    if-ne v0, v1, :cond_3

    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Sec-WebSocket-Accept"

    invoke-virtual {p1, v0}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LSg/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object v0

    invoke-virtual {v0}, LTg/f;->P()LTg/f;

    move-result-object v0

    invoke-virtual {v0}, LTg/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' but was \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected HTTP 101 response but was \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/E;->g()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/E;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized l(ILjava/lang/String;J)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, LSg/b;->d(I)V

    if-eqz p2, :cond_1

    invoke-static {p2}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object v0

    invoke-virtual {v0}, LTg/f;->S()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x7b

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "reason.size() > 123: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean p2, p0, LSg/a;->s:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, LSg/a;->o:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    iput-boolean p2, p0, LSg/a;->o:Z

    iget-object v1, p0, LSg/a;->m:Ljava/util/ArrayDeque;

    new-instance v2, LSg/a$d;

    invoke-direct {v2, p1, v0, p3, p4}, LSg/a$d;-><init>(ILTg/f;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LSg/a;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p2

    :cond_3
    :goto_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public m(Lokhttp3/z;)V
    .locals 3

    invoke-virtual {p1}, Lokhttp3/z;->t()Lokhttp3/z$b;

    move-result-object p1

    sget-object v0, Lokhttp3/r;->a:Lokhttp3/r;

    invoke-virtual {p1, v0}, Lokhttp3/z$b;->p(Lokhttp3/r;)Lokhttp3/z$b;

    move-result-object p1

    sget-object v0, LSg/a;->x:Ljava/util/List;

    invoke-virtual {p1, v0}, Lokhttp3/z$b;->y(Ljava/util/List;)Lokhttp3/z$b;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/z$b;->d()Lokhttp3/z;

    move-result-object p1

    iget-object v0, p0, LSg/a;->a:Lokhttp3/C;

    invoke-virtual {v0}, Lokhttp3/C;->h()Lokhttp3/C$a;

    move-result-object v0

    const-string v1, "websocket"

    const-string v2, "Upgrade"

    invoke-virtual {v0, v2, v1}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object v0

    const-string v1, "Connection"

    invoke-virtual {v0, v1, v2}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key"

    iget-object v2, p0, LSg/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Version"

    const-string v2, "13"

    invoke-virtual {v0, v1, v2}, Lokhttp3/C$a;->h(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/C$a;->b()Lokhttp3/C;

    move-result-object v0

    sget-object v1, LGg/a;->a:LGg/a;

    invoke-virtual {v1, p1, v0}, LGg/a;->k(Lokhttp3/z;Lokhttp3/C;)Lokhttp3/e;

    move-result-object p1

    iput-object p1, p0, LSg/a;->f:Lokhttp3/e;

    invoke-interface {p1}, Lokhttp3/e;->a0()LTg/z;

    move-result-object p1

    invoke-virtual {p1}, LTg/z;->b()LTg/z;

    iget-object p1, p0, LSg/a;->f:Lokhttp3/e;

    new-instance v1, LSg/a$b;

    invoke-direct {v1, p0, v0}, LSg/a$b;-><init>(LSg/a;Lokhttp3/C;)V

    invoke-interface {p1, v1}, Lokhttp3/e;->V4(Lokhttp3/f;)V

    return-void
.end method

.method public n(Ljava/lang/Exception;Lokhttp3/E;)V
    .locals 3
    .param p2    # Lokhttp3/E;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LSg/a;->s:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LSg/a;->s:Z

    iget-object v0, p0, LSg/a;->k:LSg/a$g;

    const/4 v1, 0x0

    iput-object v1, p0, LSg/a;->k:LSg/a$g;

    iget-object v1, p0, LSg/a;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, LSg/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, LSg/a;->b:Lokhttp3/J;

    invoke-virtual {v1, p0, p1, p2}, Lokhttp3/J;->c(Lokhttp3/I;Ljava/lang/Throwable;Lokhttp3/E;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, LGg/c;->g(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p1

    invoke-static {v0}, LGg/c;->g(Ljava/io/Closeable;)V

    throw p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public o(Ljava/lang/String;LSg/a$g;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, LSg/a;->k:LSg/a$g;

    new-instance v0, LSg/d;

    iget-boolean v1, p2, LSg/a$g;->b:Z

    iget-object v2, p2, LSg/a$g;->d:LTg/d;

    iget-object v3, p0, LSg/a;->c:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, LSg/d;-><init>(ZLTg/d;Ljava/util/Random;)V

    iput-object v0, p0, LSg/a;->i:LSg/d;

    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LGg/c;->H(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {v4, v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v4, p0, LSg/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v0, p0, LSg/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance v5, LSg/a$f;

    invoke-direct {v5, p0}, LSg/a$f;-><init>(LSg/a;)V

    iget-wide v8, p0, LSg/a;->d:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, LSg/a;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, LSg/a;->u()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, LSg/c;

    iget-boolean v0, p2, LSg/a$g;->b:Z

    iget-object p2, p2, LSg/a$g;->c:LTg/e;

    invoke-direct {p1, v0, p2, p0}, LSg/c;-><init>(ZLTg/e;LSg/c$a;)V

    iput-object p1, p0, LSg/a;->h:LSg/c;

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public p()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, LSg/a;->q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LSg/a;->h:LSg/c;

    invoke-virtual {v0}, LSg/c;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized q(LTg/f;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LSg/a;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LSg/a;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LSg/a;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, LSg/a;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LSg/a;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public r()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LSg/a;->h:LSg/c;

    invoke-virtual {v1}, LSg/c;->a()V

    iget v1, p0, LSg/a;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LSg/a;->n(Ljava/lang/Exception;Lokhttp3/E;)V

    return v0
.end method

.method public declared-synchronized s()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LSg/a;->u:I
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

.method public declared-synchronized t()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LSg/a;->v:I
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

.method public final u()V
    .locals 2

    iget-object v0, p0, LSg/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v1, p0, LSg/a;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized v(LTg/f;I)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LSg/a;->s:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, LSg/a;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, LSg/a;->n:J

    invoke-virtual {p1}, LTg/f;->S()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/16 p1, 0x3e9

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, LSg/a;->d(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-wide v0, p0, LSg/a;->n:J

    invoke-virtual {p1}, LTg/f;->S()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, LSg/a;->n:J

    iget-object v0, p0, LSg/a;->m:Ljava/util/ArrayDeque;

    new-instance v1, LSg/a$e;

    invoke-direct {v1, p2, p1}, LSg/a$e;-><init>(ILTg/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LSg/a;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized w()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LSg/a;->t:I
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

.method public x()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, LSg/a;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, LSg/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, LSg/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public y()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LSg/a;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, LSg/a;->i:LSg/d;

    iget-object v2, p0, LSg/a;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LTg/f;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v2, :cond_4

    iget-object v5, p0, LSg/a;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, LSg/a$d;

    if-eqz v6, :cond_2

    iget v1, p0, LSg/a;->q:I

    iget-object v6, p0, LSg/a;->r:Ljava/lang/String;

    if-eq v1, v4, :cond_1

    iget-object v4, p0, LSg/a;->k:LSg/a$g;

    iput-object v3, p0, LSg/a;->k:LSg/a$g;

    iget-object v3, p0, LSg/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_0
    move-object v3, v5

    goto :goto_1

    :cond_1
    iget-object v4, p0, LSg/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, LSg/a$c;

    invoke-direct {v7, p0}, LSg/a$c;-><init>(LSg/a;)V

    move-object v8, v5

    check-cast v8, LSg/a$d;

    iget-wide v8, v8, LSg/a$d;->c:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v7, v8, v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, LSg/a;->p:Ljava/util/concurrent/ScheduledFuture;

    move-object v4, v3

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    move-object v6, v3

    move v1, v4

    move-object v4, v6

    goto :goto_0

    :cond_4
    move-object v6, v3

    move v1, v4

    move-object v4, v6

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v0, v2}, LSg/d;->f(LTg/f;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_5
    instance-of v2, v3, LSg/a$e;

    if-eqz v2, :cond_6

    move-object v1, v3

    check-cast v1, LSg/a$e;

    iget-object v1, v1, LSg/a$e;->b:LTg/f;

    check-cast v3, LSg/a$e;

    iget v2, v3, LSg/a$e;->a:I

    invoke-virtual {v1}, LTg/f;->S()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v0, v2, v5, v6}, LSg/d;->a(IJ)LTg/x;

    move-result-object v0

    invoke-static {v0}, LTg/p;->c(LTg/x;)LTg/d;

    move-result-object v0

    invoke-interface {v0, v1}, LTg/d;->D(LTg/f;)LTg/d;

    invoke-interface {v0}, LTg/x;->close()V

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-wide v2, p0, LSg/a;->n:J

    invoke-virtual {v1}, LTg/f;->S()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v2, v0

    iput-wide v2, p0, LSg/a;->n:J

    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    throw v0

    :cond_6
    instance-of v2, v3, LSg/a$d;

    if-eqz v2, :cond_8

    check-cast v3, LSg/a$d;

    iget v2, v3, LSg/a$d;->a:I

    iget-object v3, v3, LSg/a$d;->b:LTg/f;

    invoke-virtual {v0, v2, v3}, LSg/d;->b(ILTg/f;)V

    if-eqz v4, :cond_7

    iget-object v0, p0, LSg/a;->b:Lokhttp3/J;

    invoke-virtual {v0, p0, v1, v6}, Lokhttp3/J;->a(Lokhttp3/I;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :goto_2
    invoke-static {v4}, LGg/c;->g(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    return v0

    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    invoke-static {v4}, LGg/c;->g(Ljava/io/Closeable;)V

    throw v0

    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public z()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LSg/a;->s:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, LSg/a;->i:LSg/d;

    iget-boolean v1, p0, LSg/a;->w:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget v1, p0, LSg/a;->t:I

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget v3, p0, LSg/a;->t:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, LSg/a;->t:I

    iput-boolean v4, p0, LSg/a;->w:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/net/SocketTimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sent ping but didn\'t receive pong within "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, LSg/a;->d:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms (after "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " successful ping/pongs)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, LSg/a;->n(Ljava/lang/Exception;Lokhttp3/E;)V

    return-void

    :cond_2
    :try_start_1
    sget-object v1, LTg/f;->g:LTg/f;

    invoke-virtual {v0, v1}, LSg/d;->e(LTg/f;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0, v3}, LSg/a;->n(Ljava/lang/Exception;Lokhttp3/E;)V

    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
