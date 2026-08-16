.class public final Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;,
        Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final holderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final mainUIHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    invoke-direct {v0}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->holderMap:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->mainUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildModulesFromPrefs(Lcom/tonyodev/fetch2/FetchConfiguration;)Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;
    .locals 22
    .param p1    # Lcom/tonyodev/fetch2/FetchConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fetchConfiguration"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->lock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->holderMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getFetchDatabaseManagerWrapper()Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getDownloadProvider()Lcom/tonyodev/fetch2/provider/DownloadProvider;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getGroupInfoProvider()Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v6

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getUiHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getDownloadManagerCoordinator()Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    move-result-object v8

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getListenerCoordinator()Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    move-result-object v9

    move-object v1, v0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;-><init>(Lcom/tonyodev/fetch2/FetchConfiguration;Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    new-instance v13, Lcom/tonyodev/fetch2core/HandlerWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v13, v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    new-instance v1, Lcom/tonyodev/fetch2/fetch/LiveSettings;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tonyodev/fetch2/fetch/LiveSettings;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getFetchDatabaseManager()Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v17

    sget-object v3, Lcom/tonyodev/fetch2/database/DownloadDatabase;->Companion:Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/database/DownloadDatabase$Companion;->getMigrations()[Lcom/tonyodev/fetch2/database/migration/Migration;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getFileExistChecksEnabled()Z

    move-result v20

    new-instance v3, Lcom/tonyodev/fetch2core/DefaultStorageResolver;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getFileTempDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/tonyodev/fetch2core/DefaultStorageResolver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v14, v2

    move-object/from16 v19, v1

    move-object/from16 v21, v3

    invoke-direct/range {v14 .. v21}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tonyodev/fetch2core/Logger;[Lcom/tonyodev/fetch2/database/migration/Migration;Lcom/tonyodev/fetch2/fetch/LiveSettings;ZLcom/tonyodev/fetch2core/DefaultStorageResolver;)V

    :cond_1
    new-instance v14, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-direct {v14, v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;-><init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManager;)V

    new-instance v15, Lcom/tonyodev/fetch2/provider/DownloadProvider;

    invoke-direct {v15, v14}, Lcom/tonyodev/fetch2/provider/DownloadProvider;-><init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;)V

    new-instance v12, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1, v15}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;-><init>(Ljava/lang/String;Lcom/tonyodev/fetch2/provider/DownloadProvider;)V

    new-instance v8, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->mainUIHandler:Landroid/os/Handler;

    invoke-direct {v8, v1, v9, v15, v7}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;-><init>(Ljava/lang/String;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Lcom/tonyodev/fetch2/provider/DownloadProvider;Landroid/os/Handler;)V

    new-instance v21, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object v6, v9

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object v8, v12

    move-object/from16 v16, v9

    move-object/from16 v9, v19

    invoke-direct/range {v1 .. v9}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;-><init>(Lcom/tonyodev/fetch2/FetchConfiguration;Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;

    invoke-virtual/range {v21 .. v21}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getNetworkInfoProvider()Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    move-result-object v20

    move-object v3, v12

    move-object v12, v2

    move-object/from16 v18, v3

    invoke-direct/range {v12 .. v20}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;-><init>(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v21

    :goto_0
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/HandlerWrapper;->incrementUsageCounter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    return-object v0

    :goto_1
    monitor-exit v11

    throw v0
.end method

.method public final getMainUIHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->mainUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final removeNamespaceInstanceReference(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->holderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2core/HandlerWrapper;->decrementUsageCounter()V

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2core/HandlerWrapper;->usageCount()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2core/HandlerWrapper;->close()V

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getListenerCoordinator()Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->clearAll()V

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getGroupInfoProvider()Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->clear()V

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getFetchDatabaseManagerWrapper()Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->close()V

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getDownloadManagerCoordinator()Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;->clearAll()V

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->getNetworkInfoProvider()Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->unregisterAllNetworkChangeListeners()V

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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
