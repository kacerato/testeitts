.class public final LOe/H1$c;
.super LJe/v;
.source "SourceFile"

# interfaces
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/H1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LJe/v<",
        "TT;",
        "Ljava/lang/Object;",
        "LBe/B<",
        "TT;>;>;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final L:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final M:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TB;+",
            "LBe/G<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final N:I

.field public final O:LDe/b;

.field public P:LDe/c;

.field public final Q:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbf/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final S:Ljava/util/concurrent/atomic/AtomicLong;

.field public final T:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(LBe/I;LBe/G;LFe/o;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "LBe/B<",
            "TT;>;>;",
            "LBe/G<",
            "TB;>;",
            "LFe/o<",
            "-TB;+",
            "LBe/G<",
            "TV;>;>;I)V"
        }
    .end annotation

    new-instance v0, LRe/a;

    invoke-direct {v0}, LRe/a;-><init>()V

    invoke-direct {p0, p1, v0}, LJe/v;-><init>(LBe/I;LIe/n;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/H1$c;->Q:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LOe/H1$c;->S:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LOe/H1$c;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, LOe/H1$c;->L:LBe/G;

    iput-object p3, p0, LOe/H1$c;->M:LFe/o;

    iput p4, p0, LOe/H1$c;->N:I

    new-instance p2, LDe/b;

    invoke-direct {p2}, LDe/b;-><init>()V

    iput-object p2, p0, LOe/H1$c;->O:LDe/b;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, LOe/H1$c;->R:Ljava/util/List;

    const-wide/16 p2, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, LJe/v;->J:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LJe/v;->J:Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LOe/H1$c;->p()V

    :cond_1
    iget-object v0, p0, LOe/H1$c;->S:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, LOe/H1$c;->O:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    :cond_2
    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LOe/H1$c;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 4

    iget-object v0, p0, LOe/H1$c;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LOe/H1$c;->Q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LOe/H1$c;->S:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/H1$c;->P:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 2

    iget-object v0, p0, LOe/H1$c;->P:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LOe/H1$c;->P:LDe/c;

    iget-object p1, p0, LJe/v;->G:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    iget-object p1, p0, LOe/H1$c;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, LOe/H1$b;

    invoke-direct {p1, p0}, LOe/H1$b;-><init>(LOe/H1$c;)V

    iget-object v0, p0, LOe/H1$c;->Q:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LOe/H1$c;->L:LBe/G;

    invoke-interface {v0, p1}, LBe/G;->c(LBe/I;)V

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

    invoke-virtual {p0}, LJe/v;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LOe/H1$c;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf/j;

    invoke-virtual {v1, p1}, Lbf/j;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, LJe/v;->c(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, LJe/v;->H:LIe/n;

    invoke-static {p1}, Lio/reactivex/internal/util/p;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LOe/H1$c;->p()V

    return-void
.end method

.method public l(LBe/I;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "LBe/B<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public n(LOe/H1$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/H1$a<",
            "TT;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/H1$c;->O:LDe/b;

    invoke-virtual {v0, p1}, LDe/b;->b(LDe/c;)Z

    iget-object v0, p0, LJe/v;->H:LIe/n;

    new-instance v1, LOe/H1$d;

    iget-object p1, p1, LOe/H1$a;->d:Lbf/j;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, LOe/H1$d;-><init>(Lbf/j;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LOe/H1$c;->p()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, LOe/H1$c;->O:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    iget-object v0, p0, LOe/H1$c;->Q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    iget-boolean v0, p0, LJe/v;->J:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, LJe/v;->K:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, LJe/v;->J:Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LOe/H1$c;->p()V

    :cond_1
    iget-object v0, p0, LOe/H1$c;->S:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, LOe/H1$c;->O:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    :cond_2
    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public p()V
    .locals 9

    iget-object v0, p0, LJe/v;->H:LIe/n;

    check-cast v0, LRe/a;

    iget-object v1, p0, LJe/v;->G:LBe/I;

    iget-object v2, p0, LOe/H1$c;->R:Ljava/util/List;

    const/4 v3, 0x1

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, p0, LJe/v;->J:Z

    invoke-virtual {v0}, LRe/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {p0}, LOe/H1$c;->o()V

    iget-object v0, p0, LJe/v;->K:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf/j;

    invoke-virtual {v3, v0}, Lbf/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf/j;

    invoke-virtual {v1}, Lbf/j;->a()V

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_4
    if-eqz v7, :cond_5

    neg-int v4, v4

    invoke-virtual {p0, v4}, LJe/v;->c(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_5
    instance-of v5, v6, LOe/H1$d;

    if-eqz v5, :cond_8

    check-cast v6, LOe/H1$d;

    iget-object v5, v6, LOe/H1$d;->a:Lbf/j;

    if-eqz v5, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v6, LOe/H1$d;->a:Lbf/j;

    invoke-virtual {v5}, Lbf/j;->a()V

    iget-object v5, p0, LOe/H1$c;->S:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    invoke-virtual {p0}, LOe/H1$c;->o()V

    return-void

    :cond_6
    iget-object v5, p0, LOe/H1$c;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_0

    :cond_7
    iget v5, p0, LOe/H1$c;->N:I

    invoke-static {v5}, Lbf/j;->p8(I)Lbf/j;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, LBe/I;->h(Ljava/lang/Object;)V

    :try_start_0
    iget-object v7, p0, LOe/H1$c;->M:LFe/o;

    iget-object v6, v6, LOe/H1$d;->b:Ljava/lang/Object;

    invoke-interface {v7, v6}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The ObservableSource supplied is null"

    invoke-static {v6, v7}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LBe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v7, LOe/H1$a;

    invoke-direct {v7, p0, v5}, LOe/H1$a;-><init>(LOe/H1$c;Lbf/j;)V

    iget-object v5, p0, LOe/H1$c;->O:LDe/b;

    invoke-virtual {v5, v7}, LDe/b;->a(LDe/c;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, LOe/H1$c;->S:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    invoke-interface {v6, v7}, LBe/G;->c(LBe/I;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v5}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v6, p0, LOe/H1$c;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {v1, v5}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbf/j;

    invoke-static {v6}, Lio/reactivex/internal/util/p;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbf/j;->h(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public q(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/H1$c;->P:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/H1$c;->O:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    invoke-virtual {p0, p1}, LOe/H1$c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public r(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-object v0, p0, LJe/v;->H:LIe/n;

    new-instance v1, LOe/H1$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, LOe/H1$d;-><init>(Lbf/j;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LOe/H1$c;->p()V

    :cond_0
    return-void
.end method
