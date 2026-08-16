.class public Lorg/openjdk/tools/sjavac/comp/PooledSjavac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/sjavac/server/Sjavac;


# instance fields
.field final delegate:Lorg/openjdk/tools/sjavac/server/Sjavac;

.field final pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/sjavac/server/Sjavac;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;->delegate:Lorg/openjdk/tools/sjavac/server/Sjavac;

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;->pool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/sjavac/comp/PooledSjavac;Lorg/openjdk/tools/sjavac/Log;[Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;->lambda$compile$0(Lorg/openjdk/tools/sjavac/Log;[Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$compile$0(Lorg/openjdk/tools/sjavac/Log;[Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->setLogForCurrentThread(Lorg/openjdk/tools/sjavac/Log;)V

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;->delegate:Lorg/openjdk/tools/sjavac/server/Sjavac;

    invoke-interface {p1, p2}, Lorg/openjdk/tools/sjavac/server/Sjavac;->compile([Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public compile([Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 3

    invoke-static {}, Lorg/openjdk/tools/sjavac/Log;->get()Lorg/openjdk/tools/sjavac/Log;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/openjdk/tools/sjavac/comp/a;

    invoke-direct {v2, p0, v0, p1}, Lorg/openjdk/tools/sjavac/comp/a;-><init>(Lorg/openjdk/tools/sjavac/comp/PooledSjavac;Lorg/openjdk/tools/sjavac/Log;[Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/main/Main$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error during compile"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public shutdown()V
    .locals 4

    const-string v0, "Shutting down PooledSjavac"

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;->pool:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ThreadPool did not terminate"

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PooledSjavac;->delegate:Lorg/openjdk/tools/sjavac/server/Sjavac;

    invoke-interface {v0}, Lorg/openjdk/tools/sjavac/server/Sjavac;->shutdown()V

    return-void
.end method
