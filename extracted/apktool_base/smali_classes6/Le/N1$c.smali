.class public final LLe/N1$c;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;
.implements LLe/N1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/N1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;",
        "LLe/N1$d;"
    }
.end annotation


# static fields
.field public static final i:J = 0x343e2a2afd6bc01eL


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

.field public final f:LGe/h;

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhn/d;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/N1$c;->b:Lhn/c;

    iput-wide p2, p0, LLe/N1$c;->c:J

    iput-object p4, p0, LLe/N1$c;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/N1$c;->e:LBe/J$c;

    new-instance p1, LGe/h;

    invoke-direct {p1}, LGe/h;-><init>()V

    iput-object p1, p0, LLe/N1$c;->f:LGe/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/N1$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/N1$c;->h:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/N1$c;->f:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    iget-object v0, p0, LLe/N1$c;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    iget-object v0, p0, LLe/N1$c;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LLe/N1$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, LLe/N1$c;->b:Lhn/c;

    new-instance p2, Ljava/util/concurrent/TimeoutException;

    iget-wide v0, p0, LLe/N1$c;->c:J

    iget-object v2, p0, LLe/N1$c;->d:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/internal/util/ExceptionHelper;->e(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LLe/N1$c;->e:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LLe/N1$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LLe/N1$c;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public d(J)V
    .locals 4

    iget-object v0, p0, LLe/N1$c;->f:LGe/h;

    iget-object v1, p0, LLe/N1$c;->e:LBe/J$c;

    new-instance v2, LLe/N1$e;

    invoke-direct {v2, p1, p2, p0}, LLe/N1$e;-><init>(JLLe/N1$d;)V

    iget-wide p1, p0, LLe/N1$c;->c:J

    iget-object v3, p0, LLe/N1$c;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p1, p2, v3}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LGe/h;->a(LDe/c;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/N1$c;->f:LGe/h;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LLe/N1$c;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, LLe/N1$c;->d(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(J)V
    .locals 2

    iget-object v0, p0, LLe/N1$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, LLe/N1$c;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, LUe/j;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/N1$c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, LLe/N1$c;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1}, LUe/j;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lhn/d;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/N1$c;->f:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    iget-object v0, p0, LLe/N1$c;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LLe/N1$c;->e:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
