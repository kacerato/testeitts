.class public final Lcom/ardor3d/util/GameTaskQueueManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final _managers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/ardor3d/util/GameTaskQueueManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _managedQueues:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/ardor3d/util/GameTaskQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/O1;

    invoke-direct {v0}, Lcom/google/common/collect/O1;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->l()Lcom/google/common/collect/O1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/GameTaskQueueManager;->_managers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ardor3d/util/GameTaskQueueManager;->_managedQueues:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/ardor3d/util/GameTaskQueue;

    invoke-direct {v0}, Lcom/ardor3d/util/GameTaskQueue;-><init>()V

    const-string v1, "render"

    invoke-virtual {p0, v1, v0}, Lcom/ardor3d/util/GameTaskQueueManager;->addQueue(Ljava/lang/String;Lcom/ardor3d/util/GameTaskQueue;)V

    new-instance v0, Lcom/ardor3d/util/GameTaskQueue;

    invoke-direct {v0}, Lcom/ardor3d/util/GameTaskQueue;-><init>()V

    const-string v1, "update"

    invoke-virtual {p0, v1, v0}, Lcom/ardor3d/util/GameTaskQueueManager;->addQueue(Ljava/lang/String;Lcom/ardor3d/util/GameTaskQueue;)V

    return-void
.end method

.method public static getManager(Ljava/lang/Object;)Lcom/ardor3d/util/GameTaskQueueManager;
    .locals 2

    sget-object v0, Lcom/ardor3d/util/GameTaskQueueManager;->_managers:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/GameTaskQueueManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ardor3d/util/GameTaskQueueManager;

    invoke-direct {v1}, Lcom/ardor3d/util/GameTaskQueueManager;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addQueue(Ljava/lang/String;Lcom/ardor3d/util/GameTaskQueue;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/GameTaskQueueManager;->_managedQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearTasks()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/util/GameTaskQueueManager;->_managedQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/GameTaskQueue;

    invoke-virtual {v1}, Lcom/ardor3d/util/GameTaskQueue;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getQueue(Ljava/lang/String;)Lcom/ardor3d/util/GameTaskQueue;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/GameTaskQueueManager;->_managedQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/GameTaskQueue;

    return-object p1
.end method

.method public moveTasksTo(Lcom/ardor3d/util/GameTaskQueueManager;)V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/util/GameTaskQueueManager;->_managedQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/ardor3d/util/GameTaskQueueManager;->getQueue(Ljava/lang/String;)Lcom/ardor3d/util/GameTaskQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/util/GameTaskQueueManager;->_managedQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/GameTaskQueue;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ardor3d/util/GameTaskQueue;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/ardor3d/util/GameTaskQueue;->enqueueAll(Lcom/ardor3d/util/GameTaskQueue;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public render(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "render"

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/GameTaskQueueManager;->getQueue(Ljava/lang/String;)Lcom/ardor3d/util/GameTaskQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/GameTaskQueue;->enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "update"

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/GameTaskQueueManager;->getQueue(Ljava/lang/String;)Lcom/ardor3d/util/GameTaskQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/GameTaskQueue;->enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
