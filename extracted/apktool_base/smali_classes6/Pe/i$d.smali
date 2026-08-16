.class public final LPe/i$d;
.super LPe/i$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPe/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LPe/i$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final i:J = -0x4fa158f1d44428dbL


# direct methods
.method public constructor <init>(Lhn/c;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, LPe/i$c;-><init>(Lhn/c;II)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LPe/i$d;->g()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, LPe/i$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, LPe/i$d;->c()V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LPe/i$c;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object p1, p0, LPe/i$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, LPe/i$d;->c()V

    return-void
.end method

.method public f(LPe/i$a;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LPe/i$a<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "Queue full?!"

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LPe/i$c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, LPe/i$c;->b:Lhn/c;

    invoke-interface {v0, p2}, Lhn/c;->h(Ljava/lang/Object;)V

    iget-object p2, p0, LPe/i$c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    iget-object p2, p0, LPe/i$c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, LPe/i$a;->d(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LPe/i$a;->c()LIe/n;

    move-result-object v0

    invoke-interface {v0, p2}, LIe/o;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, LPe/i$a;->b()Z

    iget-object p1, p0, LPe/i$c;->d:Lio/reactivex/internal/util/c;

    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p2, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object p1, p0, LPe/i$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, LPe/i$d;->g()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_3
    invoke-virtual {p1}, LPe/i$a;->c()LIe/n;

    move-result-object v0

    invoke-interface {v0, p2}, LIe/o;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, LPe/i$a;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, LPe/i$c;->d:Lio/reactivex/internal/util/c;

    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p2, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object p1, p0, LPe/i$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, LPe/i$d;->g()V

    return-void
.end method

.method public g()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, LPe/i$c;->c:[LPe/i$a;

    array-length v2, v1

    iget-object v3, v0, LPe/i$c;->b:Lhn/c;

    const/4 v5, 0x1

    :goto_0
    iget-object v6, v0, LPe/i$c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :cond_0
    cmp-long v12, v10, v6

    if-eqz v12, :cond_8

    iget-boolean v12, v0, LPe/i$c;->f:Z

    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, LPe/i$c;->b()V

    return-void

    :cond_1
    iget-object v12, v0, LPe/i$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_2
    if-ge v14, v2, :cond_5

    aget-object v4, v1, v14

    iget-object v13, v4, LPe/i$a;->f:LIe/n;

    if-eqz v13, :cond_4

    invoke-interface {v13}, LIe/n;->poll()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-interface {v3, v13}, Lhn/c;->h(Ljava/lang/Object;)V

    invoke-virtual {v4}, LPe/i$a;->e()V

    const-wide/16 v16, 0x1

    add-long v10, v10, v16

    cmp-long v4, v10, v6

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    if-eqz v12, :cond_7

    if-eqz v15, :cond_7

    iget-object v1, v0, LPe/i$c;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    iget-object v1, v0, LPe/i$c;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v3, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v3}, Lhn/c;->a()V

    :goto_3
    return-void

    :cond_7
    if-eqz v15, :cond_0

    :cond_8
    :goto_4
    cmp-long v4, v10, v6

    if-nez v4, :cond_e

    iget-boolean v4, v0, LPe/i$c;->f:Z

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p0}, LPe/i$c;->b()V

    return-void

    :cond_9
    iget-object v4, v0, LPe/i$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v2, :cond_c

    aget-object v13, v1, v12

    iget-object v13, v13, LPe/i$a;->f:LIe/n;

    if-eqz v13, :cond_b

    invoke-interface {v13}, LIe/o;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    const/4 v13, 0x0

    goto :goto_7

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_c
    const/4 v13, 0x1

    :goto_7
    if-eqz v4, :cond_e

    if-eqz v13, :cond_e

    iget-object v1, v0, LPe/i$c;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    iget-object v1, v0, LPe/i$c;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v3, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_d
    invoke-interface {v3}, Lhn/c;->a()V

    :goto_8
    return-void

    :cond_e
    cmp-long v4, v10, v8

    if-eqz v4, :cond_f

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v6, v8

    if-eqz v4, :cond_f

    iget-object v4, v0, LPe/i$c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v5, :cond_10

    neg-int v4, v5

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_10

    return-void

    :cond_10
    move v5, v4

    goto/16 :goto_0
.end method
