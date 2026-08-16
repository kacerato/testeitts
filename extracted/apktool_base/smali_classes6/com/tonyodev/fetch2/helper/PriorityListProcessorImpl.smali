.class public final Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/helper/PriorityListProcessor;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnspecifiedRegisterReceiverFlag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tonyodev/fetch2/helper/PriorityListProcessor<",
        "Lcom/tonyodev/fetch2/Download;",
        ">;"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ONE_MINUTE_IN_MILLISECONDS:J = 0xea60L


# instance fields
.field private volatile backOffTime:J

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile downloadConcurrentLimit:I

.field private final downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;
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

.field private final lock:Ljava/lang/Object;
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

.field private final networkChangeListener:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile paused:Z

.field private final priorityBackoffResetReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final priorityIteratorRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final prioritySort:Lcom/tonyodev/fetch2/PrioritySort;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile stopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->Companion:Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/downloader/DownloadManager;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;Lcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;ILandroid/content/Context;Ljava/lang/String;Lcom/tonyodev/fetch2/PrioritySort;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/HandlerWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/provider/DownloadProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/downloader/DownloadManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/tonyodev/fetch2core/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/tonyodev/fetch2/PrioritySort;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "handlerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfoProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenerCoordinator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "namespace"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prioritySort"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iput-object p2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    iput-object p3, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    iput-object p4, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    iput-object p5, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    iput-object p6, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iput p7, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadConcurrentLimit:I

    iput-object p8, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->context:Landroid/content/Context;

    iput-object p9, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->namespace:Ljava/lang/String;

    iput-object p10, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    sget-object p1, Lcom/tonyodev/fetch2/NetworkType;->GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    const-wide/16 p1, 0x1f4

    iput-wide p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    new-instance p1, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$networkChangeListener$1;-><init>(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkChangeListener:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;

    new-instance p2, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$priorityBackoffResetReceiver$1;

    invoke-direct {p2, p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl$priorityBackoffResetReceiver$1;-><init>(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V

    iput-object p2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->priorityBackoffResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p4, p1}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->registerNetworkChangeListener(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x21

    const-string p4, "com.tonyodev.fetch2.action.QUEUE_BACKOFF_RESET"

    if-lt p1, p3, :cond_0

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x4

    invoke-virtual {p8, p2, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    new-instance p1, Lcom/tonyodev/fetch2/helper/a;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/helper/a;-><init>(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->priorityIteratorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V
    .locals 0

    invoke-static {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->priorityIteratorRunnable$lambda$0(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V

    return-void
.end method

.method public static final synthetic access$getBackOffTime$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    return-wide v0
.end method

.method public static final synthetic access$getHandlerWrapper$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Lcom/tonyodev/fetch2core/HandlerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    return-object p0
.end method

.method public static final synthetic access$getNamespace$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getNetworkInfoProvider$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    return-object p0
.end method

.method public static final synthetic access$getPaused$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    return p0
.end method

.method public static final synthetic access$getStopped$p(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    return p0
.end method

.method private final canContinueToProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final increaseBackOffTime()V
    .locals 5

    iget-wide v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PriorityIterator backoffTime increased to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " minute(s)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static final priorityIteratorRunnable$lambda$0(Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->canContinueToProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->canAccommodateNewDownload()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->canContinueToProcess()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->getPriorityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_9

    invoke-static {v0}, Lpf/H;->L(Ljava/util/List;)I

    move-result v1

    if-ltz v1, :cond_a

    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v5}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->canAccommodateNewDownload()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->canContinueToProcess()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->isFetchFileServerUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v7, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v7}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_2
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->canContinueToProcess()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->getGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    sget-object v8, Lcom/tonyodev/fetch2/NetworkType;->GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

    if-eq v7, v8, :cond_3

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->getGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    goto :goto_3

    :cond_3
    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    if-ne v7, v8, :cond_4

    sget-object v7, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v7

    :goto_3
    iget-object v8, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v8, v7}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->isOnAllowedNetwork(Lcom/tonyodev/fetch2/NetworkType;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v8, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v8}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/tonyodev/fetch2/FetchListener;->onWaitingNetwork(Lcom/tonyodev/fetch2/Download;)V

    :cond_5
    if-nez v6, :cond_6

    if-eqz v7, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v6

    invoke-interface {v2, v6}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->contains(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->canContinueToProcess()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v2, v5}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->start(Lcom/tonyodev/fetch2/Download;)Z

    :cond_7
    move v2, v3

    :cond_8
    if-eq v4, v1, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    move v2, v1

    :cond_a
    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->increaseBackOffTime()V

    :cond_b
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->canContinueToProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->registerPriorityIterator()V

    :cond_c
    return-void
.end method

.method private final registerPriorityIterator()V
    .locals 4

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->getDownloadConcurrentLimit()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->priorityIteratorRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tonyodev/fetch2core/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private final unregisterPriorityIterator()V
    .locals 2

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->getDownloadConcurrentLimit()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->priorityIteratorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2core/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->networkChangeListener:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;->unregisterNetworkChangeListener(Lcom/tonyodev/fetch2/provider/NetworkInfoProvider$NetworkChangeListener;)V

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->priorityBackoffResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

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

.method public getDownloadConcurrentLimit()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadConcurrentLimit:I

    return v0
.end method

.method public getGlobalNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method

.method public getPriorityList()Ljava/util/List;
    .locals 4
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->prioritySort:Lcom/tonyodev/fetch2/PrioritySort;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/provider/DownloadProvider;->getPendingDownloadsSorted(Lcom/tonyodev/fetch2/PrioritySort;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v3, "PriorityIterator failed access database"

    invoke-interface {v2, v3, v1}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    return v0
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->unregisterPriorityIterator()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->cancelAll()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v2, "PriorityIterator paused"

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

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

.method public resetBackOffTime()V
    .locals 6

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x1f4

    :try_start_0
    iput-wide v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->unregisterPriorityIterator()V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->registerPriorityIterator()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    iget-wide v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->backOffTime:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PriorityIterator backoffTime reset to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " milliseconds"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

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

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->resetBackOffTime()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->registerPriorityIterator()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v2, "PriorityIterator resumed"

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

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

.method public sendBackOffResetSignal()V
    .locals 4

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tonyodev.fetch2.action.QUEUE_BACKOFF_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.tonyodev.fetch2.extra.NAMESPACE"

    iget-object v3, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

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

.method public setDownloadConcurrentLimit(I)V
    .locals 0

    iput p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadConcurrentLimit:I

    return-void
.end method

.method public setGlobalNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/NetworkType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->globalNetworkType:Lcom/tonyodev/fetch2/NetworkType;

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->resetBackOffTime()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->registerPriorityIterator()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v2, "PriorityIterator started"

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

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

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->unregisterPriorityIterator()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->paused:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->stopped:Z

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->downloadManager:Lcom/tonyodev/fetch2/downloader/DownloadManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/downloader/DownloadManager;->cancelAll()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/helper/PriorityListProcessorImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    const-string v2, "PriorityIterator stop"

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

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
