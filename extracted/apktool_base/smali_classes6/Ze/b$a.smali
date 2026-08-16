.class public final LZe/b$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lhn/d;
.implements Lio/reactivex/internal/util/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lhn/d;",
        "Lio/reactivex/internal/util/a$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:J = 0x2db3b5785ea03c8eL


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LZe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Lio/reactivex/internal/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public volatile h:Z

.field public i:J


# direct methods
.method public constructor <init>(Lhn/c;LZe/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LZe/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LZe/b$a;->b:Lhn/c;

    iput-object p2, p0, LZe/b$a;->c:LZe/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, LZe/b$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LZe/b$a;->h:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, LZe/b$a;->d:Z

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p0, LZe/b$a;->c:LZe/b;

    iget-object v1, v0, LZe/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-wide v2, v0, LZe/b;->i:J

    iput-wide v2, p0, LZe/b$a;->i:J

    iget-object v0, v0, LZe/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, LZe/b$a;->e:Z

    iput-boolean v1, p0, LZe/b$a;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, LZe/b$a;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, LZe/b$a;->b()V

    :cond_5
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, LZe/b$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZe/b$a;->f:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, LZe/b$a;->e:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, LZe/b$a;->f:Lio/reactivex/internal/util/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p0}, Lio/reactivex/internal/util/a;->d(Lio/reactivex/internal/util/a$a;)V

    goto :goto_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/Object;J)V
    .locals 2

    iget-boolean v0, p0, LZe/b$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LZe/b$a;->g:Z

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LZe/b$a;->h:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, LZe/b$a;->i:J

    cmp-long p2, v0, p2

    if-nez p2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-boolean p2, p0, LZe/b$a;->e:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, LZe/b$a;->f:Lio/reactivex/internal/util/a;

    if-nez p2, :cond_3

    new-instance p2, Lio/reactivex/internal/util/a;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object p2, p0, LZe/b$a;->f:Lio/reactivex/internal/util/a;

    :cond_3
    invoke-virtual {p2, p1}, Lio/reactivex/internal/util/a;->c(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_4
    const/4 p2, 0x1

    iput-boolean p2, p0, LZe/b$a;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p2, p0, LZe/b$a;->g:Z

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, LZe/b$a;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, LZe/b$a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LZe/b$a;->h:Z

    iget-object v0, p0, LZe/b$a;->c:LZe/b;

    invoke-virtual {v0, p0}, LZe/b;->b9(LZe/b$a;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 6

    iget-boolean v0, p0, LZe/b$a;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lio/reactivex/internal/util/p;->o(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, LZe/b$a;->b:Lhn/c;

    invoke-interface {p1}, Lhn/c;->a()V

    return v1

    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/p;->r(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LZe/b$a;->b:Lhn/c;

    invoke-static {p1}, Lio/reactivex/internal/util/p;->j(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, LZe/b$a;->b:Lhn/c;

    invoke-static {p1}, Lio/reactivex/internal/util/p;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, v2, v0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p0}, LZe/b$a;->cancel()V

    iget-object p1, p0, LZe/b$a;->b:Lhn/c;

    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Could not deliver value due to lack of requests"

    invoke-direct {v0, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return v1
.end method
