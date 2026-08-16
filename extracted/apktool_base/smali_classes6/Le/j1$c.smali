.class public abstract LLe/j1$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final i:J = -0x30d108f96c89b153L


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

.field public final e:LBe/J;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public final g:LGe/h;

.field public h:Lhn/d;


# direct methods
.method public constructor <init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, LLe/j1$c;->f:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, LGe/h;

    invoke-direct {v0}, LGe/h;-><init>()V

    iput-object v0, p0, LLe/j1$c;->g:LGe/h;

    iput-object p1, p0, LLe/j1$c;->b:Lhn/c;

    iput-wide p2, p0, LLe/j1$c;->c:J

    iput-object p4, p0, LLe/j1$c;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/j1$c;->e:LBe/J;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, LLe/j1$c;->b()V

    invoke-virtual {p0}, LLe/j1$c;->c()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LLe/j1$c;->g:LGe/h;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public abstract c()V
.end method

.method public cancel()V
    .locals 1

    invoke-virtual {p0}, LLe/j1$c;->b()V

    iget-object v0, p0, LLe/j1$c;->h:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    return-void
.end method

.method public d()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, LLe/j1$c;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, LLe/j1$c;->b:Lhn/c;

    invoke-interface {v1, v0}, Lhn/c;->h(Ljava/lang/Object;)V

    iget-object v0, p0, LLe/j1$c;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lio/reactivex/internal/util/d;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LLe/j1$c;->cancel()V

    iget-object v0, p0, LLe/j1$c;->b:Lhn/c;

    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Couldn\'t emit value due to lack of requests!"

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/j1$c;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 8

    iget-object v0, p0, LLe/j1$c;->h:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/j1$c;->h:Lhn/d;

    iget-object v0, p0, LLe/j1$c;->b:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    iget-object v0, p0, LLe/j1$c;->g:LGe/h;

    iget-object v1, p0, LLe/j1$c;->e:LBe/J;

    iget-wide v5, p0, LLe/j1$c;->c:J

    iget-object v7, p0, LLe/j1$c;->d:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, LBe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object v1

    invoke-virtual {v0, v1}, LGe/h;->a(LDe/c;)Z

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, LLe/j1$c;->b()V

    iget-object v0, p0, LLe/j1$c;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
