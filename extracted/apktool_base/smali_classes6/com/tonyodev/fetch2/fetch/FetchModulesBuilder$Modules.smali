.class public final Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Modules"
.end annotation


# instance fields
.field private final downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2/helper/PriorityListProcessor<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uiHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/FetchConfiguration;Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)V
    .locals 35
    .param p1    # Lcom/tonyodev/fetch2/FetchConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/HandlerWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2/provider/DownloadProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v15, p3

    move-object/from16 v4, p4

    move-object/from16 v14, p5

    move-object/from16 v13, p6

    move-object/from16 v12, p8

    move-object/from16 v32, p5

    move-object/from16 v25, p7

    move-object/from16 v26, p8

    const-string v2, "fetchConfiguration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "handlerWrapper"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fetchDatabaseManagerWrapper"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "downloadProvider"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "groupInfoProvider"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "uiHandler"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "downloadManagerCoordinator"

    move-object/from16 v5, p7

    invoke-static {v5, v2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listenerCoordinator"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

    iput-object v3, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iput-object v15, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    iput-object v4, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    iput-object v14, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    iput-object v13, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->uiHandler:Landroid/os/Handler;

    iput-object v12, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    new-instance v2, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    move-object/from16 v24, v2

    invoke-direct {v2, v15}, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;-><init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;)V

    iput-object v2, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    new-instance v6, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    move-object/from16 v22, v6

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getInternetCheckUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v2, v5}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    new-instance v11, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;

    move-object/from16 v16, v11

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getHttpDownloader()Lcom/tonyodev/fetch2core/Downloader;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getConcurrentLimit()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getProgressReportingIntervalMillis()J

    move-result-wide v19

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getRetryOnNetworkGain()Z

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getFileServerDownloader()Lcom/tonyodev/fetch2core/FileServerDownloader;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getHashCheckingEnabled()Z

    move-result v28

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getStorageResolver()Lcom/tonyodev/fetch2core/StorageResolver;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getMaxAutoRetryAttempts()I

    move-result v33

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getPreAllocateFileOnCreation()Z

    move-result v34

    invoke-direct/range {v16 .. v34}, Lcom/tonyodev/fetch2/downloader/DownloadManagerImpl;-><init>(Lcom/tonyodev/fetch2core/Downloader;IJLcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ZLcom/tonyodev/fetch2/helper/DownloadInfoUpdater;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2core/FileServerDownloader;ZLcom/tonyodev/fetch2core/StorageResolver;Landroid/content/Context;Ljava/lang/String;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;IZ)V

    iput-object v11, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    new-instance v10, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getConcurrentLimit()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getPrioritySort()Lcom/tonyodev/fetch2/PrioritySort;

    move-result-object v18

    move-object v2, v10

    move-object v5, v11

    move-object/from16 v8, p8

    move-object v13, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    invoke-direct/range {v2 .. v12}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;-><init>(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/downloader/DownloadManager;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;Lcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;ILandroid/content/Context;Ljava/lang/String;Lcom/tonyodev/fetch2/PrioritySort;)V

    iput-object v13, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->setGlobalNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getFetchHandler()Lcom/tonyodev/fetch2/fetch/FetchHandler;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v17, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getAutoStart()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getHttpDownloader()Lcom/tonyodev/fetch2core/Downloader;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getFileServerDownloader()Lcom/tonyodev/fetch2core/FileServerDownloader;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getStorageResolver()Lcom/tonyodev/fetch2core/StorageResolver;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getFetchNotificationManager()Lcom/tonyodev/fetch2/FetchNotificationManager;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getPrioritySort()Lcom/tonyodev/fetch2/PrioritySort;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/tonyodev/fetch2/FetchConfiguration;->getCreateFileOnEnqueue()Z

    move-result v20

    move-object/from16 v1, v17

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    move-object v5, v13

    move-object/from16 v10, p8

    move-object/from16 v11, p6

    move-object/from16 v13, v18

    move-object/from16 v14, p5

    move-object/from16 v15, v19

    move/from16 v16, v20

    invoke-direct/range {v1 .. v16}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;-><init>(Ljava/lang/String;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/downloader/DownloadManager;Lcom/tonyodev/fetch2/helper/PriorityListProcessor;Lcom/tonyodev/fetch2core/Logger;ZLcom/tonyodev/fetch2core/Downloader;Lcom/tonyodev/fetch2core/FileServerDownloader;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Landroid/os/Handler;Lcom/tonyodev/fetch2core/StorageResolver;Lcom/tonyodev/fetch2/FetchNotificationManager;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Lcom/tonyodev/fetch2/PrioritySort;Z)V

    move-object/from16 v2, v17

    :cond_0
    iput-object v2, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    new-instance v1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules$1;

    invoke-direct {v1, v0}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;)V

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->setDelegate(Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;)V

    return-void
.end method


# virtual methods
.method public final getDownloadInfoUpdater()Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->downloadInfoUpdater:Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;

    return-object v0
.end method

.method public final getDownloadManager()Lcom/tonyodev/fetch2/downloader/DownloadManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    return-object v0
.end method

.method public final getDownloadProvider()Lcom/tonyodev/fetch2/provider/DownloadProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    return-object v0
.end method

.method public final getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

    return-object v0
.end method

.method public final getFetchDatabaseManagerWrapper()Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    return-object v0
.end method

.method public final getFetchHandler()Lcom/tonyodev/fetch2/fetch/FetchHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    return-object v0
.end method

.method public final getGroupInfoProvider()Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    return-object v0
.end method

.method public final getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    return-object v0
.end method

.method public final getListenerCoordinator()Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    return-object v0
.end method

.method public final getNetworkInfoProvider()Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    return-object v0
.end method

.method public final getPriorityListProcessor()Lcom/tonyodev/fetch2/helper/PriorityListProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tonyodev/fetch2/helper/PriorityListProcessor<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    return-object v0
.end method

.method public final getUiHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method
