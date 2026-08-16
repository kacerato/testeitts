.class public final LSe/r$a;
.super LBe/J$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:LDe/b;

.field public volatile d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, LBe/J$c;-><init>()V

    iput-object p1, p0, LSe/r$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, LDe/b;

    invoke-direct {p1}, LDe/b;-><init>()V

    iput-object p1, p0, LSe/r$a;->c:LDe/b;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;
    .locals 3
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

    iget-boolean v0, p0, LSe/r$a;->d:Z

    if-eqz v0, :cond_0

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1

    :cond_0
    invoke-static {p1}, LYe/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v0, LSe/n;

    iget-object v1, p0, LSe/r$a;->c:LDe/b;

    invoke-direct {v0, p1, v1}, LSe/n;-><init>(Ljava/lang/Runnable;LGe/c;)V

    iget-object p1, p0, LSe/r$a;->c:LDe/b;

    invoke-virtual {p1, v0}, LDe/b;->a(LDe/c;)Z

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_1

    :try_start_0
    iget-object p1, p0, LSe/r$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, LSe/r$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, LSe/n;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0}, LSe/r$a;->dispose()V

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LGe/e;->INSTANCE:LGe/e;

    return-object p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LSe/r$a;->d:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, LSe/r$a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LSe/r$a;->d:Z

    iget-object v0, p0, LSe/r$a;->c:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    :cond_0
    return-void
.end method
