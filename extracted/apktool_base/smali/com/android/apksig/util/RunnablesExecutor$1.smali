.class Lcom/android/apksig/util/RunnablesExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/apksig/util/RunnablesExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/util/RunnablesExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final PARALLELISM:I

.field private final QUEUE_SIZE:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/apksig/util/RunnablesExecutor$1;->PARALLELISM:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/apksig/util/RunnablesExecutor$1;->QUEUE_SIZE:I

    return-void
.end method

.method public static synthetic b(Lcom/android/apksig/util/RunnablesProvider;Ljava/util/concurrent/Phaser;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/apksig/util/RunnablesExecutor$1;->lambda$execute$0(Lcom/android/apksig/util/RunnablesProvider;Ljava/util/concurrent/Phaser;)V

    return-void
.end method

.method private static synthetic lambda$execute$0(Lcom/android/apksig/util/RunnablesProvider;Ljava/util/concurrent/Phaser;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/apksig/util/RunnablesProvider;->createRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1}, Ljava/util/concurrent/Phaser;->arriveAndDeregister()I

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/apksig/util/RunnablesProvider;)V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcom/android/apksig/util/RunnablesExecutor$1;->PARALLELISM:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x4

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const-wide/16 v3, 0x0

    move-object v0, v8

    move v1, v2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v0, Ljava/util/concurrent/Phaser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Phaser;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/apksig/util/RunnablesExecutor$1;->PARALLELISM:I

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/android/apksig/util/b;

    invoke-direct {v2, p1, v0}, Lcom/android/apksig/util/b;-><init>(Lcom/android/apksig/util/RunnablesProvider;Ljava/util/concurrent/Phaser;)V

    invoke-virtual {v0}, Ljava/util/concurrent/Phaser;->register()I

    invoke-interface {v8, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/Phaser;->arriveAndAwaitAdvance()I

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
