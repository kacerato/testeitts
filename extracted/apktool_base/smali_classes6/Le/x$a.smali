.class public final LLe/x$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;
.implements LTe/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/x;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;",
        "LTe/l<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final n:J = -0x3b0ddc635a9c154fL


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:Lio/reactivex/internal/util/j;

.field public final g:Lio/reactivex/internal/util/c;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public final i:LRe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/c<",
            "LTe/k<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public j:Lhn/d;

.field public volatile k:Z

.field public volatile l:Z

.field public volatile m:LTe/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/k<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/c;LFe/o;IILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LLe/x$a;->b:Lhn/c;

    iput-object p2, p0, LLe/x$a;->c:LFe/o;

    iput p3, p0, LLe/x$a;->d:I

    iput p4, p0, LLe/x$a;->e:I

    iput-object p5, p0, LLe/x$a;->f:Lio/reactivex/internal/util/j;

    new-instance p1, LRe/c;

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p1, p2}, LRe/c;-><init>(I)V

    iput-object p1, p0, LLe/x$a;->i:LRe/c;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LLe/x$a;->g:Lio/reactivex/internal/util/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/x$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/x$a;->l:Z

    invoke-virtual {p0}, LLe/x$a;->f()V

    return-void
.end method

.method public b(LTe/k;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/k<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LLe/x$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LTe/k;->e()V

    iget-object p1, p0, LLe/x$a;->f:Lio/reactivex/internal/util/j;

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, LLe/x$a;->j:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    :cond_0
    invoke-virtual {p0}, LLe/x$a;->f()V

    goto :goto_0

    :cond_1
    invoke-static {p2}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(LTe/k;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/k<",
            "TR;>;TR;)V"
        }
    .end annotation

    invoke-virtual {p1}, LTe/k;->c()LIe/o;

    move-result-object v0

    invoke-interface {v0, p2}, LIe/o;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, LLe/x$a;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LTe/k;->cancel()V

    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1, p2}, LLe/x$a;->b(LTe/k;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, LLe/x$a;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/x$a;->k:Z

    iget-object v0, p0, LLe/x$a;->j:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0}, LLe/x$a;->g()V

    return-void
.end method

.method public d(LTe/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/k<",
            "TR;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, LTe/k;->e()V

    invoke-virtual {p0}, LLe/x$a;->f()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, LLe/x$a;->m:LTe/k;

    const/4 v1, 0x0

    iput-object v1, p0, LLe/x$a;->m:LTe/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LTe/k;->cancel()V

    :cond_0
    :goto_0
    iget-object v0, p0, LLe/x$a;->i:LRe/c;

    invoke-virtual {v0}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTe/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LTe/k;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f()V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, LLe/x$a;->m:LTe/k;

    iget-object v2, v1, LLe/x$a;->b:Lhn/c;

    iget-object v3, v1, LLe/x$a;->f:Lio/reactivex/internal/util/j;

    const/4 v5, 0x1

    :goto_0
    iget-object v6, v1, LLe/x$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    if-nez v0, :cond_4

    sget-object v0, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    if-eq v3, v0, :cond_1

    iget-object v0, v1, LLe/x$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, LLe/x$a;->e()V

    iget-object v0, v1, LLe/x$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-boolean v0, v1, LLe/x$a;->l:Z

    iget-object v8, v1, LLe/x$a;->i:LRe/c;

    invoke-virtual {v8}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LTe/k;

    if-eqz v0, :cond_3

    if-nez v8, :cond_3

    iget-object v0, v1, LLe/x$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lhn/c;->a()V

    :goto_1
    return-void

    :cond_3
    if-eqz v8, :cond_5

    iput-object v8, v1, LLe/x$a;->m:LTe/k;

    goto :goto_2

    :cond_4
    move-object v8, v0

    :cond_5
    :goto_2
    if-eqz v8, :cond_f

    invoke-virtual {v8}, LTe/k;->c()LIe/o;

    move-result-object v11

    if-eqz v11, :cond_f

    const-wide/16 v12, 0x0

    :goto_3
    cmp-long v14, v12, v6

    move/from16 v16, v5

    const-wide/16 v4, 0x1

    const/4 v15, 0x0

    if-eqz v14, :cond_b

    iget-boolean v0, v1, LLe/x$a;->k:Z

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, LLe/x$a;->e()V

    return-void

    :cond_6
    sget-object v0, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne v3, v0, :cond_7

    iget-object v0, v1, LLe/x$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    iput-object v15, v1, LLe/x$a;->m:LTe/k;

    invoke-virtual {v8}, LTe/k;->cancel()V

    invoke-virtual/range {p0 .. p0}, LLe/x$a;->e()V

    iget-object v0, v1, LLe/x$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    invoke-virtual {v8}, LTe/k;->b()Z

    move-result v0

    :try_start_0
    invoke-interface {v11}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_8

    const/4 v10, 0x1

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    if-eqz v0, :cond_9

    if-eqz v10, :cond_9

    iput-object v15, v1, LLe/x$a;->m:LTe/k;

    iget-object v0, v1, LLe/x$a;->j:Lhn/d;

    invoke-interface {v0, v4, v5}, Lhn/d;->i(J)V

    move-object v8, v15

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    if-eqz v10, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {v2, v9}, Lhn/c;->h(Ljava/lang/Object;)V

    add-long/2addr v12, v4

    invoke-virtual {v8}, LTe/k;->d()V

    move/from16 v5, v16

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-object v15, v1, LLe/x$a;->m:LTe/k;

    invoke-virtual {v8}, LTe/k;->cancel()V

    invoke-virtual/range {p0 .. p0}, LLe/x$a;->e()V

    invoke-interface {v2, v3}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_b
    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-nez v14, :cond_e

    iget-boolean v9, v1, LLe/x$a;->k:Z

    if-eqz v9, :cond_c

    invoke-virtual/range {p0 .. p0}, LLe/x$a;->e()V

    return-void

    :cond_c
    sget-object v9, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne v3, v9, :cond_d

    iget-object v9, v1, LLe/x$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    if-eqz v9, :cond_d

    iput-object v15, v1, LLe/x$a;->m:LTe/k;

    invoke-virtual {v8}, LTe/k;->cancel()V

    invoke-virtual/range {p0 .. p0}, LLe/x$a;->e()V

    iget-object v0, v1, LLe/x$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_d
    invoke-virtual {v8}, LTe/k;->b()Z

    move-result v9

    invoke-interface {v11}, LIe/o;->isEmpty()Z

    move-result v10

    if-eqz v9, :cond_e

    if-eqz v10, :cond_e

    iput-object v15, v1, LLe/x$a;->m:LTe/k;

    iget-object v0, v1, LLe/x$a;->j:Lhn/d;

    invoke-interface {v0, v4, v5}, Lhn/d;->i(J)V

    move-object v8, v15

    const/4 v0, 0x1

    :cond_e
    const-wide/16 v4, 0x0

    goto :goto_7

    :cond_f
    move/from16 v16, v5

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v12, 0x0

    :goto_7
    cmp-long v4, v12, v4

    if-eqz v4, :cond_10

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v6, v4

    if-eqz v4, :cond_10

    iget-object v4, v1, LLe/x$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v12

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_10
    if-eqz v0, :cond_11

    move-object v0, v8

    move/from16 v5, v16

    goto/16 :goto_0

    :cond_11
    move/from16 v4, v16

    neg-int v0, v4

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_12

    return-void

    :cond_12
    move-object v0, v8

    goto/16 :goto_0
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, LLe/x$a;->e()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LLe/x$a;->c:LFe/o;

    invoke-interface {v0, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null Publisher"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, LTe/k;

    iget v1, p0, LLe/x$a;->e:I

    invoke-direct {v0, p0, v1}, LTe/k;-><init>(LTe/l;I)V

    iget-boolean v1, p0, LLe/x$a;->k:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LLe/x$a;->i:LRe/c;

    invoke-virtual {v1, v0}, LRe/c;->offer(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Lhn/b;->l(Lhn/c;)V

    iget-boolean p1, p0, LLe/x$a;->k:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, LTe/k;->cancel()V

    invoke-virtual {p0}, LLe/x$a;->g()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LLe/x$a;->j:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0, p1}, LLe/x$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/x$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LLe/x$a;->f()V

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/x$a;->j:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LLe/x$a;->j:Lhn/d;

    iget-object v0, p0, LLe/x$a;->b:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    iget v0, p0, LLe/x$a;->d:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    :goto_0
    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/x$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/x$a;->l:Z

    invoke-virtual {p0}, LLe/x$a;->f()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
