.class public abstract LJe/v;
.super LJe/x;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements Lio/reactivex/internal/util/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LJe/x;",
        "LBe/I<",
        "TT;>;",
        "Lio/reactivex/internal/util/q<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field public final G:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TV;>;"
        }
    .end annotation
.end field

.field public final H:LIe/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/n<",
            "TU;>;"
        }
    .end annotation
.end field

.field public volatile I:Z

.field public volatile J:Z

.field public K:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LBe/I;LIe/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TV;>;",
            "LIe/n<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LJe/x;-><init>()V

    iput-object p1, p0, LJe/v;->G:LBe/I;

    iput-object p2, p0, LJe/v;->H:LIe/n;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, LJe/v;->K:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final c(I)I
    .locals 1

    iget-object v0, p0, LJe/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method

.method public final done()Z
    .locals 1

    iget-boolean v0, p0, LJe/v;->J:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, LJe/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i()Z
    .locals 3

    iget-object v0, p0, LJe/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, LJe/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final j(Ljava/lang/Object;ZLDe/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "LDe/c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LJe/v;->G:LBe/I;

    iget-object v1, p0, LJe/v;->H:LIe/n;

    iget-object v2, p0, LJe/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, LJe/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, LJe/v;->l(LBe/I;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, LJe/v;->c(I)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_0
    invoke-interface {v1, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/u;->d(LIe/n;LBe/I;ZLDe/c;Lio/reactivex/internal/util/q;)V

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, LJe/v;->I:Z

    return v0
.end method

.method public l(LBe/I;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TV;>;TU;)V"
        }
    .end annotation

    return-void
.end method

.method public final m(Ljava/lang/Object;ZLDe/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "LDe/c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LJe/v;->G:LBe/I;

    iget-object v1, p0, LJe/v;->H:LIe/n;

    iget-object v2, p0, LJe/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, LJe/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, LIe/o;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, LJe/v;->l(LBe/I;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, LJe/v;->c(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_0
    invoke-interface {v1, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/u;->d(LIe/n;LBe/I;ZLDe/c;Lio/reactivex/internal/util/q;)V

    return-void
.end method
