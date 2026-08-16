.class public final LLe/T1$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/T1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final r:J = 0x21b3dc811227de88L


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:LRe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/c<",
            "LZe/h<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final d:J

.field public final e:J

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "LZe/h<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k:I

.field public l:J

.field public m:J

.field public n:Lhn/d;

.field public volatile o:Z

.field public p:Ljava/lang/Throwable;

.field public volatile q:Z


# direct methods
.method public constructor <init>(Lhn/c;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "LBe/l<",
            "TT;>;>;JJI)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, LLe/T1$b;->b:Lhn/c;

    iput-wide p2, p0, LLe/T1$b;->d:J

    iput-wide p4, p0, LLe/T1$b;->e:J

    new-instance p1, LRe/c;

    invoke-direct {p1, p6}, LRe/c;-><init>(I)V

    iput-object p1, p0, LLe/T1$b;->c:LRe/c;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LLe/T1$b;->f:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LLe/T1$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LLe/T1$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/T1$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LLe/T1$b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p6, p0, LLe/T1$b;->k:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, LLe/T1$b;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/T1$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhn/a;

    invoke-interface {v1}, Lhn/c;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LLe/T1$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/T1$b;->o:Z

    invoke-virtual {p0}, LLe/T1$b;->c()V

    return-void
.end method

.method public b(ZZLhn/c;LRe/c;)Z
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

    iget-boolean v0, p0, LLe/T1$b;->q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p4}, LRe/c;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, LLe/T1$b;->p:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    invoke-virtual {p4}, LRe/c;->clear()V

    invoke-interface {p3, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p3}, Lhn/c;->a()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 14

    iget-object v0, p0, LLe/T1$b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/T1$b;->b:Lhn/c;

    iget-object v1, p0, LLe/T1$b;->c:LRe/c;

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    iget-object v4, p0, LLe/T1$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_5

    iget-boolean v11, p0, LLe/T1$b;->o:Z

    invoke-virtual {v1}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LZe/h;

    if-nez v12, :cond_2

    move v13, v2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {p0, v11, v13, v0, v1}, LLe/T1$b;->b(ZZLhn/c;LRe/c;)Z

    move-result v11

    if-eqz v11, :cond_3

    return-void

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0, v12}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v10, :cond_6

    iget-boolean v10, p0, LLe/T1$b;->o:Z

    invoke-virtual {v1}, LRe/c;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v0, v1}, LLe/T1$b;->b(ZZLhn/c;LRe/c;)Z

    move-result v10

    if-eqz v10, :cond_6

    return-void

    :cond_6
    cmp-long v6, v8, v6

    if-eqz v6, :cond_7

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    iget-object v4, p0, LLe/T1$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_7
    iget-object v4, p0, LLe/T1$b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/T1$b;->q:Z

    iget-object v1, p0, LLe/T1$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LLe/T1$b;->run()V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/T1$b;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, LLe/T1$b;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-boolean v4, p0, LLe/T1$b;->q:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget v4, p0, LLe/T1$b;->k:I

    invoke-static {v4, p0}, LZe/h;->W8(ILjava/lang/Runnable;)LZe/h;

    move-result-object v4

    iget-object v5, p0, LLe/T1$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v5, p0, LLe/T1$b;->c:LRe/c;

    invoke-virtual {v5, v4}, LRe/c;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LLe/T1$b;->c()V

    :cond_1
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iget-object v6, p0, LLe/T1$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhn/a;

    invoke-interface {v7, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-wide v6, p0, LLe/T1$b;->m:J

    add-long/2addr v6, v4

    iget-wide v4, p0, LLe/T1$b;->d:J

    cmp-long p1, v6, v4

    if-nez p1, :cond_3

    iget-wide v4, p0, LLe/T1$b;->e:J

    sub-long/2addr v6, v4

    iput-wide v6, p0, LLe/T1$b;->m:J

    iget-object p1, p0, LLe/T1$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn/a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lhn/c;->a()V

    goto :goto_1

    :cond_3
    iput-wide v6, p0, LLe/T1$b;->m:J

    :cond_4
    :goto_1
    iget-wide v4, p0, LLe/T1$b;->e:J

    cmp-long p1, v0, v4

    if-nez p1, :cond_5

    iput-wide v2, p0, LLe/T1$b;->l:J

    goto :goto_2

    :cond_5
    iput-wide v0, p0, LLe/T1$b;->l:J

    :goto_2
    return-void
.end method

.method public i(J)V
    .locals 4

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LLe/T1$b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object v0, p0, LLe/T1$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/T1$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LLe/T1$b;->e:J

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/d;->d(JJ)J

    move-result-wide p1

    iget-wide v0, p0, LLe/T1$b;->d:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/d;->c(JJ)J

    move-result-wide p1

    iget-object v0, p0, LLe/T1$b;->n:Lhn/d;

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, LLe/T1$b;->e:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/d;->d(JJ)J

    move-result-wide p1

    iget-object v0, p0, LLe/T1$b;->n:Lhn/d;

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    :goto_0
    invoke-virtual {p0}, LLe/T1$b;->c()V

    :cond_1
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/T1$b;->n:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/T1$b;->n:Lhn/d;

    iget-object p1, p0, LLe/T1$b;->b:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, LLe/T1$b;->o:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, LLe/T1$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhn/a;

    invoke-interface {v1, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LLe/T1$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput-object p1, p0, LLe/T1$b;->p:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/T1$b;->o:Z

    invoke-virtual {p0}, LLe/T1$b;->c()V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/T1$b;->n:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    :cond_0
    return-void
.end method
