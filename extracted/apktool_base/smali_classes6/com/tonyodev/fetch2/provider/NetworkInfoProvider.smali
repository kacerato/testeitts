.class public final Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkInfoProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkInfoProvider.kt\ncom/tonyodev/fetch2/provider/NetworkInfoProvider\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,145:1\n32#2,2:146\n*S KotlinDebug\n*F\n+ 1 NetworkInfoProvider.kt\ncom/tonyodev/fetch2/provider/NetworkInfoProvider\n*L\n69#1:146,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nNetworkInfoProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkInfoProvider.kt\ncom/tonyodev/fetch2/provider/NetworkInfoProvider\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,145:1\n32#2,2:146\n*S KotlinDebug\n*F\n+ 1 NetworkInfoProvider.kt\ncom/tonyodev/fetch2/provider/NetworkInfoProvider\n*L\n69#1:146,2\n*E\n"
    }
.end annotation


# instance fields
.field private broadcastRegistered:Z

.field private final connectivityManager:Landroid/net/ConnectivityManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final internetCheckUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private networkCallback:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final networkChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final networkChangeListenerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->internetCheckUrl:Ljava/lang/String;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->lock:Ljava/lang/Object;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeListenerSet:Ljava/util/HashSet;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->connectivityManager:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkChangeBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkChangeBroadcastReceiver$1;-><init>(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkCallback$1;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$networkCallback$1;-><init>(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkCallback:Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_2

    :cond_1
    const/16 p2, 0x21

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    if-lt v1, p2, :cond_2

    :try_start_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    iput-boolean v2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->broadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method public static final synthetic access$notifyNetworkChangeListeners(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->notifyNetworkChangeListeners()V

    return-void
.end method

.method private final notifyNetworkChangeListeners()V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeListenerSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;

    invoke-interface {v2}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;->onNetworkChanged()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final isNetworkAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->internetCheckUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x4e20

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchAndroidExtensions;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public final isOnAllowedNetwork(Lcom/tonyodev/fetch2/NetworkType;)Z
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/NetworkType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->WIFI_ONLY:Lcom/tonyodev/fetch2/NetworkType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchAndroidExtensions;->isOnWiFi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->UNMETERED:Lcom/tonyodev/fetch2/NetworkType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchAndroidExtensions;->isOnMeteredConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tonyodev/fetch2core/FetchAndroidExtensions;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final registerNetworkChangeListener(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;)V
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "networkChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeListenerSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final unregisterAllNetworkChangeListeners()V
    .locals 4

    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeListenerSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-boolean v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->broadcastRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkCallback:Ljava/lang/Object;

    instance-of v3, v2, Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final unregisterNetworkChangeListener(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;)V
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "networkChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->networkChangeListenerSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
