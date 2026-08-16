.class public final LOe/u$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final m:J = 0x76e7117251786db1L


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final d:[LOe/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LOe/u$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public e:[Ljava/lang/Object;

.field public final f:LRe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/c<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Z

.field public volatile h:Z

.field public volatile i:Z

.field public final j:Lio/reactivex/internal/util/c;

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(LBe/I;LFe/o;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Lio/reactivex/internal/util/c;

    invoke-direct {v0}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object v0, p0, LOe/u$b;->j:Lio/reactivex/internal/util/c;

    iput-object p1, p0, LOe/u$b;->b:LBe/I;

    iput-object p2, p0, LOe/u$b;->c:LFe/o;

    iput-boolean p5, p0, LOe/u$b;->g:Z

    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, LOe/u$b;->e:[Ljava/lang/Object;

    new-array p1, p3, [LOe/u$a;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    new-instance p5, LOe/u$a;

    invoke-direct {p5, p0, p2}, LOe/u$a;-><init>(LOe/u$b;I)V

    aput-object p5, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, LOe/u$b;->d:[LOe/u$a;

    new-instance p1, LRe/c;

    invoke-direct {p1, p4}, LRe/c;-><init>(I)V

    iput-object p1, p0, LOe/u$b;->f:LRe/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, LOe/u$b;->d:[LOe/u$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, LOe/u$a;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(LRe/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRe/c<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, LOe/u$b;->e:[Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, LRe/c;->clear()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 8

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOe/u$b;->f:LRe/c;

    iget-object v1, p0, LOe/u$b;->b:LBe/I;

    iget-boolean v2, p0, LOe/u$b;->g:Z

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :goto_0
    iget-boolean v5, p0, LOe/u$b;->h:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0, v0}, LOe/u$b;->b(LRe/c;)V

    return-void

    :cond_2
    if-nez v2, :cond_3

    iget-object v5, p0, LOe/u$b;->j:Lio/reactivex/internal/util/c;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, LOe/u$b;->a()V

    invoke-virtual {p0, v0}, LOe/u$b;->b(LRe/c;)V

    iget-object v0, p0, LOe/u$b;->j:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-boolean v5, p0, LOe/u$b;->i:Z

    invoke-virtual {v0}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    if-nez v6, :cond_4

    move v7, v3

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {p0, v0}, LOe/u$b;->b(LRe/c;)V

    iget-object v0, p0, LOe/u$b;->j:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-interface {v1}, LBe/I;->a()V

    goto :goto_2

    :cond_5
    invoke-interface {v1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_6
    if-eqz v7, :cond_7

    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_7
    :try_start_0
    iget-object v5, p0, LOe/u$b;->c:LFe/o;

    invoke-interface {v5, v6}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "The combiner returned a null value"

    invoke-static {v5, v6}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, v5}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v3, p0, LOe/u$b;->j:Lio/reactivex/internal/util/c;

    invoke-virtual {v3, v2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, LOe/u$b;->a()V

    invoke-virtual {p0, v0}, LOe/u$b;->b(LRe/c;)V

    iget-object v0, p0, LOe/u$b;->j:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/u$b;->h:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, LOe/u$b;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/u$b;->h:Z

    invoke-virtual {p0}, LOe/u$b;->a()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/u$b;->f:LRe/c;

    invoke-virtual {p0, v0}, LOe/u$b;->b(LRe/c;)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LOe/u$b;->e:[Ljava/lang/Object;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    aget-object p1, v0, p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget v2, p0, LOe/u$b;->l:I

    add-int/2addr v2, v1

    iput v2, p0, LOe/u$b;->l:I

    array-length v0, v0

    if-ne v2, v0, :cond_3

    :cond_2
    iput-boolean v1, p0, LOe/u$b;->i:Z

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, LOe/u$b;->a()V

    :cond_4
    invoke-virtual {p0}, LOe/u$b;->c()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f(ILjava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LOe/u$b;->j:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean p2, p0, LOe/u$b;->g:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, LOe/u$b;->e:[Ljava/lang/Object;

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    aget-object p1, p2, p1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget v1, p0, LOe/u$b;->l:I

    add-int/2addr v1, v0

    iput v1, p0, LOe/u$b;->l:I

    array-length p2, p2

    if-ne v1, p2, :cond_3

    :cond_2
    iput-boolean v0, p0, LOe/u$b;->i:Z

    :cond_3
    monitor-exit p0

    move v0, p1

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, LOe/u$b;->a()V

    :cond_5
    invoke-virtual {p0}, LOe/u$b;->c()V

    goto :goto_3

    :cond_6
    invoke-static {p2}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public g(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LOe/u$b;->e:[Ljava/lang/Object;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    aget-object v1, v0, p1

    iget v2, p0, LOe/u$b;->k:I

    if-nez v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LOe/u$b;->k:I

    :cond_1
    aput-object p2, v0, p1

    array-length p1, v0

    if-ne v2, p1, :cond_2

    iget-object p1, p0, LOe/u$b;->f:LRe/c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, LRe/c;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, LOe/u$b;->c()V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public h([LBe/G;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LBe/G<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/u$b;->d:[LOe/u$a;

    array-length v1, v0

    iget-object v2, p0, LOe/u$b;->b:LBe/I;

    invoke-interface {v2, p0}, LBe/I;->e(LDe/c;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-boolean v3, p0, LOe/u$b;->i:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, LOe/u$b;->h:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, LBe/G;->c(LBe/I;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
