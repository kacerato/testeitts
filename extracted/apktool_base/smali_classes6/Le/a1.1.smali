.class public final LLe/a1;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/a1$b;,
        LLe/a1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LEe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LEe/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:J

.field public final f:Ljava/util/concurrent/TimeUnit;

.field public final g:LBe/J;

.field public h:LLe/a1$a;


# direct methods
.method public constructor <init>(LEe/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEe/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v6, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, LLe/a1;-><init>(LEe/a;IJLjava/util/concurrent/TimeUnit;LBe/J;)V

    return-void
.end method

.method public constructor <init>(LEe/a;IJLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEe/a<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, LBe/l;-><init>()V

    .line 3
    iput-object p1, p0, LLe/a1;->c:LEe/a;

    .line 4
    iput p2, p0, LLe/a1;->d:I

    .line 5
    iput-wide p3, p0, LLe/a1;->e:J

    .line 6
    iput-object p5, p0, LLe/a1;->f:Ljava/util/concurrent/TimeUnit;

    .line 7
    iput-object p6, p0, LLe/a1;->g:LBe/J;

    return-void
.end method


# virtual methods
.method public O8(LLe/a1$a;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LLe/a1;->h:LLe/a1$a;

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p1, LLe/a1$a;->d:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p1, LLe/a1$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-boolean v0, p1, LLe/a1$a;->e:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, LLe/a1;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, LLe/a1;->Q8(LLe/a1$a;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-instance v0, LGe/h;

    invoke-direct {v0}, LGe/h;-><init>()V

    iput-object v0, p1, LLe/a1$a;->c:LDe/c;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LLe/a1;->g:LBe/J;

    iget-wide v2, p0, LLe/a1;->e:J

    iget-object v4, p0, LLe/a1;->f:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, v2, v3, v4}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LGe/h;->a(LDe/c;)Z

    return-void

    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public P8(LLe/a1$a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LLe/a1;->h:LLe/a1$a;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, LLe/a1;->h:LLe/a1$a;

    iget-object v0, p1, LLe/a1$a;->c:LDe/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LDe/c;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-wide v0, p1, LLe/a1$a;->d:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p1, LLe/a1$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, LLe/a1;->c:LEe/a;

    instance-of v1, v0, LDe/c;

    if-eqz v1, :cond_1

    check-cast v0, LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    goto :goto_1

    :cond_1
    instance-of v1, v0, LGe/g;

    if-eqz v1, :cond_2

    check-cast v0, LGe/g;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LDe/c;

    invoke-interface {v0, p1}, LGe/g;->b(LDe/c;)V

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Q8(LLe/a1$a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p1, LLe/a1$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, LLe/a1;->h:LLe/a1$a;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, LLe/a1;->h:LLe/a1$a;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    invoke-static {p1}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v1, p0, LLe/a1;->c:LEe/a;

    instance-of v2, v1, LDe/c;

    if-eqz v2, :cond_0

    check-cast v1, LDe/c;

    invoke-interface {v1}, LDe/c;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    instance-of v2, v1, LGe/g;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, LLe/a1$a;->f:Z

    goto :goto_0

    :cond_1
    check-cast v1, LGe/g;

    invoke-interface {v1, v0}, LGe/g;->b(LDe/c;)V

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m6(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LLe/a1;->h:LLe/a1$a;

    if-nez v0, :cond_0

    new-instance v0, LLe/a1$a;

    invoke-direct {v0, p0}, LLe/a1$a;-><init>(LLe/a1;)V

    iput-object v0, p0, LLe/a1;->h:LLe/a1$a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-wide v1, v0, LLe/a1$a;->d:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    iget-object v3, v0, LLe/a1$a;->c:LDe/c;

    if-eqz v3, :cond_1

    invoke-interface {v3}, LDe/c;->dispose()V

    :cond_1
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, LLe/a1$a;->d:J

    iget-boolean v3, v0, LLe/a1$a;->e:Z

    if-nez v3, :cond_2

    iget v3, p0, LLe/a1;->d:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, LLe/a1$a;->e:Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, LLe/a1;->c:LEe/a;

    new-instance v3, LLe/a1$b;

    invoke-direct {v3, p1, p0, v0}, LLe/a1$b;-><init>(Lhn/c;LLe/a1;LLe/a1$a;)V

    invoke-virtual {v2, v3}, LBe/l;->l6(LBe/q;)V

    if-eqz v1, :cond_3

    iget-object p1, p0, LLe/a1;->c:LEe/a;

    invoke-virtual {p1, v0}, LEe/a;->S8(LFe/g;)V

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
