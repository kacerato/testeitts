.class public final LOe/I1$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/I1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final m:J = 0x1efd47eb1fc2a3a0L

.field public static final n:LOe/I1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/I1$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Ljava/lang/Object;


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LOe/I1$a<",
            "TT;TB;>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:LRe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lio/reactivex/internal/util/c;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/G<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field public j:LDe/c;

.field public volatile k:Z

.field public l:Lbf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LOe/I1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LOe/I1$a;-><init>(LOe/I1$b;)V

    sput-object v0, LOe/I1$b;->n:LOe/I1$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LOe/I1$b;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LBe/I;ILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "LBe/B<",
            "TT;>;>;I",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/G<",
            "TB;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/I1$b;->b:LBe/I;

    iput p2, p0, LOe/I1$b;->c:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/I1$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, LOe/I1$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, LRe/a;

    invoke-direct {p1}, LRe/a;-><init>()V

    iput-object p1, p0, LOe/I1$b;->f:LRe/a;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LOe/I1$b;->g:Lio/reactivex/internal/util/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LOe/I1$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, LOe/I1$b;->i:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, LOe/I1$b;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/I1$b;->k:Z

    invoke-virtual {p0}, LOe/I1$b;->c()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LOe/I1$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LOe/I1$b;->n:LOe/I1$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 10

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOe/I1$b;->b:LBe/I;

    iget-object v1, p0, LOe/I1$b;->f:LRe/a;

    iget-object v2, p0, LOe/I1$b;->g:Lio/reactivex/internal/util/c;

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :goto_0
    iget-object v5, p0, LOe/I1$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    invoke-virtual {v1}, LRe/a;->clear()V

    iput-object v6, p0, LOe/I1$b;->l:Lbf/j;

    return-void

    :cond_2
    iget-object v5, p0, LOe/I1$b;->l:Lbf/j;

    iget-boolean v7, p0, LOe/I1$b;->k:Z

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, LRe/a;->clear()V

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v5, :cond_3

    iput-object v6, p0, LOe/I1$b;->l:Lbf/j;

    invoke-virtual {v5, v1}, Lbf/j;->onError(Ljava/lang/Throwable;)V

    :cond_3
    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    invoke-virtual {v1}, LRe/a;->poll()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    move v9, v3

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    if-eqz v7, :cond_9

    if-eqz v9, :cond_9

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v5, :cond_6

    iput-object v6, p0, LOe/I1$b;->l:Lbf/j;

    invoke-virtual {v5}, Lbf/j;->a()V

    :cond_6
    invoke-interface {v0}, LBe/I;->a()V

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_8

    iput-object v6, p0, LOe/I1$b;->l:Lbf/j;

    invoke-virtual {v5, v1}, Lbf/j;->onError(Ljava/lang/Throwable;)V

    :cond_8
    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_9
    if-eqz v9, :cond_a

    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_a
    sget-object v7, LOe/I1$b;->o:Ljava/lang/Object;

    if-eq v8, v7, :cond_b

    invoke-virtual {v5, v8}, Lbf/j;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    if-eqz v5, :cond_c

    iput-object v6, p0, LOe/I1$b;->l:Lbf/j;

    invoke-virtual {v5}, Lbf/j;->a()V

    :cond_c
    iget-object v5, p0, LOe/I1$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, LOe/I1$b;->c:I

    invoke-static {v5, p0}, Lbf/j;->q8(ILjava/lang/Runnable;)Lbf/j;

    move-result-object v5

    iput-object v5, p0, LOe/I1$b;->l:Lbf/j;

    iget-object v7, p0, LOe/I1$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :try_start_0
    iget-object v7, p0, LOe/I1$b;->i:Ljava/util/concurrent/Callable;

    invoke-interface {v7}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The other Callable returned a null ObservableSource"

    invoke-static {v7, v8}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LBe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v8, LOe/I1$a;

    invoke-direct {v8, p0}, LOe/I1$a;-><init>(LOe/I1$b;)V

    iget-object v9, p0, LOe/I1$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v9, v6, v8}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7, v8}, LBe/G;->c(LBe/I;)V

    invoke-interface {v0, v5}, LBe/I;->h(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v5}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v5}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iput-boolean v3, p0, LOe/I1$b;->k:Z

    goto/16 :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LOe/I1$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, LOe/I1$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOe/I1$b;->b()V

    iget-object v0, p0, LOe/I1$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/I1$b;->j:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/I1$b;->j:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/I1$b;->j:LDe/c;

    iget-object p1, p0, LOe/I1$b;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    iget-object p1, p0, LOe/I1$b;->f:LRe/a;

    sget-object v0, LOe/I1$b;->o:Ljava/lang/Object;

    invoke-virtual {p1, v0}, LRe/a;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LOe/I1$b;->c()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, LOe/I1$b;->j:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/I1$b;->k:Z

    invoke-virtual {p0}, LOe/I1$b;->c()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/I1$b;->f:LRe/a;

    invoke-virtual {v0, p1}, LRe/a;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LOe/I1$b;->c()V

    return-void
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/I1$b;->j:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/I1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/I1$b;->k:Z

    invoke-virtual {p0}, LOe/I1$b;->c()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public j(LOe/I1$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/I1$a<",
            "TT;TB;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/I1$b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, LOe/I1$b;->f:LRe/a;

    sget-object v0, LOe/I1$b;->o:Ljava/lang/Object;

    invoke-virtual {p1, v0}, LRe/a;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LOe/I1$b;->c()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, LOe/I1$b;->b()V

    iget-object v0, p0, LOe/I1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/I1$b;->k:Z

    invoke-virtual {p0}, LOe/I1$b;->c()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, LOe/I1$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/I1$b;->j:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method
