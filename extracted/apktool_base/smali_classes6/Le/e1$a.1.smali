.class public LLe/e1$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LLe/e1$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LLe/e1$f;",
        ">;",
        "LLe/e1$g<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final e:J = 0x2090aef8efde5e9eL


# instance fields
.field public b:LLe/e1$f;

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, LLe/e1$f;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, LLe/e1$f;-><init>(Ljava/lang/Object;J)V

    iput-object v0, p0, LLe/e1$a;->b:LLe/e1$f;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(LLe/e1$f;)V
    .locals 1

    iget-object v0, p0, LLe/e1$a;->b:LLe/e1$f;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object p1, p0, LLe/e1$a;->b:LLe/e1$f;

    iget p1, p0, LLe/e1$a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LLe/e1$a;->c:I

    return-void
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, LLe/e1$a;->g()LLe/e1$f;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/e1$f;

    if-eqz v0, :cond_1

    iget-object v1, v0, LLe/e1$f;->b:Ljava/lang/Object;

    invoke-virtual {p0, v1}, LLe/e1$a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/internal/util/p;->o(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lio/reactivex/internal/util/p;->r(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lio/reactivex/internal/util/p;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/internal/util/p;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LLe/e1$a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v0, LLe/e1$f;

    iget-wide v1, p0, LLe/e1$a;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, LLe/e1$a;->d:J

    invoke-direct {v0, p1, v1, v2}, LLe/e1$f;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {p0, v0}, LLe/e1$a;->a(LLe/e1$f;)V

    invoke-virtual {p0}, LLe/e1$a;->o()V

    return-void
.end method

.method public final complete()V
    .locals 6

    invoke-static {}, Lio/reactivex/internal/util/p;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LLe/e1$a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, LLe/e1$f;

    iget-wide v2, p0, LLe/e1$a;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, LLe/e1$a;->d:J

    invoke-direct {v1, v0, v2, v3}, LLe/e1$f;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {p0, v1}, LLe/e1$a;->a(LLe/e1$f;)V

    invoke-virtual {p0}, LLe/e1$a;->p()V

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 5

    invoke-static {p1}, Lio/reactivex/internal/util/p;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LLe/e1$a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v0, LLe/e1$f;

    iget-wide v1, p0, LLe/e1$a;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, LLe/e1$a;->d:J

    invoke-direct {v0, p1, v1, v2}, LLe/e1$f;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {p0, v0}, LLe/e1$a;->a(LLe/e1$f;)V

    invoke-virtual {p0}, LLe/e1$a;->p()V

    return-void
.end method

.method public final e(LLe/e1$d;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/e1$d<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p1, LLe/e1$d;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p1, LLe/e1$d;->g:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    iput-boolean v1, p1, LLe/e1$d;->f:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, LLe/e1$d;->d()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-object v2, p1, LLe/e1$d;->d:Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    const/4 v5, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    invoke-virtual {p1}, LLe/e1$d;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LLe/e1$f;

    const-wide/16 v7, 0x0

    if-nez v6, :cond_3

    invoke-virtual {p0}, LLe/e1$a;->g()LLe/e1$f;

    move-result-object v6

    iput-object v6, p1, LLe/e1$d;->d:Ljava/lang/Object;

    iget-object v9, p1, LLe/e1$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v10, v6, LLe/e1$f;->c:J

    invoke-static {v9, v10, v11}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_3
    move-wide v9, v7

    :goto_2
    cmp-long v11, v3, v7

    if-eqz v11, :cond_7

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LLe/e1$f;

    if-eqz v11, :cond_7

    iget-object v6, v11, LLe/e1$f;->b:Ljava/lang/Object;

    invoke-virtual {p0, v6}, LLe/e1$a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :try_start_1
    iget-object v12, p1, LLe/e1$d;->c:Lhn/c;

    invoke-static {v6, v12}, Lio/reactivex/internal/util/p;->b(Ljava/lang/Object;Lhn/c;)Z

    move-result v12

    if-eqz v12, :cond_4

    iput-object v2, p1, LLe/e1$d;->d:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    const-wide/16 v12, 0x1

    add-long/2addr v9, v12

    sub-long/2addr v3, v12

    invoke-virtual {p1}, LLe/e1$d;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    iput-object v2, p1, LLe/e1$d;->d:Ljava/lang/Object;

    return-void

    :cond_5
    move-object v6, v11

    goto :goto_2

    :goto_3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-object v2, p1, LLe/e1$d;->d:Ljava/lang/Object;

    invoke-virtual {p1}, LLe/e1$d;->dispose()V

    invoke-static {v6}, Lio/reactivex/internal/util/p;->r(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v6}, Lio/reactivex/internal/util/p;->o(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p1, p1, LLe/e1$d;->c:Lhn/c;

    invoke-interface {p1, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :cond_6
    return-void

    :cond_7
    cmp-long v2, v9, v7

    if-eqz v2, :cond_8

    iput-object v6, p1, LLe/e1$d;->d:Ljava/lang/Object;

    if-nez v0, :cond_8

    invoke-virtual {p1, v9, v10}, LLe/e1$d;->b(J)J

    :cond_8
    monitor-enter p1

    :try_start_2
    iget-boolean v0, p1, LLe/e1$d;->g:Z

    if-nez v0, :cond_9

    iput-boolean v5, p1, LLe/e1$d;->f:Z

    monitor-exit p1

    return-void

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_9
    iput-boolean v5, p1, LLe/e1$d;->g:Z

    monitor-exit p1

    goto/16 :goto_0

    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :goto_5
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public g()LLe/e1$f;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/e1$f;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, LLe/e1$a;->b:LLe/e1$f;

    iget-object v0, v0, LLe/e1$f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, LLe/e1$a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/p;->o(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, LLe/e1$a;->b:LLe/e1$f;

    iget-object v0, v0, LLe/e1$f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, LLe/e1$a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/p;->r(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/e1$f;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/e1$f;

    if-eqz v0, :cond_0

    iget v1, p0, LLe/e1$a;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LLe/e1$a;->c:I

    invoke-virtual {p0, v0}, LLe/e1$a;->m(LLe/e1$f;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l(I)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/e1$f;

    :goto_0
    if-lez p1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/e1$f;

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, LLe/e1$a;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LLe/e1$a;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LLe/e1$a;->m(LLe/e1$f;)V

    return-void
.end method

.method public final m(LLe/e1$f;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final n()V
    .locals 5

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/e1$f;

    iget-object v1, v0, LLe/e1$f;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    new-instance v1, LLe/e1$f;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, LLe/e1$f;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    invoke-virtual {p0}, LLe/e1$a;->n()V

    return-void
.end method
