.class public final LSe/d;
.super LBe/J;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSe/d$a;,
        LSe/d$b;,
        LSe/d$c;
    }
.end annotation


# static fields
.field public static final e:LBe/J;


# instance fields
.field public final c:Z

.field public final d:Ljava/util/concurrent/Executor;
    .annotation build LCe/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Laf/b;->g()LBe/J;

    move-result-object v0

    sput-object v0, LSe/d;->e:LBe/J;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build LCe/f;
        .end annotation
    .end param

    invoke-direct {p0}, LBe/J;-><init>()V

    iput-object p1, p0, LSe/d;->d:Ljava/util/concurrent/Executor;

    iput-boolean p2, p0, LSe/d;->c:Z

    return-void
.end method


# virtual methods
.method public c()LBe/J$c;
    .locals 3
    .annotation build LCe/f;
    .end annotation

    new-instance v0, LSe/d$c;

    iget-object v1, p0, LSe/d;->d:Ljava/util/concurrent/Executor;

    iget-boolean v2, p0, LSe/d;->c:Z

    invoke-direct {v0, v1, v2}, LSe/d$c;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public f(Ljava/lang/Runnable;)LDe/c;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    invoke-static {p1}, LYe/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, LSe/d;->d:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    new-instance v0, LSe/m;

    invoke-direct {v0, p1}, LSe/m;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, LSe/d;->d:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v0, p1}, LSe/a;->b(Ljava/util/concurrent/Future;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, LSe/d;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, LSe/d$c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LSe/d$c$b;-><init>(Ljava/lang/Runnable;LGe/c;)V

    iget-object p1, p0, LSe/d;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :cond_1
    new-instance v0, LSe/d$c$a;

    invoke-direct {v0, p1}, LSe/d$c$a;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, LSe/d;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1
.end method

.method public g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    invoke-static {p1}, LYe/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v0, p0, LSe/d;->d:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, LSe/m;

    invoke-direct {v0, p1}, LSe/m;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, LSe/d;->d:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v0, p1}, LSe/a;->b(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1

    :cond_0
    new-instance v0, LSe/d$b;

    invoke-direct {v0, p1}, LSe/d$b;-><init>(Ljava/lang/Runnable;)V

    sget-object p1, LSe/d;->e:LBe/J;

    new-instance v1, LSe/d$a;

    invoke-direct {v1, p0, v0}, LSe/d$a;-><init>(LSe/d;LSe/d$b;)V

    invoke-virtual {p1, v1, p2, p3, p4}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    iget-object p2, v0, LSe/d$b;->b:LGe/h;

    invoke-virtual {p2, p1}, LGe/h;->a(LDe/c;)Z

    return-object v0
.end method

.method public h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation build LCe/f;
    .end annotation

    iget-object v0, p0, LSe/d;->d:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    :try_start_0
    new-instance v7, LSe/l;

    invoke-direct {v7, p1}, LSe/l;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, LSe/d;->d:Ljava/util/concurrent/Executor;

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v7, p1}, LSe/a;->b(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1

    :cond_0
    invoke-super/range {p0 .. p6}, LBe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    return-object p1
.end method
