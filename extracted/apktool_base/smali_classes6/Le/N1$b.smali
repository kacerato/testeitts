.class public final LLe/N1$b;
.super LUe/i;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LLe/N1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/N1;
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
        "LLe/N1$d;"
    }
.end annotation


# static fields
.field public static final t:J = 0x343e2a2afd6bc01eL


# instance fields
.field public final k:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final l:J

.field public final m:Ljava/util/concurrent/TimeUnit;

.field public final n:LBe/J$c;

.field public final o:LGe/h;

.field public final p:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhn/d;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/atomic/AtomicLong;

.field public r:J

.field public s:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J$c;Lhn/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J$c;",
            "Lhn/b<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LUe/i;-><init>(Z)V

    iput-object p1, p0, LLe/N1$b;->k:Lhn/c;

    iput-wide p2, p0, LLe/N1$b;->l:J

    iput-object p4, p0, LLe/N1$b;->m:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/N1$b;->n:LBe/J$c;

    iput-object p6, p0, LLe/N1$b;->s:Lhn/b;

    new-instance p1, LGe/h;

    invoke-direct {p1}, LGe/h;-><init>()V

    iput-object p1, p0, LLe/N1$b;->o:LGe/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/N1$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/N1$b;->q:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, LLe/N1$b;->q:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/N1$b;->o:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    iget-object v0, p0, LLe/N1$b;->k:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    iget-object v0, p0, LLe/N1$b;->n:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 3

    iget-object v0, p0, LLe/N1$b;->q:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LLe/N1$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-wide p1, p0, LLe/N1$b;->r:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, LUe/i;->k(J)V

    :cond_0
    iget-object p1, p0, LLe/N1$b;->s:Lhn/b;

    const/4 p2, 0x0

    iput-object p2, p0, LLe/N1$b;->s:Lhn/b;

    new-instance p2, LLe/N1$a;

    iget-object v0, p0, LLe/N1$b;->k:Lhn/c;

    invoke-direct {p2, v0, p0}, LLe/N1$a;-><init>(Lhn/c;LUe/i;)V

    invoke-interface {p1, p2}, Lhn/b;->l(Lhn/c;)V

    iget-object p1, p0, LLe/N1$b;->n:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    :cond_1
    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, LUe/i;->cancel()V

    iget-object v0, p0, LLe/N1$b;->n:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/N1$b;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LLe/N1$b;->q:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x1

    add-long v5, v0, v3

    invoke-virtual {v2, v0, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/N1$b;->o:LGe/h;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-wide v0, p0, LLe/N1$b;->r:J

    add-long/2addr v0, v3

    iput-wide v0, p0, LLe/N1$b;->r:J

    iget-object v0, p0, LLe/N1$b;->k:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v6}, LLe/N1$b;->m(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/N1$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LUe/j;->j(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LUe/i;->l(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public m(J)V
    .locals 4

    iget-object v0, p0, LLe/N1$b;->o:LGe/h;

    iget-object v1, p0, LLe/N1$b;->n:LBe/J$c;

    new-instance v2, LLe/N1$e;

    invoke-direct {v2, p1, p2, p0}, LLe/N1$e;-><init>(JLLe/N1$d;)V

    iget-wide p1, p0, LLe/N1$b;->l:J

    iget-object v3, p0, LLe/N1$b;->m:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p1, p2, v3}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LGe/h;->a(LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, LLe/N1$b;->q:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/N1$b;->o:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    iget-object v0, p0, LLe/N1$b;->k:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LLe/N1$b;->n:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
