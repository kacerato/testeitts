.class public final Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListenerCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListenerCoordinator.kt\ncom/tonyodev/fetch2/fetch/ListenerCoordinator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,770:1\n1603#2,9:771\n1855#2:780\n1856#2:782\n1612#2:783\n1#3:781\n*S KotlinDebug\n*F\n+ 1 ListenerCoordinator.kt\ncom/tonyodev/fetch2/fetch/ListenerCoordinator\n*L\n733#1:771,9\n733#1:780\n733#1:782\n733#1:783\n733#1:781\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nListenerCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListenerCoordinator.kt\ncom/tonyodev/fetch2/fetch/ListenerCoordinator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,770:1\n1603#2,9:771\n1855#2:780\n1856#2:782\n1612#2:783\n1#3:781\n*S KotlinDebug\n*F\n+ 1 ListenerCoordinator.kt\ncom/tonyodev/fetch2/fetch/ListenerCoordinator\n*L\n733#1:771,9\n733#1:780\n733#1:782\n733#1:783\n733#1:781\n*E\n"
    }
.end annotation


# instance fields
.field private final downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final downloadsObserverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchGroupListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tonyodev/fetch2/FetchGroupListener;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tonyodev/fetch2/FetchListener;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchNotificationHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchNotificationManagerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/FetchNotificationManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainListener:Lcom/tonyodev/fetch2/FetchListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final namespace:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uiHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Lcom/tonyodev/fetch2/provider/DownloadProvider;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/provider/DownloadProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupInfoProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    iput-object p4, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->uiHandler:Landroid/os/Handler;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchListenerMap:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchGroupListenerMap:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationManagerList:Ljava/util/List;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "FetchNotificationsIO"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->downloadsObserverMap:Ljava/util/Map;

    new-instance p1, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;-><init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->mainListener:Lcom/tonyodev/fetch2/FetchListener;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->addFetchObserversForDownload$lambda$10$lambda$9(Ljava/util/List;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static final synthetic access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->downloadsObserverMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchGroupListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getFetchNotificationHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getFetchNotificationManagerList$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationManagerList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static final addFetchObserversForDownload$lambda$10$lambda$9(Ljava/util/List;Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "$addedObservers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2core/FetchObserver;

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->OBSERVER_ATTACHED:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {v0, p1, v1}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/FetchNotificationManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->cancelOnGoingNotifications$lambda$6$lambda$5(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/FetchNotificationManager;)V

    return-void
.end method

.method private static final cancelOnGoingNotifications$lambda$6$lambda$5(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/FetchNotificationManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fetchNotificationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/tonyodev/fetch2/FetchNotificationManager;->cancelOngoingNotifications()V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final varargs addFetchObserversForDownload(I[Lcom/tonyodev/fetch2core/FetchObserver;)V
    .locals 6
    .param p2    # [Lcom/tonyodev/fetch2core/FetchObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fetchObservers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Lpf/A;->l9([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->downloadsObserverMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz v4, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2core/FetchObserver;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    invoke-virtual {p2, p1}, Lcom/tonyodev/fetch2/provider/DownloadProvider;->getDownload(I)Lcom/tonyodev/fetch2/Download;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->uiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/tonyodev/fetch2/fetch/n0;

    invoke-direct {v4, v2, p2}, Lcom/tonyodev/fetch2/fetch/n0;-><init>(Ljava/util/List;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->downloadsObserverMap:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public final addListener(ILcom/tonyodev/fetch2/FetchListener;)V
    .locals 4
    .param p2    # Lcom/tonyodev/fetch2/FetchListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fetchListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchListenerMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, p2, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchGroupListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchGroupListenerMap:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final addNotificationManager(Lcom/tonyodev/fetch2/FetchNotificationManager;)V
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/FetchNotificationManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fetchNotificationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationManagerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationManagerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final cancelOnGoingNotifications(Lcom/tonyodev/fetch2/FetchNotificationManager;)V
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2/FetchNotificationManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fetchNotificationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/o0;

    invoke-direct {v2, p0, p1}, Lcom/tonyodev/fetch2/fetch/o0;-><init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/FetchNotificationManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final clearAll()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchGroupListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->downloadsObserverMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getMainListener()Lcom/tonyodev/fetch2/FetchListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->mainListener:Lcom/tonyodev/fetch2/FetchListener;

    return-object v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public final varargs removeFetchObserversForDownload(I[Lcom/tonyodev/fetch2core/FetchObserver;)V
    .locals 6
    .param p2    # [Lcom/tonyodev/fetch2core/FetchObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fetchObservers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->downloadsObserverMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public final removeListener(ILcom/tonyodev/fetch2/FetchListener;)V
    .locals 4
    .param p2    # Lcom/tonyodev/fetch2/FetchListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fetchListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_2
    instance-of v1, p2, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchGroupListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_5

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_5
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final removeNotificationManager(Lcom/tonyodev/fetch2/FetchNotificationManager;)V
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/FetchNotificationManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fetchNotificationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->fetchNotificationManagerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
