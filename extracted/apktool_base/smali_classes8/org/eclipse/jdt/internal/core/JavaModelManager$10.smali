.class Lorg/eclipse/jdt/internal/core/JavaModelManager$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IWorkspaceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;->initializeAllContainers(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

.field private final synthetic val$allContainerPaths:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->val$allContainerPaths:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initKnownContainers(Ljava/util/Map;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/core/IClasspathContainer;",
            ">;>;",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/SetContainerOperation;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/IClasspathContainer;

    new-instance v8, Lorg/eclipse/jdt/internal/core/SetContainerOperation;

    new-array v9, v1, [Lorg/eclipse/jdt/core/IJavaProject;

    aput-object v5, v9, v0

    new-array v10, v1, [Lorg/eclipse/jdt/core/IClasspathContainer;

    aput-object v6, v10, v0

    invoke-direct {v8, v7, v9, v10}, Lorg/eclipse/jdt/internal/core/SetContainerOperation;-><init>(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public run(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->val$allContainerPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-interface {p1, v2, v1}, Lorg/eclipse/core/runtime/IProgressMonitor;->beginTask(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containersBeingInitialized:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->initKnownContainers(Ljava/util/Map;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containersBeingInitialized:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v4, v3, [Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v3, :cond_7

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    goto :goto_1

    :cond_7
    aget-object v5, v4, v1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializationsLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v7, v2, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerIsSet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Z

    move-result v7

    if-eqz v7, :cond_8

    monitor-exit v6

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_8
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v6, v2, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->initializeContainer(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v6, v2, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerBeingInitializedGet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/core/JavaModelManager;->batchContainerInitializationsLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v8, v2, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerIsSet(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v6, v2, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerBeingInitializedRemove(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v6, v2, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerRemoveInitializationInProgress(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_9
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$10;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v8, v2, v5, v6}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerPut(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IClasspathContainer;)V

    :goto_5
    monitor-exit v7

    goto :goto_7

    :goto_6
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :goto_8
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_9
    if-eqz p1, :cond_b

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_b
    throw v0
.end method
