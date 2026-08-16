.class public final LMe/Y$b;
.super LUe/c;
.source "SourceFile"

# interfaces
.implements LBe/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/Y;
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
        "LUe/c<",
        "TT;>;",
        "LBe/v<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:J = -0x92a32049d0458bbL


# instance fields
.field public final c:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:LDe/b;

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:LMe/Y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMe/Y$d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lio/reactivex/internal/util/c;

.field public final h:I

.field public volatile i:Z

.field public j:Z

.field public k:J


# direct methods
.method public constructor <init>(Lhn/c;ILMe/Y$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;I",
            "LMe/Y$d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LUe/c;-><init>()V

    iput-object p1, p0, LMe/Y$b;->c:Lhn/c;

    iput p2, p0, LMe/Y$b;->h:I

    new-instance p1, LDe/b;

    invoke-direct {p1}, LDe/b;-><init>()V

    iput-object p1, p0, LMe/Y$b;->d:LDe/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LMe/Y$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LMe/Y$b;->g:Lio/reactivex/internal/util/c;

    iput-object p3, p0, LMe/Y$b;->f:LMe/Y$d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LMe/Y$b;->f:LMe/Y$d;

    sget-object v1, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    invoke-interface {v0, v1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LMe/Y$b;->f()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/Y$b;->f:LMe/Y$d;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LMe/Y$b;->f()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, LMe/Y$b;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LMe/Y$b;->i:Z

    iget-object v0, p0, LMe/Y$b;->d:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LMe/Y$b;->f:LMe/Y$d;

    invoke-interface {v0}, LIe/o;->clear()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LMe/Y$b;->f:LMe/Y$d;

    invoke-interface {v0}, LIe/o;->clear()V

    return-void
.end method

.method public d()V
    .locals 6

    iget-object v0, p0, LMe/Y$b;->c:Lhn/c;

    iget-object v1, p0, LMe/Y$b;->f:LMe/Y$d;

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    iget-boolean v4, p0, LMe/Y$b;->i:Z

    if-eqz v4, :cond_1

    invoke-interface {v1}, LIe/o;->clear()V

    return-void

    :cond_1
    iget-object v4, p0, LMe/Y$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    invoke-interface {v1}, LIe/o;->clear()V

    invoke-interface {v0, v4}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-interface {v1}, LMe/Y$d;->s()I

    move-result v4

    iget v5, p0, LMe/Y$b;->h:I

    if-ne v4, v5, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, LIe/o;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lhn/c;->h(Ljava/lang/Object;)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-interface {v0}, Lhn/c;->a()V

    return-void

    :cond_5
    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LMe/Y$b;->d:LDe/b;

    invoke-virtual {v0, p1}, LDe/b;->a(LDe/c;)Z

    return-void
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LMe/Y$b;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LMe/Y$b;->d()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LMe/Y$b;->n()V

    :goto_0
    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LMe/Y$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LMe/Y$b;->f()V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LMe/Y$b;->f:LMe/Y$d;

    invoke-interface {v0}, LIe/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public m(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LMe/Y$b;->j:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public n()V
    .locals 10

    iget-object v0, p0, LMe/Y$b;->c:Lhn/c;

    iget-object v1, p0, LMe/Y$b;->f:LMe/Y$d;

    iget-wide v2, p0, LMe/Y$b;->k:J

    const/4 v4, 0x1

    :cond_0
    iget-object v5, p0, LMe/Y$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    :cond_1
    :goto_0
    cmp-long v7, v2, v5

    if-eqz v7, :cond_6

    iget-boolean v8, p0, LMe/Y$b;->i:Z

    if-eqz v8, :cond_2

    invoke-interface {v1}, LIe/o;->clear()V

    return-void

    :cond_2
    iget-object v8, p0, LMe/Y$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    invoke-interface {v1}, LIe/o;->clear()V

    iget-object v1, p0, LMe/Y$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    invoke-interface {v1}, LMe/Y$d;->r()I

    move-result v8

    iget v9, p0, LMe/Y$b;->h:I

    if-ne v8, v9, :cond_4

    invoke-interface {v0}, Lhn/c;->a()V

    return-void

    :cond_4
    invoke-interface {v1}, LMe/Y$d;->poll()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    sget-object v7, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    if-eq v8, v7, :cond_1

    invoke-interface {v0, v8}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    goto :goto_0

    :cond_6
    :goto_1
    if-nez v7, :cond_9

    iget-object v5, p0, LMe/Y$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    invoke-interface {v1}, LIe/o;->clear()V

    iget-object v1, p0, LMe/Y$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    :goto_2
    invoke-interface {v1}, LMe/Y$d;->peek()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    if-ne v5, v6, :cond_8

    invoke-interface {v1}, LMe/Y$d;->k()V

    goto :goto_2

    :cond_8
    invoke-interface {v1}, LMe/Y$d;->r()I

    move-result v5

    iget v6, p0, LMe/Y$b;->h:I

    if-ne v5, v6, :cond_9

    invoke-interface {v0}, Lhn/c;->a()V

    return-void

    :cond_9
    iput-wide v2, p0, LMe/Y$b;->k:J

    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LMe/Y$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LMe/Y$b;->d:LDe/b;

    invoke-virtual {p1}, LDe/b;->dispose()V

    iget-object p1, p0, LMe/Y$b;->f:LMe/Y$d;

    sget-object v0, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    invoke-interface {p1, v0}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LMe/Y$b;->f()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, LMe/Y$b;->i:Z

    return v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, LMe/Y$b;->f:LMe/Y$d;

    invoke-interface {v0}, LMe/Y$d;->poll()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    if-eq v0, v1, :cond_0

    return-object v0
.end method
