.class public final LLe/K1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/K1;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final p:J = -0x7323c2cdbcdaca16L


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J$c;

.field public final f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public i:Lhn/d;

.field public volatile j:Z

.field public k:Ljava/lang/Throwable;

.field public volatile l:Z

.field public volatile m:Z

.field public n:J

.field public o:Z


# direct methods
.method public constructor <init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J$c;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LLe/K1$a;->b:Lhn/c;

    iput-wide p2, p0, LLe/K1$a;->c:J

    iput-object p4, p0, LLe/K1$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/K1$a;->e:LBe/J$c;

    iput-boolean p6, p0, LLe/K1$a;->f:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/K1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/K1$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/K1$a;->j:Z

    invoke-virtual {p0}, LLe/K1$a;->b()V

    return-void
.end method

.method public b()V
    .locals 13

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/K1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, LLe/K1$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, LLe/K1$a;->b:Lhn/c;

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :goto_0
    iget-boolean v5, p0, LLe/K1$a;->l:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-boolean v5, p0, LLe/K1$a;->j:Z

    if-eqz v5, :cond_3

    iget-object v7, p0, LLe/K1$a;->k:Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, LLe/K1$a;->k:Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, LLe/K1$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_4

    move v7, v3

    goto :goto_1

    :cond_4
    move v7, v8

    :goto_1
    const-wide/16 v9, 0x1

    if-eqz v5, :cond_7

    if-nez v7, :cond_6

    iget-boolean v3, p0, LLe/K1$a;->f:Z

    if-eqz v3, :cond_6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-wide v3, p0, LLe/K1$a;->n:J

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    add-long/2addr v3, v9

    iput-wide v3, p0, LLe/K1$a;->n:J

    invoke-interface {v2, v0}, Lhn/c;->h(Ljava/lang/Object;)V

    invoke-interface {v2}, Lhn/c;->a()V

    goto :goto_2

    :cond_5
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not emit final value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {v2}, Lhn/c;->a()V

    :goto_2
    iget-object v0, p0, LLe/K1$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void

    :cond_7
    if-eqz v7, :cond_8

    iget-boolean v5, p0, LLe/K1$a;->m:Z

    if-eqz v5, :cond_9

    iput-boolean v8, p0, LLe/K1$a;->o:Z

    iput-boolean v8, p0, LLe/K1$a;->m:Z

    goto :goto_3

    :cond_8
    iget-boolean v5, p0, LLe/K1$a;->o:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, LLe/K1$a;->m:Z

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_a
    :goto_4
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, p0, LLe/K1$a;->n:J

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    cmp-long v11, v6, v11

    if-eqz v11, :cond_b

    invoke-interface {v2, v5}, Lhn/c;->h(Ljava/lang/Object;)V

    add-long/2addr v6, v9

    iput-wide v6, p0, LLe/K1$a;->n:J

    iput-boolean v8, p0, LLe/K1$a;->m:Z

    iput-boolean v3, p0, LLe/K1$a;->o:Z

    iget-object v5, p0, LLe/K1$a;->e:LBe/J$c;

    iget-wide v6, p0, LLe/K1$a;->c:J

    iget-object v8, p0, LLe/K1$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, v6, v7, v8}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, LLe/K1$a;->i:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, LLe/K1$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/K1$a;->l:Z

    iget-object v0, p0, LLe/K1$a;->i:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LLe/K1$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/K1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/K1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, LLe/K1$a;->b()V

    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/K1$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/K1$a;->i:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/K1$a;->i:Lhn/d;

    iget-object v0, p0, LLe/K1$a;->b:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, LLe/K1$a;->k:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/K1$a;->j:Z

    invoke-virtual {p0}, LLe/K1$a;->b()V

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/K1$a;->m:Z

    invoke-virtual {p0}, LLe/K1$a;->b()V

    return-void
.end method
