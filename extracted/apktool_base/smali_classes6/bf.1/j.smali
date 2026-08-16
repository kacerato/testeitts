.class public final Lbf/j;
.super Lbf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbf/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbf/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LRe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LBe/I<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public volatile f:Z

.field public volatile g:Z

.field public h:Ljava/lang/Throwable;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:LJe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJe/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public k:Z


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lbf/j;-><init>(ILjava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;Z)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lbf/i;-><init>()V

    .line 10
    new-instance v0, LRe/c;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, LHe/b;->h(ILjava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, LRe/c;-><init>(I)V

    iput-object v0, p0, Lbf/j;->b:LRe/c;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "onTerminate"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lbf/j;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    iput-boolean p3, p0, Lbf/j;->e:Z

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lbf/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance p1, Lbf/j$a;

    invoke-direct {p1, p0}, Lbf/j$a;-><init>(Lbf/j;)V

    iput-object p1, p0, Lbf/j;->j:LJe/b;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbf/i;-><init>()V

    .line 2
    new-instance v0, LRe/c;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, LHe/b;->h(ILjava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, LRe/c;-><init>(I)V

    iput-object v0, p0, Lbf/j;->b:LRe/c;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lbf/j;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-boolean p2, p0, Lbf/j;->e:Z

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lbf/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Lbf/j$a;

    invoke-direct {p1, p0}, Lbf/j$a;-><init>(Lbf/j;)V

    iput-object p1, p0, Lbf/j;->j:LJe/b;

    return-void
.end method

.method public static o8()Lbf/j;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lbf/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbf/j;

    invoke-static {}, LBe/B;->V()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbf/j;-><init>(IZ)V

    return-object v0
.end method

.method public static p8(I)Lbf/j;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lbf/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbf/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lbf/j;-><init>(IZ)V

    return-object v0
.end method

.method public static q8(ILjava/lang/Runnable;)Lbf/j;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lbf/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbf/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lbf/j;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static r8(ILjava/lang/Runnable;Z)Lbf/j;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            "Z)",
            "Lbf/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbf/j;

    invoke-direct {v0, p0, p1, p2}, Lbf/j;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static s8(Z)Lbf/j;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lbf/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbf/j;

    invoke-static {}, LBe/B;->V()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lbf/j;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lbf/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbf/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbf/j;->j:LJe/b;

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    iget-object v0, p0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lbf/j;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lbf/j;->u8()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a single observer allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, LGe/e;->h(Ljava/lang/Throwable;LBe/I;)V

    :goto_0
    return-void
.end method

.method public a()V
    .locals 1

    iget-boolean v0, p0, Lbf/j;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbf/j;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/j;->g:Z

    invoke-virtual {p0}, Lbf/j;->t8()V

    invoke-virtual {p0}, Lbf/j;->u8()V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-boolean v0, p0, Lbf/j;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbf/j;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, LDe/c;->dispose()V

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lbf/j;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbf/j;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbf/j;->b:LRe/c;

    invoke-virtual {v0, p1}, LRe/c;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbf/j;->u8()V

    :cond_1
    :goto_0
    return-void
.end method

.method public j8()Ljava/lang/Throwable;
    .locals 1
    .annotation build LCe/g;
    .end annotation

    iget-boolean v0, p0, Lbf/j;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf/j;->h:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k8()Z
    .locals 1

    iget-boolean v0, p0, Lbf/j;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf/j;->h:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l8()Z
    .locals 1

    iget-object v0, p0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m8()Z
    .locals 1

    iget-boolean v0, p0, Lbf/j;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf/j;->h:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lbf/j;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbf/j;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lbf/j;->h:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbf/j;->g:Z

    invoke-virtual {p0}, Lbf/j;->t8()V

    invoke-virtual {p0}, Lbf/j;->u8()V

    return-void

    :cond_1
    :goto_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public t8()V
    .locals 3

    iget-object v0, p0, Lbf/j;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbf/j;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public u8()V
    .locals 2

    iget-object v0, p0, Lbf/j;->j:LJe/b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBe/I;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lbf/j;->k:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lbf/j;->v8(LBe/I;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lbf/j;->w8(LBe/I;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lbf/j;->j:LJe/b;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBe/I;

    goto :goto_0
.end method

.method public v8(LBe/I;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lbf/j;->b:LRe/c;

    iget-boolean v1, p0, Lbf/j;->e:Z

    const/4 v2, 0x1

    :cond_0
    iget-boolean v3, p0, Lbf/j;->f:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object p1, p0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {v0}, LRe/c;->clear()V

    return-void

    :cond_1
    iget-boolean v3, p0, Lbf/j;->g:Z

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0, p1}, Lbf/j;->y8(LIe/o;LBe/I;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    invoke-interface {p1, v4}, LBe/I;->h(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lbf/j;->x8(LBe/I;)V

    return-void

    :cond_3
    iget-object v3, p0, Lbf/j;->j:LJe/b;

    neg-int v2, v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method public w8(LBe/I;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lbf/j;->b:LRe/c;

    iget-boolean v1, p0, Lbf/j;->e:Z

    const/4 v2, 0x1

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lbf/j;->f:Z

    if-eqz v5, :cond_1

    iget-object p1, p0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {v0}, LIe/o;->clear()V

    return-void

    :cond_1
    iget-boolean v5, p0, Lbf/j;->g:Z

    iget-object v6, p0, Lbf/j;->b:LRe/c;

    invoke-virtual {v6}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    move v8, v2

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    if-eqz v5, :cond_5

    if-nez v1, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0, p1}, Lbf/j;->y8(LIe/o;LBe/I;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    move v3, v7

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {p0, p1}, Lbf/j;->x8(LBe/I;)V

    return-void

    :cond_5
    if-eqz v8, :cond_6

    iget-object v5, p0, Lbf/j;->j:LJe/b;

    neg-int v4, v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_6
    invoke-interface {p1, v6}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public x8(LBe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lbf/j;->h:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LBe/I;->a()V

    :goto_0
    return-void
.end method

.method public y8(LIe/o;LBe/I;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIe/o<",
            "TT;>;",
            "LBe/I<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lbf/j;->h:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {p1}, LIe/o;->clear()V

    invoke-interface {p2, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
