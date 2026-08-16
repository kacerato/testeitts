.class public Lcom/jme3/asset/ThreadingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/asset/ThreadingManager$LoadingThreadFactory;,
        Lcom/jme3/asset/ThreadingManager$LoadingTask;
    }
.end annotation


# instance fields
.field protected final executor:Ljava/util/concurrent/ExecutorService;

.field protected nextThreadId:I

.field protected final owner:Lcom/jme3/asset/AssetManager;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    new-instance v1, Lcom/jme3/asset/ThreadingManager$LoadingThreadFactory;

    invoke-direct {v1, p0}, Lcom/jme3/asset/ThreadingManager$LoadingThreadFactory;-><init>(Lcom/jme3/asset/ThreadingManager;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/asset/ThreadingManager;->executor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/asset/ThreadingManager;->nextThreadId:I

    iput-object p1, p0, Lcom/jme3/asset/ThreadingManager;->owner:Lcom/jme3/asset/AssetManager;

    return-void
.end method

.method public static isLoadingThread()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jME3-threadpool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/ThreadingManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/jme3/asset/ThreadingManager$LoadingTask;

    invoke-direct {v1, p0, p1}, Lcom/jme3/asset/ThreadingManager$LoadingTask;-><init>(Lcom/jme3/asset/ThreadingManager;Lcom/jme3/asset/AssetKey;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
