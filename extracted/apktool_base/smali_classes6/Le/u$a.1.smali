.class public final LLe/u$a;
.super LUe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LUe/c<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final p:J = -0x4687de9589e4abbdL


# instance fields
.field public final c:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final e:[LLe/u$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LLe/u$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:LRe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:[Ljava/lang/Object;

.field public final h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public volatile l:Z

.field public final m:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile n:Z

.field public final o:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/c;LFe/o;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, LUe/c;-><init>()V

    iput-object p1, p0, LLe/u$a;->c:Lhn/c;

    iput-object p2, p0, LLe/u$a;->d:LFe/o;

    new-array p1, p3, [LLe/u$b;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    new-instance v0, LLe/u$b;

    invoke-direct {v0, p0, p2, p4}, LLe/u$b;-><init>(LLe/u$a;II)V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, LLe/u$a;->e:[LLe/u$b;

    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, LLe/u$a;->g:[Ljava/lang/Object;

    new-instance p1, LRe/c;

    invoke-direct {p1, p4}, LRe/c;-><init>(I)V

    iput-object p1, p0, LLe/u$a;->f:LRe/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/u$a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/u$a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p5, p0, LLe/u$a;->h:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/u$a;->l:Z

    invoke-virtual {p0}, LLe/u$a;->d()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LLe/u$a;->f:LRe/c;

    invoke-virtual {v0}, LRe/c;->clear()V

    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, LLe/u$a;->e:[LLe/u$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, LLe/u$b;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LLe/u$a;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LLe/u$a;->q()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LLe/u$a;->p()V

    :goto_0
    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/u$a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LLe/u$a;->f()V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LLe/u$a;->f:LRe/c;

    invoke-virtual {v0}, LRe/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public m(I)I
    .locals 2

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, LLe/u$a;->i:Z

    return p1
.end method

.method public n(ZZLhn/c;LRe/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lhn/c<",
            "*>;",
            "LRe/c<",
            "*>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, LLe/u$a;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LLe/u$a;->d()V

    invoke-virtual {p4}, LRe/c;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    iget-boolean p1, p0, LLe/u$a;->h:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, LLe/u$a;->d()V

    iget-object p1, p0, LLe/u$a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, p2, :cond_1

    invoke-interface {p3, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lhn/c;->a()V

    :goto_0
    return v1

    :cond_2
    iget-object p1, p0, LLe/u$a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, LLe/u$a;->d()V

    invoke-virtual {p4}, LRe/c;->clear()V

    invoke-interface {p3, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0}, LLe/u$a;->d()V

    invoke-interface {p3}, Lhn/c;->a()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public p()V
    .locals 14

    iget-object v0, p0, LLe/u$a;->c:Lhn/c;

    iget-object v1, p0, LLe/u$a;->f:LRe/c;

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    iget-object v4, p0, LLe/u$a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_4

    iget-boolean v11, p0, LLe/u$a;->n:Z

    invoke-virtual {v1}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_1

    move v13, v2

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {p0, v11, v13, v0, v1}, LLe/u$a;->n(ZZLhn/c;LRe/c;)Z

    move-result v11

    if-eqz v11, :cond_2

    return-void

    :cond_2
    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    :try_start_0
    iget-object v11, p0, LLe/u$a;->d:LFe/o;

    invoke-interface {v11, v10}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "The combiner returned a null value"

    invoke-static {v10, v11}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, v10}, Lhn/c;->h(Ljava/lang/Object;)V

    check-cast v12, LLe/u$b;

    invoke-virtual {v12}, LLe/u$b;->c()V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LLe/u$a;->d()V

    iget-object v2, p0, LLe/u$a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v1, p0, LLe/u$a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lio/reactivex/internal/util/ExceptionHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :goto_2
    if-nez v10, :cond_5

    iget-boolean v10, p0, LLe/u$a;->n:Z

    invoke-virtual {v1}, LRe/c;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v0, v1}, LLe/u$a;->n(ZZLhn/c;LRe/c;)Z

    move-result v10

    if-eqz v10, :cond_5

    return-void

    :cond_5
    cmp-long v6, v8, v6

    if-eqz v6, :cond_6

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    iget-object v4, p0, LLe/u$a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_6
    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LLe/u$a;->f:LRe/c;

    invoke-virtual {v0}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, LLe/u$a;->f:LRe/c;

    invoke-virtual {v1}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p0, LLe/u$a;->d:LFe/o;

    invoke-interface {v2, v1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The combiner returned a null value"

    invoke-static {v1, v2}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v0, LLe/u$b;

    invoke-virtual {v0}, LLe/u$b;->c()V

    return-object v1
.end method

.method public q()V
    .locals 6

    iget-object v0, p0, LLe/u$a;->c:Lhn/c;

    iget-object v1, p0, LLe/u$a;->f:LRe/c;

    const/4 v2, 0x1

    :cond_0
    iget-boolean v3, p0, LLe/u$a;->l:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, LRe/c;->clear()V

    return-void

    :cond_1
    iget-object v3, p0, LLe/u$a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, LRe/c;->clear()V

    invoke-interface {v0, v3}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    iget-boolean v3, p0, LLe/u$a;->n:Z

    invoke-virtual {v1}, LRe/c;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lhn/c;->h(Ljava/lang/Object;)V

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lhn/c;->a()V

    return-void

    :cond_4
    neg-int v2, v2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method public v(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LLe/u$a;->g:[Ljava/lang/Object;

    aget-object p1, v0, p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, LLe/u$a;->k:I

    add-int/2addr p1, v1

    array-length v0, v0

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, LLe/u$a;->n:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput p1, p0, LLe/u$a;->k:I

    monitor-exit p0

    return-void

    :cond_1
    iput-boolean v1, p0, LLe/u$a;->n:Z

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, LLe/u$a;->f()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public w(ILjava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/u$a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p2}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p2, p0, LLe/u$a;->h:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, LLe/u$a;->d()V

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/u$a;->n:Z

    invoke-virtual {p0}, LLe/u$a;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LLe/u$a;->v(I)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public x(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LLe/u$a;->g:[Ljava/lang/Object;

    iget v1, p0, LLe/u$a;->j:I

    aget-object v2, v0, p1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LLe/u$a;->j:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    aput-object p2, v0, p1

    array-length p2, v0

    if-ne p2, v1, :cond_1

    iget-object p2, p0, LLe/u$a;->f:LRe/c;

    iget-object v1, p0, LLe/u$a;->e:[LLe/u$b;

    aget-object v1, v1, p1

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, LRe/c;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    iget-object p2, p0, LLe/u$a;->e:[LLe/u$b;

    aget-object p1, p2, p1

    invoke-virtual {p1}, LLe/u$b;->c()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, LLe/u$a;->f()V

    :goto_2
    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public y([Lhn/b;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhn/b<",
            "+TT;>;I)V"
        }
    .end annotation

    iget-object v0, p0, LLe/u$a;->e:[LLe/u$b;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-boolean v2, p0, LLe/u$a;->n:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, LLe/u$a;->l:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lhn/b;->l(Lhn/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
