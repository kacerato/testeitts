.class public Lcom/jme3/terrain/executor/TerrainExecutorService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/terrain/executor/TerrainExecutorService$LazyInitializer;
    }
.end annotation


# static fields
.field private static final RUNTIME:Ljava/lang/Runtime;

.field private static volatile constructor:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static initializer:Lcom/jme3/terrain/executor/TerrainExecutorService$LazyInitializer;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/executor/TerrainExecutorService;->RUNTIME:Ljava/lang/Runtime;

    new-instance v0, Lcom/jme3/terrain/executor/TerrainExecutorService$1;

    invoke-direct {v0}, Lcom/jme3/terrain/executor/TerrainExecutorService$1;-><init>()V

    sput-object v0, Lcom/jme3/terrain/executor/TerrainExecutorService;->constructor:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget-object v0, Lcom/jme3/terrain/executor/TerrainExecutorService;->constructor:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/jme3/terrain/executor/TerrainExecutorService;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic access$000()Ljava/lang/Runtime;
    .locals 1

    sget-object v0, Lcom/jme3/terrain/executor/TerrainExecutorService;->RUNTIME:Ljava/lang/Runtime;

    return-object v0
.end method

.method public static getInstance()Lcom/jme3/terrain/executor/TerrainExecutorService;
    .locals 3

    sget-object v0, Lcom/jme3/terrain/executor/TerrainExecutorService;->initializer:Lcom/jme3/terrain/executor/TerrainExecutorService$LazyInitializer;

    if-nez v0, :cond_1

    const-class v1, Lcom/jme3/terrain/executor/TerrainExecutorService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jme3/terrain/executor/TerrainExecutorService;->initializer:Lcom/jme3/terrain/executor/TerrainExecutorService$LazyInitializer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/terrain/executor/TerrainExecutorService$LazyInitializer;

    new-instance v2, Lcom/jme3/terrain/executor/TerrainExecutorService;

    invoke-direct {v2}, Lcom/jme3/terrain/executor/TerrainExecutorService;-><init>()V

    invoke-direct {v0, v2}, Lcom/jme3/terrain/executor/TerrainExecutorService$LazyInitializer;-><init>(Lcom/jme3/terrain/executor/TerrainExecutorService;)V

    sput-object v0, Lcom/jme3/terrain/executor/TerrainExecutorService;->initializer:Lcom/jme3/terrain/executor/TerrainExecutorService$LazyInitializer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, v0, Lcom/jme3/terrain/executor/TerrainExecutorService$LazyInitializer;->instance:Lcom/jme3/terrain/executor/TerrainExecutorService;

    return-object v0
.end method

.method public static setConstructor(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/jme3/terrain/executor/TerrainExecutorService;->constructor:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/executor/TerrainExecutorService;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/jme3/terrain/executor/TerrainExecutorService;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/jme3/terrain/executor/TerrainExecutorService;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/terrain/executor/TerrainExecutorService;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
