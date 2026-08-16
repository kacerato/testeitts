.class public Lcom/jme3/app/state/AppStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final app:Lcom/jme3/app/Application;

.field private final initializing:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/app/state/AppState;",
            ">;"
        }
    .end annotation
.end field

.field private final stateIndex:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/app/state/AppState;",
            ">;"
        }
    .end annotation
.end field

.field private final states:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/app/state/AppState;",
            ">;"
        }
    .end annotation
.end field

.field private final terminating:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/app/state/AppState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jme3/app/Application;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/app/state/AppState;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/app/state/AppStateManager;->terminating:Lcom/jme3/util/SafeArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/app/state/AppStateManager;->stateIndex:Ljava/util/concurrent/ConcurrentMap;

    iput-object p1, p0, Lcom/jme3/app/state/AppStateManager;->app:Lcom/jme3/app/Application;

    return-void
.end method


# virtual methods
.method public attach(Lcom/jme3/app/state/AppState;)Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/jme3/app/state/AppState;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->stateIndex:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/jme3/app/state/AppState;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/jme3/app/state/AppState;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is already being used by another state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jme3/app/state/AppStateManager;->stateIndex:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/jme3/app/state/AppState;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, p0}, Lcom/jme3/app/state/AppState;->stateAttached(Lcom/jme3/app/state/AppStateManager;)V

    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_2
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public attachAll(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/jme3/app/state/AppState;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/app/state/AppState;

    .line 4
    invoke-virtual {p0, v1}, Lcom/jme3/app/state/AppStateManager;->attach(Lcom/jme3/app/state/AppState;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs attachAll([Lcom/jme3/app/state/AppState;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/app/state/AppStateManager;->attachAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public cleanup()V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getStates()[Lcom/jme3/app/state/AppState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/jme3/app/state/AppState;->cleanup()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detach(Lcom/jme3/app/state/AppState;)Z
    .locals 3

    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->stateIndex:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p1, p0}, Lcom/jme3/app/state/AppState;->stateDetached(Lcom/jme3/app/state/AppStateManager;)V

    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->terminating:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p0}, Lcom/jme3/app/state/AppState;->stateDetached(Lcom/jme3/app/state/AppStateManager;)V

    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getApplication()Lcom/jme3/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->app:Lcom/jme3/app/Application;

    return-object v0
.end method

.method public getInitializing()[Lcom/jme3/app/state/AppState;
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/app/state/AppState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getState(Ljava/lang/Class;)Lcom/jme3/app/state/AppState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/app/state/AppState;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/app/state/AppStateManager;->getState(Ljava/lang/Class;Z)Lcom/jme3/app/state/AppState;

    move-result-object p1

    return-object p1
.end method

.method public getState(Ljava/lang/Class;Z)Lcom/jme3/app/state/AppState;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/app/state/AppState;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getStates()[Lcom/jme3/app/state/AppState;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getInitializing()[Lcom/jme3/app/state/AppState;

    move-result-object v1

    .line 8
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    monitor-exit v0

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State not found for:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getState(Ljava/lang/String;Ljava/lang/Class;)Lcom/jme3/app/state/AppState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/app/state/AppState;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->stateIndex:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/app/state/AppState;

    return-object p1
.end method

.method public getStates()[Lcom/jme3/app/state/AppState;
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/app/state/AppState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTerminating()[Lcom/jme3/app/state/AppState;
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->terminating:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/app/state/AppState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasState(Lcom/jme3/app/state/AppState;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    .line 3
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasState(Ljava/lang/String;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->stateIndex:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public initializePending()V
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getInitializing()[Lcom/jme3/app/state/AppState;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v3, v2}, Lcom/jme3/util/SafeArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v3, v2}, Lcom/jme3/util/SafeArrayList;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/jme3/app/state/AppStateManager;->app:Lcom/jme3/app/Application;

    invoke-interface {v3, p0, v4}, Lcom/jme3/app/state/AppState;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRender()V
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getStates()[Lcom/jme3/app/state/AppState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/jme3/app/state/AppState;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jme3/app/state/AppStateManager;->app:Lcom/jme3/app/Application;

    invoke-interface {v4}, Lcom/jme3/app/Application;->getAppProfiler()Lcom/jme3/profile/AppProfiler;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jme3/app/state/AppStateManager;->app:Lcom/jme3/app/Application;

    invoke-interface {v4}, Lcom/jme3/app/Application;->getAppProfiler()Lcom/jme3/profile/AppProfiler;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/jme3/profile/AppProfiler;->appSubStep([Ljava/lang/String;)V

    :cond_0
    invoke-interface {v3}, Lcom/jme3/app/state/AppState;->postRender()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getStates()[Lcom/jme3/app/state/AppState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/jme3/app/state/AppState;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jme3/app/state/AppStateManager;->app:Lcom/jme3/app/Application;

    invoke-interface {v4}, Lcom/jme3/app/Application;->getAppProfiler()Lcom/jme3/profile/AppProfiler;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jme3/app/state/AppStateManager;->app:Lcom/jme3/app/Application;

    invoke-interface {v4}, Lcom/jme3/app/Application;->getAppProfiler()Lcom/jme3/profile/AppProfiler;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/jme3/profile/AppProfiler;->appSubStep([Ljava/lang/String;)V

    :cond_0
    invoke-interface {v3, p1}, Lcom/jme3/app/state/AppState;->render(Lcom/jme3/renderer/RenderManager;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public stateForId(Ljava/lang/String;Ljava/lang/Class;)Lcom/jme3/app/state/AppState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/app/state/AppState;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jme3/app/state/AppStateManager;->getState(Ljava/lang/String;Ljava/lang/Class;)Lcom/jme3/app/state/AppState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/app/state/AppState;

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State not found for:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public terminatePending()V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getTerminating()[Lcom/jme3/app/state/AppState;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/jme3/app/state/AppState;->cleanup()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/jme3/app/state/AppStateManager;->terminating:Lcom/jme3/util/SafeArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jme3/util/SafeArrayList;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(F)V
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->terminatePending()V

    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->initializePending()V

    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getStates()[Lcom/jme3/app/state/AppState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/jme3/app/state/AppState;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jme3/app/state/AppStateManager;->app:Lcom/jme3/app/Application;

    invoke-interface {v4}, Lcom/jme3/app/Application;->getAppProfiler()Lcom/jme3/profile/AppProfiler;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jme3/app/state/AppStateManager;->app:Lcom/jme3/app/Application;

    invoke-interface {v4}, Lcom/jme3/app/Application;->getAppProfiler()Lcom/jme3/profile/AppProfiler;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/jme3/profile/AppProfiler;->appSubStep([Ljava/lang/String;)V

    :cond_0
    invoke-interface {v3, p1}, Lcom/jme3/app/state/AppState;->update(F)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
