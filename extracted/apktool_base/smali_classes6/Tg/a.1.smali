.class public LTg/a;
.super LTg/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LTg/a$c;
    }
.end annotation


# static fields
.field public static final h:I = 0x10000

.field public static final i:J

.field public static final j:J

.field public static k:LTg/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public e:Z

.field public f:LTg/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, LTg/a;->i:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, LTg/a;->j:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LTg/z;-><init>()V

    return-void
.end method

.method public static k()LTg/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    sget-object v0, LTg/a;->k:LTg/a;

    iget-object v0, v0, LTg/a;->f:LTg/a;

    const-class v1, LTg/a;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-wide v5, LTg/a;->i:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V

    sget-object v0, LTg/a;->k:LTg/a;

    iget-object v0, v0, LTg/a;->f:LTg/a;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, LTg/a;->j:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    sget-object v2, LTg/a;->k:LTg/a;

    :cond_0
    return-object v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, LTg/a;->r(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    long-to-int v0, v3

    invoke-virtual {v1, v7, v8, v0}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    :cond_2
    sget-object v1, LTg/a;->k:LTg/a;

    iget-object v3, v0, LTg/a;->f:LTg/a;

    iput-object v3, v1, LTg/a;->f:LTg/a;

    iput-object v2, v0, LTg/a;->f:LTg/a;

    return-object v0
.end method

.method public static declared-synchronized l(LTg/a;)Z
    .locals 3

    const-class v0, LTg/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, LTg/a;->k:LTg/a;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, LTg/a;->f:LTg/a;

    if-ne v2, p0, :cond_0

    iget-object v2, p0, LTg/a;->f:LTg/a;

    iput-object v2, v1, LTg/a;->f:LTg/a;

    const/4 v1, 0x0

    iput-object v1, p0, LTg/a;->f:LTg/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized s(LTg/a;JZ)V
    .locals 5

    const-class v0, LTg/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, LTg/a;->k:LTg/a;

    if-nez v1, :cond_0

    new-instance v1, LTg/a;

    invoke-direct {v1}, LTg/a;-><init>()V

    sput-object v1, LTg/a;->k:LTg/a;

    new-instance v1, LTg/a$c;

    invoke-direct {v1}, LTg/a$c;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, LTg/z;->d()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iput-wide p1, p0, LTg/a;->g:J

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    add-long/2addr p1, v1

    iput-wide p1, p0, LTg/a;->g:J

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_6

    invoke-virtual {p0}, LTg/z;->d()J

    move-result-wide p1

    iput-wide p1, p0, LTg/a;->g:J

    :goto_1
    invoke-virtual {p0, v1, v2}, LTg/a;->r(J)J

    move-result-wide p1

    sget-object p3, LTg/a;->k:LTg/a;

    :goto_2
    iget-object v3, p3, LTg/a;->f:LTg/a;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1, v2}, LTg/a;->r(J)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object p3, p3, LTg/a;->f:LTg/a;

    goto :goto_2

    :cond_4
    :goto_3
    iget-object p1, p3, LTg/a;->f:LTg/a;

    iput-object p1, p0, LTg/a;->f:LTg/a;

    iput-object p0, p3, LTg/a;->f:LTg/a;

    sget-object p0, LTg/a;->k:LTg/a;

    if-ne p3, p0, :cond_5

    const-class p0, LTg/a;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v0

    return-void

    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final m()V
    .locals 5

    iget-boolean v0, p0, LTg/a;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, LTg/z;->i()J

    move-result-wide v0

    invoke-virtual {p0}, LTg/z;->f()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, LTg/a;->e:Z

    invoke-static {p0, v0, v1, v2}, LTg/a;->s(LTg/a;JZ)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LTg/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, LTg/a;->q(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final o(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LTg/a;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LTg/a;->q(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final p()Z
    .locals 2

    iget-boolean v0, p0, LTg/a;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, LTg/a;->e:Z

    invoke-static {p0}, LTg/a;->l(LTg/a;)Z

    move-result v0

    return v0
.end method

.method public q(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final r(J)J
    .locals 2

    iget-wide v0, p0, LTg/a;->g:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public final t(LTg/x;)LTg/x;
    .locals 1

    new-instance v0, LTg/a$a;

    invoke-direct {v0, p0, p1}, LTg/a$a;-><init>(LTg/a;LTg/x;)V

    return-object v0
.end method

.method public final u(LTg/y;)LTg/y;
    .locals 1

    new-instance v0, LTg/a$b;

    invoke-direct {v0, p0, p1}, LTg/a$b;-><init>(LTg/a;LTg/y;)V

    return-object v0
.end method

.method public v()V
    .locals 0

    return-void
.end method
