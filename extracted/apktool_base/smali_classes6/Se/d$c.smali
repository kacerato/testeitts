.class public final LSe/d$c;
.super LBe/J$c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSe/d$c$b;,
        LSe/d$c$c;,
        LSe/d$c$a;
    }
.end annotation


# instance fields
.field public final b:Z

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:LRe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/a<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public volatile e:Z

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:LDe/b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1

    invoke-direct {p0}, LBe/J$c;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LSe/d$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, LDe/b;

    invoke-direct {v0}, LDe/b;-><init>()V

    iput-object v0, p0, LSe/d$c;->g:LDe/b;

    iput-object p1, p0, LSe/d$c;->c:Ljava/util/concurrent/Executor;

    new-instance p1, LRe/a;

    invoke-direct {p1}, LRe/a;-><init>()V

    iput-object p1, p0, LSe/d$c;->d:LRe/a;

    iput-boolean p2, p0, LSe/d$c;->b:Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)LDe/c;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    iget-boolean v0, p0, LSe/d$c;->e:Z

    if-eqz v0, :cond_0

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1

    :cond_0
    invoke-static {p1}, LYe/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iget-boolean v0, p0, LSe/d$c;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, LSe/d$c$b;

    iget-object v1, p0, LSe/d$c;->g:LDe/b;

    invoke-direct {v0, p1, v1}, LSe/d$c$b;-><init>(Ljava/lang/Runnable;LGe/c;)V

    iget-object p1, p0, LSe/d$c;->g:LDe/b;

    invoke-virtual {p1, v0}, LDe/b;->a(LDe/c;)Z

    goto :goto_0

    :cond_1
    new-instance v0, LSe/d$c$a;

    invoke-direct {v0, p1}, LSe/d$c$a;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    iget-object p1, p0, LSe/d$c;->d:LRe/a;

    invoke-virtual {p1, v0}, LRe/a;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, LSe/d$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, LSe/d$c;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    iput-boolean v0, p0, LSe/d$c;->e:Z

    iget-object v0, p0, LSe/d$c;->d:LRe/a;

    invoke-virtual {v0}, LRe/a;->clear()V

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1}, LSe/d$c;->b(Ljava/lang/Runnable;)LDe/c;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, LSe/d$c;->e:Z

    if-eqz v0, :cond_1

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1

    :cond_1
    new-instance v0, LGe/h;

    invoke-direct {v0}, LGe/h;-><init>()V

    new-instance v1, LGe/h;

    invoke-direct {v1, v0}, LGe/h;-><init>(LDe/c;)V

    invoke-static {p1}, LYe/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v2, LSe/n;

    new-instance v3, LSe/d$c$c;

    invoke-direct {v3, p0, v1, p1}, LSe/d$c$c;-><init>(LSe/d$c;LGe/h;Ljava/lang/Runnable;)V

    iget-object p1, p0, LSe/d$c;->g:LDe/b;

    invoke-direct {v2, v3, p1}, LSe/n;-><init>(Ljava/lang/Runnable;LGe/c;)V

    iget-object p1, p0, LSe/d$c;->g:LDe/b;

    invoke-virtual {p1, v2}, LDe/b;->a(LDe/c;)Z

    iget-object p1, p0, LSe/d$c;->c:Ljava/util/concurrent/Executor;

    instance-of v3, p1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_2

    :try_start_0
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v2, p1}, LSe/n;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, LSe/d$c;->e:Z

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1

    :cond_2
    sget-object p1, LSe/d;->e:LBe/J;

    invoke-virtual {p1, v2, p2, p3, p4}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    new-instance p2, LSe/c;

    invoke-direct {p2, p1}, LSe/c;-><init>(LDe/c;)V

    invoke-virtual {v2, p2}, LSe/n;->a(Ljava/util/concurrent/Future;)V

    :goto_0
    invoke-virtual {v0, v2}, LGe/h;->a(LDe/c;)Z

    return-object v1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LSe/d$c;->e:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, LSe/d$c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LSe/d$c;->e:Z

    iget-object v0, p0, LSe/d$c;->g:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    iget-object v0, p0, LSe/d$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LSe/d$c;->d:LRe/a;

    invoke-virtual {v0}, LRe/a;->clear()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, LSe/d$c;->d:LRe/a;

    const/4 v1, 0x1

    :cond_0
    iget-boolean v2, p0, LSe/d$c;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, LRe/a;->clear()V

    return-void

    :cond_1
    invoke-virtual {v0}, LRe/a;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-nez v2, :cond_3

    iget-boolean v2, p0, LSe/d$c;->e:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, LRe/a;->clear()V

    return-void

    :cond_2
    iget-object v2, p0, LSe/d$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_3
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-boolean v2, p0, LSe/d$c;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, LRe/a;->clear()V

    return-void
.end method
