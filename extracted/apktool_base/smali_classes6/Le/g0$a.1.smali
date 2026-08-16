.class public final LLe/g0$a;
.super LUe/c;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/g0;
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
        "TR;>;",
        "LBe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final p:J = -0x2af733f1e9031a6bL


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
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:I

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public h:Lhn/d;

.field public i:LIe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile j:Z

.field public volatile k:Z

.field public final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TR;>;"
        }
    .end annotation
.end field

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Lhn/c;LFe/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, LUe/c;-><init>()V

    iput-object p1, p0, LLe/g0$a;->c:Lhn/c;

    iput-object p2, p0, LLe/g0$a;->d:LFe/o;

    iput p3, p0, LLe/g0$a;->e:I

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    iput p3, p0, LLe/g0$a;->f:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/g0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/g0$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LLe/g0$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/g0$a;->j:Z

    invoke-virtual {p0}, LLe/g0$a;->f()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, LLe/g0$a;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/g0$a;->k:Z

    iget-object v0, p0, LLe/g0$a;->h:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/g0$a;->i:LIe/o;

    invoke-interface {v0}, LIe/o;->clear()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LLe/g0$a;->m:Ljava/util/Iterator;

    iget-object v0, p0, LLe/g0$a;->i:LIe/o;

    invoke-interface {v0}, LIe/o;->clear()V

    return-void
.end method

.method public d(ZZLhn/c;LIe/o;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lhn/c<",
            "*>;",
            "LIe/o<",
            "*>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, LLe/g0$a;->k:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-object v1, p0, LLe/g0$a;->m:Ljava/util/Iterator;

    invoke-interface {p4}, LIe/o;->clear()V

    return v2

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, LLe/g0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    iget-object p1, p0, LLe/g0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    iput-object v1, p0, LLe/g0$a;->m:Ljava/util/Iterator;

    invoke-interface {p4}, LIe/o;->clear()V

    invoke-interface {p3, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p3}, Lhn/c;->a()V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public f()V
    .locals 18

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, LLe/g0$a;->c:Lhn/c;

    iget-object v3, v1, LLe/g0$a;->i:LIe/o;

    iget v0, v1, LLe/g0$a;->o:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iget-object v6, v1, LLe/g0$a;->m:Ljava/util/Iterator;

    move v7, v5

    :goto_1
    const/4 v8, 0x0

    if-nez v6, :cond_5

    iget-boolean v9, v1, LLe/g0$a;->j:Z

    :try_start_0
    invoke-interface {v3}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v10, :cond_2

    move v11, v5

    goto :goto_2

    :cond_2
    move v11, v4

    :goto_2
    invoke-virtual {v1, v9, v11, v2, v3}, LLe/g0$a;->d(ZZLhn/c;LIe/o;)Z

    move-result v9

    if-eqz v9, :cond_3

    return-void

    :cond_3
    if-eqz v10, :cond_5

    :try_start_1
    iget-object v6, v1, LLe/g0$a;->d:LFe/o;

    invoke-interface {v6, v10}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_4

    invoke-virtual {v1, v0}, LLe/g0$a;->n(Z)V

    move-object v6, v8

    goto :goto_1

    :cond_4
    iput-object v6, v1, LLe/g0$a;->m:Ljava/util/Iterator;

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v3, v1, LLe/g0$a;->h:Lhn/d;

    invoke-interface {v3}, Lhn/d;->cancel()V

    iget-object v3, v1, LLe/g0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, LLe/g0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v4}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, v1, LLe/g0$a;->h:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, v1, LLe/g0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v4}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, LLe/g0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    iput-object v8, v1, LLe/g0$a;->m:Ljava/util/Iterator;

    invoke-interface {v3}, LIe/o;->clear()V

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :goto_3
    if-eqz v6, :cond_e

    iget-object v9, v1, LLe/g0$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    move-wide v13, v11

    :goto_4
    cmp-long v15, v13, v9

    if-eqz v15, :cond_9

    iget-boolean v15, v1, LLe/g0$a;->j:Z

    invoke-virtual {v1, v15, v4, v2, v3}, LLe/g0$a;->d(ZZLhn/c;LIe/o;)Z

    move-result v15

    if-eqz v15, :cond_6

    return-void

    :cond_6
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    const-string v5, "The iterator returned a null value"

    invoke-static {v15, v5}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-interface {v2, v5}, Lhn/c;->h(Ljava/lang/Object;)V

    iget-boolean v5, v1, LLe/g0$a;->j:Z

    invoke-virtual {v1, v5, v4, v2, v3}, LLe/g0$a;->d(ZZLhn/c;LIe/o;)Z

    move-result v5

    if-eqz v5, :cond_7

    return-void

    :cond_7
    const-wide/16 v16, 0x1

    add-long v13, v13, v16

    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v5, :cond_8

    invoke-virtual {v1, v0}, LLe/g0$a;->n(Z)V

    iput-object v8, v1, LLe/g0$a;->m:Ljava/util/Iterator;

    move-object v6, v8

    goto :goto_5

    :cond_8
    const/4 v5, 0x1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-object v8, v1, LLe/g0$a;->m:Ljava/util/Iterator;

    iget-object v0, v1, LLe/g0$a;->h:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, v1, LLe/g0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v3}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, LLe/g0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-object v8, v1, LLe/g0$a;->m:Ljava/util/Iterator;

    iget-object v3, v1, LLe/g0$a;->h:Lhn/d;

    invoke-interface {v3}, Lhn/d;->cancel()V

    iget-object v3, v1, LLe/g0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, LLe/g0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    :goto_5
    cmp-long v5, v13, v9

    if-nez v5, :cond_b

    iget-boolean v5, v1, LLe/g0$a;->j:Z

    invoke-interface {v3}, LIe/o;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    if-nez v6, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    move v8, v4

    :goto_6
    invoke-virtual {v1, v5, v8, v2, v3}, LLe/g0$a;->d(ZZLhn/c;LIe/o;)Z

    move-result v5

    if-eqz v5, :cond_b

    return-void

    :cond_b
    cmp-long v5, v13, v11

    if-eqz v5, :cond_c

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v5, v9, v11

    if-eqz v5, :cond_c

    iget-object v5, v1, LLe/g0$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v8, v13

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_c
    if-nez v6, :cond_e

    :cond_d
    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_e
    neg-int v5, v7

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_d

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/g0$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LLe/g0$a;->o:I

    if-nez v0, :cond_1

    iget-object v0, p0, LLe/g0$a;->i:LIe/o;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LLe/g0$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, LLe/g0$a;->f()V

    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/g0$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LLe/g0$a;->f()V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LLe/g0$a;->m:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/g0$a;->i:LIe/o;

    invoke-interface {v0}, LIe/o;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Lhn/d;)V
    .locals 3

    iget-object v0, p0, LLe/g0$a;->h:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LLe/g0$a;->h:Lhn/d;

    instance-of v0, p1, LIe/l;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LIe/l;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, LIe/k;->m(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, LLe/g0$a;->o:I

    iput-object v0, p0, LLe/g0$a;->i:LIe/o;

    iput-boolean v2, p0, LLe/g0$a;->j:Z

    iget-object p1, p0, LLe/g0$a;->c:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, LLe/g0$a;->o:I

    iput-object v0, p0, LLe/g0$a;->i:LIe/o;

    iget-object v0, p0, LLe/g0$a;->c:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    iget v0, p0, LLe/g0$a;->e:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    return-void

    :cond_1
    new-instance v0, LRe/b;

    iget v1, p0, LLe/g0$a;->e:I

    invoke-direct {v0, v1}, LRe/b;-><init>(I)V

    iput-object v0, p0, LLe/g0$a;->i:LIe/o;

    iget-object v0, p0, LLe/g0$a;->c:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    iget v0, p0, LLe/g0$a;->e:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_2
    return-void
.end method

.method public m(I)I
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget p1, p0, LLe/g0$a;->o:I

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public n(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget p1, p0, LLe/g0$a;->n:I

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, LLe/g0$a;->f:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, LLe/g0$a;->n:I

    iget-object v0, p0, LLe/g0$a;->h:Lhn/d;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lhn/d;->i(J)V

    goto :goto_0

    :cond_0
    iput p1, p0, LLe/g0$a;->n:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/g0$a;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/g0$a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/g0$a;->j:Z

    invoke-virtual {p0}, LLe/g0$a;->f()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
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

    iget-object v0, p0, LLe/g0$a;->m:Ljava/util/Iterator;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, LLe/g0$a;->i:LIe/o;

    invoke-interface {v0}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, LLe/g0$a;->d:LFe/o;

    invoke-interface {v2, v0}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object v0, p0, LLe/g0$a;->m:Ljava/util/Iterator;

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The iterator returned a null value"

    invoke-static {v2, v3}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, LLe/g0$a;->m:Ljava/util/Iterator;

    :cond_3
    return-object v2
.end method
