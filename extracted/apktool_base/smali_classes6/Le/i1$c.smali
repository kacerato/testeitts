.class public abstract LLe/i1$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/i1;
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
        "Lhn/d;"
    }
.end annotation


# static fields
.field public static final g:J = -0x30d108f96c89b153L


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhn/d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lhn/d;


# direct methods
.method public constructor <init>(Lhn/c;Lhn/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "Lhn/b<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, LLe/i1$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LLe/i1$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, LLe/i1$c;->b:Lhn/c;

    iput-object p2, p0, LLe/i1$c;->c:Lhn/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/i1$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, LLe/i1$c;->c()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LLe/i1$c;->f:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0}, LLe/i1$c;->c()V

    return-void
.end method

.method public abstract c()V
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LLe/i1$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LLe/i1$c;->f:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    return-void
.end method

.method public d()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, LLe/i1$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, LLe/i1$c;->b:Lhn/c;

    invoke-interface {v1, v0}, Lhn/c;->h(Ljava/lang/Object;)V

    iget-object v0, p0, LLe/i1$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lio/reactivex/internal/util/d;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LLe/i1$c;->cancel()V

    iget-object v0, p0, LLe/i1$c;->b:Lhn/c;

    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Couldn\'t emit value due to lack of requests!"

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/i1$c;->f:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LLe/i1$c;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract f()V
.end method

.method public g(Lhn/d;)V
    .locals 3

    iget-object v0, p0, LLe/i1$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, p1, v1, v2}, LUe/j;->k(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;J)Z

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

    iget-object v0, p0, LLe/i1$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/i1$c;->f:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/i1$c;->f:Lhn/d;

    iget-object v0, p0, LLe/i1$c;->b:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    iget-object v0, p0, LLe/i1$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/i1$c;->c:Lhn/b;

    new-instance v1, LLe/i1$d;

    invoke-direct {v1, p0}, LLe/i1$d;-><init>(LLe/i1$c;)V

    invoke-interface {v0, v1}, Lhn/b;->l(Lhn/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/i1$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LLe/i1$c;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
