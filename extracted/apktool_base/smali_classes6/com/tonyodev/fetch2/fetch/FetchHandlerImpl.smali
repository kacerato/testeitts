.class public final Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/fetch/FetchHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchHandlerImpl.kt\ncom/tonyodev/fetch2/fetch/FetchHandlerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,790:1\n1855#2,2:791\n1855#2,2:793\n1549#2:795\n1620#2,3:796\n1855#2,2:799\n1549#2:801\n1620#2,3:802\n1855#2,2:805\n1549#2:807\n1620#2,3:808\n1855#2,2:811\n1855#2,2:813\n1855#2,2:815\n1855#2,2:817\n1855#2,2:823\n1855#2,2:825\n1855#2,2:827\n215#3,2:819\n32#4,2:821\n*S KotlinDebug\n*F\n+ 1 FetchHandlerImpl.kt\ncom/tonyodev/fetch2/fetch/FetchHandlerImpl\n*L\n62#1:791,2\n84#1:793,2\n212#1:795\n212#1:796,3\n241#1:799,2\n269#1:801\n269#1:802,3\n275#1:805,2\n287#1:807\n287#1:808,3\n313#1:811,2\n343#1:813,2\n366#1:815,2\n380#1:817,2\n643#1:823,2\n665#1:825,2\n689#1:827,2\n583#1:819,2\n619#1:821,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFetchHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchHandlerImpl.kt\ncom/tonyodev/fetch2/fetch/FetchHandlerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,790:1\n1855#2,2:791\n1855#2,2:793\n1549#2:795\n1620#2,3:796\n1855#2,2:799\n1549#2:801\n1620#2,3:802\n1855#2,2:805\n1549#2:807\n1620#2,3:808\n1855#2,2:811\n1855#2,2:813\n1855#2,2:815\n1855#2,2:817\n1855#2,2:823\n1855#2,2:825\n1855#2,2:827\n215#3,2:819\n32#4,2:821\n*S KotlinDebug\n*F\n+ 1 FetchHandlerImpl.kt\ncom/tonyodev/fetch2/fetch/FetchHandlerImpl\n*L\n62#1:791,2\n84#1:793,2\n212#1:795\n212#1:796,3\n241#1:799,2\n269#1:801\n269#1:802,3\n275#1:805,2\n287#1:807\n287#1:808,3\n313#1:811,2\n343#1:813,2\n366#1:815,2\n380#1:817,2\n643#1:823,2\n665#1:825,2\n689#1:827,2\n583#1:819,2\n619#1:821,2\n*E\n"
    }
.end annotation


# instance fields
.field private final autoStart:Z

.field private final createFileOnEnqueue:Z

.field private final downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final httpDownloader:Lcom/tonyodev/fetch2core/Downloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile isTerminating:Z

.field private final listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listenerId:I

.field private final listenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tonyodev/fetch2/FetchListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lcom/tonyodev/fetch2core/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final namespace:Ljava/lang/String;
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

.field private final prioritySort:Lcom/tonyodev/fetch2/PrioritySort;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uiHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/downloader/DownloadManager;Lcom/tonyodev/fetch2/helper/PriorityListProcessor;Lcom/tonyodev/fetch2core/Logger;ZLcom/tonyodev/fetch2core/Downloader;Lcom/tonyodev/fetch2core/FileServerDownloader;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Landroid/os/Handler;Lcom/tonyodev/fetch2core/StorageResolver;Lcom/tonyodev/fetch2/FetchNotificationManager;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Lcom/tonyodev/fetch2/PrioritySort;Z)V
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/downloader/DownloadManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2/helper/PriorityListProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/tonyodev/fetch2core/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/tonyodev/fetch2core/Downloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/tonyodev/fetch2core/FileServerDownloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/tonyodev/fetch2core/StorageResolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lcom/tonyodev/fetch2/FetchNotificationManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lcom/tonyodev/fetch2/PrioritySort;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;",
            "Lcom/tonyodev/fetch2/downloader/DownloadManager;",
            "Lcom/tonyodev/fetch2/helper/PriorityListProcessor<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Logger;",
            "Z",
            "Lcom/tonyodev/fetch2core/Downloader<",
            "**>;",
            "Lcom/tonyodev/fetch2core/FileServerDownloader;",
            "Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;",
            "Landroid/os/Handler;",
            "Lcom/tonyodev/fetch2core/StorageResolver;",
            "Lcom/tonyodev/fetch2/FetchNotificationManager;",
            "Lcom/tonyodev/fetch2/provider/GroupInfoProvider;",
            "Lcom/tonyodev/fetch2/PrioritySort;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    const-string v13, "namespace"

    invoke-static {p1, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "fetchDatabaseManagerWrapper"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "downloadManager"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "priorityListProcessor"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "logger"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "httpDownloader"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "fileServerDownloader"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "listenerCoordinator"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "uiHandler"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "storageResolver"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "groupInfoProvider"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "prioritySort"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->namespace:Ljava/lang/String;

    iput-object v2, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    iput-object v3, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    iput-object v4, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    iput-object v5, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    move/from16 v1, p6

    iput-boolean v1, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->autoStart:Z

    iput-object v6, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    iput-object v7, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    iput-object v8, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iput-object v9, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->uiHandler:Landroid/os/Handler;

    iput-object v10, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;

    iput-object v11, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    iput-object v12, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->createFileOnEnqueue:Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    iput v1, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerId:I

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lcom/tonyodev/fetch2/database/DownloadInfo;Lcom/tonyodev/fetch2/FetchListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->addListener$lambda$18$lambda$17(Lcom/tonyodev/fetch2/database/DownloadInfo;Lcom/tonyodev/fetch2/FetchListener;)V

    return-void
.end method

.method private static final addListener$lambda$18$lambda$17(Lcom/tonyodev/fetch2/database/DownloadInfo;Lcom/tonyodev/fetch2/FetchListener;)V
    .locals 2

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    sget-object v1, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2/FetchListener;->onAdded(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2/FetchListener;->onRemoved(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/tonyodev/fetch2/FetchListener;->onQueued(Lcom/tonyodev/fetch2/Download;Z)V

    goto :goto_0

    :pswitch_4
    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2/FetchListener;->onPaused(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_0

    :pswitch_5
    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2/FetchListener;->onDeleted(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_0

    :pswitch_6
    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2/FetchListener;->onCancelled(Lcom/tonyodev/fetch2/Download;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/tonyodev/fetch2/FetchListener;->onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_8
    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2/FetchListener;->onCompleted(Lcom/tonyodev/fetch2/Download;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final cancelDownloads(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-static {v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->canCancelDownload(Lcom/tonyodev/fetch2/Download;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tonyodev/fetch2/Status;->CANCELLED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Ljava/util/List;)V

    return-object v0
.end method

.method private final cancelDownloadsIfDownloading(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->cancel(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final deleteDownloads(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->delete(Ljava/util/List;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    sget-object v2, Lcom/tonyodev/fetch2/Status;->DELETED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2core/StorageResolver;->deleteFile(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;->deleteTempFilesForDownload(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private final enqueueRequests(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Request;",
            ">;)",
            "Ljava/util/List<",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/Download;",
            "Lcom/tonyodev/fetch2/Error;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/Request;

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;->toDownloadInfo(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, v2}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->prepareDownloadInfoForEnqueue(Lcom/tonyodev/fetch2/database/DownloadInfo;)Z

    move-result v3

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v4

    sget-object v5, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-eq v4, v5, :cond_3

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/RequestInfo;->getDownloadOnEnqueue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    goto :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :cond_1
    sget-object v1, Lcom/tonyodev/fetch2/Status;->ADDED:Lcom/tonyodev/fetch2/Status;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)Lnf/Z;

    move-result-object v1

    iget-object v3, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v1}, Lnf/Z;->e()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueued download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    new-instance v3, Lnf/Z;

    invoke-virtual {v1}, Lnf/Z;->e()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    invoke-direct {v3, v1, v4}, Lnf/Z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    new-instance v1, Lnf/Z;

    sget-object v3, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    invoke-direct {v1, v2, v3}, Lnf/Z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v1, Lnf/Z;

    sget-object v3, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    invoke-direct {v1, v2, v3}, Lnf/Z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    sget-object v3, Lcom/tonyodev/fetch2/PrioritySort;->DESC:Lcom/tonyodev/fetch2/PrioritySort;

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->canAccommodateNewDownload()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_3
    invoke-static {v1}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromThrowable(Ljava/lang/Throwable;)Lcom/tonyodev/fetch2/Error;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    new-instance v1, Lnf/Z;

    invoke-direct {v1, v2, v3}, Lnf/Z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    return-object v0
.end method

.method private final pauseDownloads(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-static {v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->canPauseDownload(Lcom/tonyodev/fetch2/Download;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tonyodev/fetch2/Status;->PAUSED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Ljava/util/List;)V

    return-object v0
.end method

.method private final prepareCompletedDownloadInfoForEnqueue(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->deleteDownloads(Ljava/util/List;)Ljava/util/List;

    :cond_0
    return-void
.end method

.method private final prepareDownloadInfoForEnqueue(Lcom/tonyodev/fetch2/database/DownloadInfo;)Z
    .locals 8

    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v4

    sget-object v5, Lcom/tonyodev/fetch2/EnqueueAction;->INCREMENT_FILE_NAME:Lcom/tonyodev/fetch2/EnqueueAction;

    if-eq v4, v5, :cond_6

    iget-boolean v4, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->createFileOnEnqueue:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3, v1, v2}, Lcom/tonyodev/fetch2core/StorageResolver$DefaultImpls;->createFile$default(Lcom/tonyodev/fetch2core/StorageResolver;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_4

    :cond_0
    invoke-static {v0}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    const-string v4, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v5

    sget-object v6, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    if-ne v5, v6, :cond_2

    sget-object v5, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v0, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    :try_start_0
    iget-object v5, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    iget-object v6, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v7

    :goto_0
    invoke-interface {v6, v4, v5}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v2

    :goto_1
    sget-object v6, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-ne v5, v6, :cond_6

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v5

    sget-object v6, Lcom/tonyodev/fetch2/EnqueueAction;->UPDATE_ACCORDINGLY:Lcom/tonyodev/fetch2/EnqueueAction;

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/tonyodev/fetch2core/StorageResolver;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :try_start_1
    iget-object v5, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v5, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iget-object v5, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v6

    :goto_2
    invoke-interface {v5, v4, v0}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    sget-object v4, Lcom/tonyodev/fetch2/EnqueueAction;->INCREMENT_FILE_NAME:Lcom/tonyodev/fetch2/EnqueueAction;

    if-eq v0, v4, :cond_5

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->createFileOnEnqueue:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3, v1, v2}, Lcom/tonyodev/fetch2core/StorageResolver$DefaultImpls;->createFile$default(Lcom/tonyodev/fetch2core/StorageResolver;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    :cond_5
    move-object v0, v2

    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v4

    sget-object v5, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_d

    if-eq v4, v1, :cond_b

    const/4 v1, 0x3

    if-eq v4, v1, :cond_9

    const/4 v0, 0x4

    if-ne v4, v0, :cond_8

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->createFileOnEnqueue:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/tonyodev/fetch2core/StorageResolver;->createFile(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_7
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getUniqueId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    goto/16 :goto_5

    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_9
    if-eqz v0, :cond_a

    invoke-static {v0}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->deleteDownloads(Ljava/util/List;)Ljava/util/List;

    :cond_a
    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->deleteDownloads(Ljava/util/List;)Ljava/util/List;

    return v3

    :cond_b
    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v0, "request_with_file_path_already_exist"

    invoke-direct {p1, v0}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    sget-object v4, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-eq v0, v4, :cond_e

    sget-object v0, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    :cond_e
    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    if-ne v0, v4, :cond_10

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/tonyodev/fetch2core/StorageResolver;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->createFileOnEnqueue:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3, v1, v2}, Lcom/tonyodev/fetch2core/StorageResolver$DefaultImpls;->createFile$default(Lcom/tonyodev/fetch2core/StorageResolver;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    :cond_f
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    sget-object v0, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    :cond_10
    move v3, v5

    :cond_11
    :goto_5
    return v3
.end method

.method private final removeDownloads(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->delete(Ljava/util/List;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    sget-object v2, Lcom/tonyodev/fetch2/Status;->REMOVED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;->deleteTempFilesForDownload(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private final resumeDownloads(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lpf/S;->x2(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->canResumeDownload(Lcom/tonyodev/fetch2/Download;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    return-object v0
.end method

.method private final startPriorityQueueIfNotStarted()V
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->sendBackOffResetSignal()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->isTerminating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->start()V

    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->isTerminating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->resume()V

    :cond_1
    return-void
.end method


# virtual methods
.method public varargs addFetchObserversForDownload(I[Lcom/tonyodev/fetch2core/FetchObserver;)V
    .locals 2
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/tonyodev/fetch2core/FetchObserver;

    invoke-virtual {v0, p1, p2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->addFetchObserversForDownload(I[Lcom/tonyodev/fetch2core/FetchObserver;)V

    return-void
.end method

.method public addListener(Lcom/tonyodev/fetch2/FetchListener;ZZ)V
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2/FetchListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerId:I

    invoke-virtual {v0, v1, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->addListener(ILcom/tonyodev/fetch2/FetchListener;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/database/DownloadInfo;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/a;

    invoke-direct {v2, v0, p1}, Lcom/tonyodev/fetch2/fetch/a;-><init>(Lcom/tonyodev/fetch2/database/DownloadInfo;Lcom/tonyodev/fetch2/FetchListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public cancel(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lpf/S;->x2(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public cancelAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cancelGroup(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByGroup(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 5

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->isTerminating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->isTerminating:Z

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/FetchListener;

    iget-object v3, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget v4, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerId:I

    invoke-virtual {v3, v4, v2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->removeListener(ILcom/tonyodev/fetch2/FetchListener;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->removeNotificationManager(Lcom/tonyodev/fetch2/FetchNotificationManager;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->cancelOnGoingNotifications(Lcom/tonyodev/fetch2/FetchNotificationManager;)V

    :cond_2
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->stop()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->removeNamespaceInstanceReference(Ljava/lang/String;)V

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public delete(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lpf/S;->x2(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->deleteDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public deleteAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->deleteDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public deleteAllInGroupWithStatus(ILjava/util/List;)Ljava/util/List;
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Status;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getDownloadsInGroupWithStatus(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->deleteDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public deleteAllWithStatus(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Status;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByStatus(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->deleteDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public deleteGroup(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByGroup(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->deleteDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public enableLogging(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable logging - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2core/Logger;->setEnabled(Z)V

    return-void
.end method

.method public enqueue(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Request;",
            ">;)",
            "Ljava/util/List<",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/Download;",
            "Lcom/tonyodev/fetch2/Error;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->enqueueRequests(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public enqueue(Lcom/tonyodev/fetch2/Request;)Lnf/Z;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Request;",
            ")",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/Download;",
            "Lcom/tonyodev/fetch2/Error;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->enqueueRequests(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lpf/S;->G2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnf/Z;

    return-object p1
.end method

.method public enqueueBatch(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Request;",
            ">;)",
            "Ljava/util/List<",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/Request;

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;->toDownloadInfo(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->prepareDownloadInfoForEnqueue(Lcom/tonyodev/fetch2/database/DownloadInfo;)Z

    move-result v3

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/RequestInfo;->getDownloadOnEnqueue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/tonyodev/fetch2/Status;->ADDED:Lcom/tonyodev/fetch2/Status;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v1

    sget-object v4, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-eq v1, v4, :cond_0

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    return-object p1
.end method

.method public enqueueCompletedDownload(Lcom/tonyodev/fetch2/CompletedDownload;)Lcom/tonyodev/fetch2/Download;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/CompletedDownload;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "completedDownload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->enqueueCompletedDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lpf/S;->G2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tonyodev/fetch2/Download;

    return-object p1
.end method

.method public enqueueCompletedDownloads(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/CompletedDownload;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "completedDownloads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lpf/I;->d0(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/CompletedDownload;

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;->toDownloadInfo(Lcom/tonyodev/fetch2/CompletedDownload;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    sget-object v2, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-direct {p0, v1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->prepareCompletedDownloadInfoForEnqueue(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v2, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)Lnf/Z;

    move-result-object v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {v1}, Lnf/Z;->e()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enqueued CompletedDownload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnf/Z;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public freeze()V
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->pause()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->cancelAll()V

    return-void
.end method

.method public getAllGroupIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getAllGroupIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContentLengthForRequest(Lcom/tonyodev/fetch2/Request;Z)J
    .locals 5
    .param p1    # Lcom/tonyodev/fetch2/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/Request;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide p1

    return-wide p1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/Request;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->isFetchFileServerUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    invoke-static {p1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getServerRequestFromRequest(Lcom/tonyodev/fetch2/Request;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/tonyodev/fetch2core/Downloader;->getRequestContentLength(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-static {p1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getServerRequestFromRequest(Lcom/tonyodev/fetch2/Request;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/tonyodev/fetch2core/Downloader;->getRequestContentLength(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)J

    move-result-wide p1

    goto :goto_0

    :cond_2
    const-wide/16 p1, -0x1

    :goto_0
    return-wide p1
.end method

.method public getDownload(I)Lcom/tonyodev/fetch2/Download;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadBlocks(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2core/DownloadBlock;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->getDownloadFileTempDir(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1, v0}, Lcom/tonyodev/fetch2/util/FetchUtils;->getPreviousSliceCount(ILjava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/tonyodev/fetch2/util/FetchUtils;->getFileSliceInfo(IJ)Lcom/tonyodev/fetch2core/FileSliceInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getSlicingCount()I

    move-result v2

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_1

    new-instance v0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-direct {v0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;-><init>()V

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadId(I)V

    invoke-virtual {v0, v6}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setBlockPosition(I)V

    invoke-virtual {v0, v4, v5}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setStartByte(J)V

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    invoke-static {v0}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getSlicingCount()I

    move-result v3

    if-gt v6, v3, :cond_3

    :goto_0
    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getSlicingCount()I

    move-result v7

    if-ne v7, v6, :cond_2

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v7

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/FileSliceInfo;->getBytesPerFileSlice()J

    move-result-wide v7

    add-long/2addr v7, v4

    :goto_1
    new-instance v9, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-direct {v9}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;-><init>()V

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadId(I)V

    invoke-virtual {v9, v6}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setBlockPosition(I)V

    invoke-virtual {v9, v4, v5}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setStartByte(J)V

    invoke-virtual {v9, v7, v8}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v4

    invoke-static {v4, v6, v0}, Lcom/tonyodev/fetch2/util/FetchUtils;->getSavedDownloadedInfo(IILjava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v6, v3, :cond_3

    add-int/lit8 v6, v6, 0x1

    move-wide v4, v7

    goto :goto_0

    :cond_3
    move-object p1, v2

    :goto_2
    return-object p1

    :cond_4
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloads(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "idList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lpf/S;->x2(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadsByRequestIdentifier(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getDownloadsByRequestIdentifier(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadsByTag(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getDownloadsByTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadsInGroup(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByGroup(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadsInGroupWithStatus(ILjava/util/List;)Ljava/util/List;
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Status;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getDownloadsInGroupWithStatus(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadsWithStatus(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Status;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByStatus(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadsWithStatus(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Status;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByStatus(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFetchFileServerCatalog(Lcom/tonyodev/fetch2/Request;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Request;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2core/FileResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    invoke-static {p1}, Lcom/tonyodev/fetch2/util/FetchUtils;->getCatalogServerRequestFromRequest(Lcom/tonyodev/fetch2/Request;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2core/FileServerDownloader;->getFetchFileServerCatalog(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFetchGroup(I)Lcom/tonyodev/fetch2/FetchGroup;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    sget-object v1, Lcom/tonyodev/fetch2core/Reason;->OBSERVER_ATTACHED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v0, p1, v1}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupInfo(ILcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/model/FetchGroupInfo;

    move-result-object p1

    return-object p1
.end method

.method public getListenerSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tonyodev/fetch2/FetchListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lpf/S;->f6(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getPendingCount()J
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getPendingCount(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServerResponse(Ljava/lang/String;Ljava/util/Map;)Lcom/tonyodev/fetch2core/Downloader$Response;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tonyodev/fetch2core/Downloader$Response;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tonyodev/fetch2/Request;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/tonyodev/fetch2/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/tonyodev/fetch2/RequestInfo;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/tonyodev/fetch2/util/FetchUtils;->getServerRequestFromRequest(Lcom/tonyodev/fetch2/Request;)Lcom/tonyodev/fetch2core/Downloader$ServerRequest;

    move-result-object p1

    new-instance p2, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$getServerResponse$interruptMonitor$1;

    invoke-direct {p2}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl$getServerResponse$interruptMonitor$1;-><init>()V

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->isFetchFileServerUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    invoke-interface {v0, p1, p2}, Lcom/tonyodev/fetch2core/Downloader;->execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->copyDownloadResponseNoStream(Lcom/tonyodev/fetch2core/Downloader$Response;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object p2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fileServerDownloader:Lcom/tonyodev/fetch2core/FileServerDownloader;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, p1, p2}, Lcom/tonyodev/fetch2core/Downloader;->execute(Lcom/tonyodev/fetch2core/Downloader$ServerRequest;Lcom/tonyodev/fetch2core/InterruptMonitor;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->copyDownloadResponseNoStream(Lcom/tonyodev/fetch2core/Downloader$Response;)Lcom/tonyodev/fetch2core/Downloader$Response;

    move-result-object p2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->httpDownloader:Lcom/tonyodev/fetch2core/Downloader;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2core/Downloader;->disconnect(Lcom/tonyodev/fetch2core/Downloader$Response;)V

    return-object p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "request_not_successful"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasActiveDownloads(Z)Z
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getPendingCount(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v0, "blocking_call_on_ui_thread"

    invoke-direct {p1, v0}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchNotificationManager:Lcom/tonyodev/fetch2/FetchNotificationManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->addNotificationManager(Lcom/tonyodev/fetch2/FetchNotificationManager;)V

    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->sanitizeOnFirstEntry()V

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->autoStart:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->start()V

    :cond_1
    return-void
.end method

.method public pause(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lpf/S;->x2(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->pauseDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public pauseAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->pauseDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public pausedGroup(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByGroup(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->pauseDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lpf/S;->x2(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->removeDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->removeDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAllInGroupWithStatus(ILjava/util/List;)Ljava/util/List;
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Status;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getDownloadsInGroupWithStatus(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->removeDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAllWithStatus(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Status;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByStatus(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->removeDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeFetchObserversForDownload(I[Lcom/tonyodev/fetch2core/FetchObserver;)V
    .locals 2
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/tonyodev/fetch2core/FetchObserver;

    invoke-virtual {v0, p1, p2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->removeFetchObserversForDownload(I[Lcom/tonyodev/fetch2core/FetchObserver;)V

    return-void
.end method

.method public removeGroup(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByGroup(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->removeDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lcom/tonyodev/fetch2/FetchListener;)V
    .locals 4
    .param p1    # Lcom/tonyodev/fetch2/FetchListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/FetchListener;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerId:I

    invoke-virtual {v1, v2, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->removeListener(ILcom/tonyodev/fetch2/FetchListener;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public renameCompletedDownloadFile(ILjava/lang/String;)Lcom/tonyodev/fetch2/Download;
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "newFileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    sget-object v1, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;->toDownloadInfo(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getUniqueId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    invoke-virtual {v0, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)Lnf/Z;

    move-result-object v1

    invoke-virtual {v1}, Lnf/Z;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "file_cannot_be_renamed"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->storageResolver:Lcom/tonyodev/fetch2core/StorageResolver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p2}, Lcom/tonyodev/fetch2core/StorageResolver;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p2, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    invoke-virtual {v1}, Lnf/Z;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tonyodev/fetch2/Download;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    invoke-direct {p1, v3}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    invoke-direct {p1, v3}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string p2, "request_with_file_path_already_exist"

    invoke-direct {p1, p2}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string p2, "cannot rename file associated with incomplete download"

    invoke-direct {p1, p2}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string p2, "request_does_not_exist"

    invoke-direct {p1, p2}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/Download;
    .locals 2
    .param p2    # Lcom/tonyodev/fetch2core/Extras;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    :cond_0
    const-string v1, "request_does_not_exist"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->updateExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    invoke-direct {p1, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    invoke-direct {p1, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetAutoRetryAttempts(IZ)Lcom/tonyodev/fetch2/Download;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/tonyodev/fetch2/util/FetchUtils;->canRetryDownload(Lcom/tonyodev/fetch2/Download;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p2, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    :cond_1
    return-object p1
.end method

.method public resume(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->resumeDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public resumeAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lpf/I;->d0(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->resumeDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resumeGroup(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getByGroup(I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lpf/I;->d0(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->resumeDownloads(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public retry(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lpf/S;->x2(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-static {v1}, Lcom/tonyodev/fetch2/util/FetchUtils;->canRetryDownload(Lcom/tonyodev/fetch2/Download;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    return-object v0
.end method

.method public setDownloadConcurrentLimit(I)V
    .locals 4

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->stop()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->getActiveDownloadsIds()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lpf/S;->x2(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lpf/S;->x2(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->setConcurrentLimit(I)V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->setDownloadConcurrentLimit(I)V

    move-object p1, v0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v2

    sget-object v3, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->start()V

    return-void
.end method

.method public setGlobalNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V
    .locals 4
    .param p1    # Lcom/tonyodev/fetch2/NetworkType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->stop()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0, p1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->setGlobalNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->getActiveDownloadsIds()Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lpf/S;->x2(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lpf/S;->x2(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v2

    sget-object v3, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->start()V

    return-void
.end method

.method public unfreeze()V
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->priorityListProcessor:Lcom/tonyodev/fetch2/helper/PriorityListProcessor;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessor;->resume()V

    return-void
.end method

.method public updateRequest(ILcom/tonyodev/fetch2/Request;)Lnf/Z;
    .locals 3
    .param p2    # Lcom/tonyodev/fetch2/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2/Request;",
            ")",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/Download;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "newRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->cancelDownloadsIfDownloading(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/Request;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;->toDownloadInfo(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->namespace:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getDownloaded()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getTotal()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object p2

    sget-object v1, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    if-ne p2, v1, :cond_1

    sget-object p2, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNoError()Lcom/tonyodev/fetch2/Error;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->getError()Lcom/tonyodev/fetch2/Error;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    :goto_0
    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p2, v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/tonyodev/fetch2/FetchListener;->onDeleted(Lcom/tonyodev/fetch2/Download;)V

    iget-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {p2, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)Lnf/Z;

    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->startPriorityQueueIfNotStarted()V

    new-instance p2, Lnf/Z;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p2, p1, v0}, Lnf/Z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->delete(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/tonyodev/fetch2/fetch/FetchHandlerImpl;->enqueue(Lcom/tonyodev/fetch2/Request;)Lnf/Z;

    move-result-object p1

    new-instance p2, Lnf/Z;

    invoke-virtual {p1}, Lnf/Z;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lnf/Z;->f()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lnf/Z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_4
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string p2, "request_does_not_exist"

    invoke-direct {p1, p2}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
