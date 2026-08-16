.class public final LLe/M1$b;
.super LUe/i;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LLe/M1$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/M1;
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
        "LUe/i;",
        "LBe/q<",
        "TT;>;",
        "LLe/M1$c;"
    }
.end annotation


# static fields
.field public static final r:J = 0x343e2a2afd6bc01eL


# instance fields
.field public final k:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final l:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final m:LGe/h;

.field public final n:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhn/d;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/concurrent/atomic/AtomicLong;

.field public p:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public q:J


# direct methods
.method public constructor <init>(Lhn/c;LFe/o;Lhn/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "*>;>;",
            "Lhn/b<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LUe/i;-><init>(Z)V

    iput-object p1, p0, LLe/M1$b;->k:Lhn/c;

    iput-object p2, p0, LLe/M1$b;->l:LFe/o;

    new-instance p1, LGe/h;

    invoke-direct {p1}, LGe/h;-><init>()V

    iput-object p1, p0, LLe/M1$b;->m:LGe/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/M1$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, LLe/M1$b;->p:Lhn/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, LLe/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/M1$b;->m:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    iget-object v0, p0, LLe/M1$b;->k:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    iget-object v0, p0, LLe/M1$b;->m:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 4

    iget-object v0, p0, LLe/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LLe/M1$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, LLe/M1$b;->p:Lhn/b;

    const/4 p2, 0x0

    iput-object p2, p0, LLe/M1$b;->p:Lhn/b;

    iget-wide v0, p0, LLe/M1$b;->q:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, v1}, LUe/i;->k(J)V

    :cond_0
    new-instance p2, LLe/N1$a;

    iget-object v0, p0, LLe/M1$b;->k:Lhn/c;

    invoke-direct {p2, v0, p0}, LLe/N1$a;-><init>(Lhn/c;LUe/i;)V

    invoke-interface {p1, p2}, Lhn/b;->l(Lhn/c;)V

    :cond_1
    return-void
.end method

.method public c(JLjava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, LLe/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LLe/M1$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, LLe/M1$b;->k:Lhn/c;

    invoke-interface {p1, p3}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, LUe/i;->cancel()V

    iget-object v0, p0, LLe/M1$b;->m:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-object v4, p0, LLe/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x1

    add-long v7, v0, v5

    invoke-virtual {v4, v0, v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/M1$b;->m:LGe/h;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_1
    iget-wide v0, p0, LLe/M1$b;->q:J

    add-long/2addr v0, v5

    iput-wide v0, p0, LLe/M1$b;->q:J

    iget-object v0, p0, LLe/M1$b;->k:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, LLe/M1$b;->l:LFe/o;

    invoke-interface {v0, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The itemTimeoutIndicator returned a null Publisher."

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, LLe/M1$a;

    invoke-direct {v0, v7, v8, p0}, LLe/M1$a;-><init>(JLLe/M1$c;)V

    iget-object v1, p0, LLe/M1$b;->m:LGe/h;

    invoke-virtual {v1, v0}, LGe/h;->a(LDe/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Lhn/b;->l(Lhn/c;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LLe/M1$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LLe/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    iget-object v0, p0, LLe/M1$b;->k:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/M1$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LUe/j;->j(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LUe/i;->l(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public m(Lhn/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, LLe/M1$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0}, LLe/M1$a;-><init>(JLLe/M1$c;)V

    iget-object v1, p0, LLe/M1$b;->m:LGe/h;

    invoke-virtual {v1, v0}, LGe/h;->a(LDe/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lhn/b;->l(Lhn/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, LLe/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/M1$b;->m:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    iget-object v0, p0, LLe/M1$b;->k:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LLe/M1$b;->m:LGe/h;

    invoke-virtual {p1}, LGe/h;->dispose()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
