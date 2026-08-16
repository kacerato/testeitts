.class public Lcom/tonyodev/fetch2/fetch/FetchImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/Fetch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activeDownloadsRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final activeDownloadsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile closed:Z

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

.field private final uiHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->Companion:Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tonyodev/fetch2/FetchConfiguration;Lcom/tonyodev/fetch2core/HandlerWrapper;Landroid/os/Handler;Lcom/tonyodev/fetch2/fetch/FetchHandler;Lcom/tonyodev/fetch2core/Logger;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/FetchConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/HandlerWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/tonyodev/fetch2/fetch/FetchHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/tonyodev/fetch2core/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handlerWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenerCoordinator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchDatabaseManagerWrapper"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iput-object p4, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    iput-object p6, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    iput-object p7, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iput-object p8, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsSet:Ljava/util/Set;

    new-instance p1, Lcom/tonyodev/fetch2/fetch/h;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/fetch/h;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/tonyodev/fetch2/fetch/FetchImpl$1;

    invoke-direct {p1, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    invoke-virtual {p3, p1}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V

    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->registerActiveDownloadsRunnable()V

    return-void
.end method

.method public static synthetic a(Lcom/tonyodev/fetch2core/Func;)V
    .locals 0

    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueue$lambda$6$lambda$5(Lcom/tonyodev/fetch2core/Func;)V

    return-void
.end method

.method public static final synthetic access$getActiveDownloadsSet$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsSet:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getFetchDatabaseManagerWrapper$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    return-object p0
.end method

.method public static final synthetic access$getFetchHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/FetchHandler;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    return-object p0
.end method

.method public static final synthetic access$getListenerCoordinator$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2core/Logger;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    return-object p0
.end method

.method public static final synthetic access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static final activeDownloadsRunnable$lambda$2(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->hasActiveDownloads(Z)Z

    move-result v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->hasActiveDownloads(Z)Z

    move-result v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/tonyodev/fetch2/fetch/k;

    invoke-direct {v3, p0, v0, v1}, Lcom/tonyodev/fetch2/fetch/k;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static final activeDownloadsRunnable$lambda$2$lambda$1(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZZ)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;->getIncludeAddedDownloads()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, p1

    goto :goto_1

    :cond_0
    move v2, p2

    :goto_1
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/util/ActiveDownloadInfo;->getFetchObserver()Lcom/tonyodev/fetch2core/FetchObserver;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/tonyodev/fetch2core/Reason;->REPORTING:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {v1, v2, v3}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->registerActiveDownloadsRunnable()V

    :cond_2
    return-void
.end method

.method private static final addCompletedDownload$lambda$39(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lpf/S;->G2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/tonyodev/fetch2/Error;->COMPLETED_NOT_ADDED_SUCCESSFULLY:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/tonyodev/fetch2core/Func;Lnf/Z;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueue$lambda$6$lambda$3(Lcom/tonyodev/fetch2core/Func;Lnf/Z;)V

    return-void
.end method

.method public static synthetic c(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->cancel$lambda$21(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method private static final cancel$lambda$21(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lpf/S;->G2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pause$lambda$9(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method private static final delete$lambda$19(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lpf/S;->G2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/tonyodev/fetch2core/Func;Lnf/Z;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueue$lambda$6$lambda$4(Lcom/tonyodev/fetch2core/Func;Lnf/Z;)V

    return-void
.end method

.method private static final enqueue$lambda$6(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lpf/S;->G2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnf/Z;

    invoke-virtual {p3}, Lnf/Z;->f()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/tonyodev/fetch2/fetch/l;

    invoke-direct {p2, p1, p3}, Lcom/tonyodev/fetch2/fetch/l;-><init>(Lcom/tonyodev/fetch2core/Func;Lnf/Z;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p1, Lcom/tonyodev/fetch2/fetch/m;

    invoke-direct {p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/m;-><init>(Lcom/tonyodev/fetch2core/Func;Lnf/Z;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->uiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/tonyodev/fetch2/fetch/n;

    invoke-direct {p2, p1}, Lcom/tonyodev/fetch2/fetch/n;-><init>(Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private static final enqueue$lambda$6$lambda$3(Lcom/tonyodev/fetch2core/Func;Lnf/Z;)V
    .locals 1

    const-string v0, "$enqueuedPair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lnf/Z;->f()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final enqueue$lambda$6$lambda$4(Lcom/tonyodev/fetch2core/Func;Lnf/Z;)V
    .locals 1

    const-string v0, "$enqueuedPair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lnf/Z;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final enqueue$lambda$6$lambda$5(Lcom/tonyodev/fetch2core/Func;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/tonyodev/fetch2/Error;->ENQUEUE_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p0, v0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final enqueueRequest(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Request;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/Request;",
            "Lcom/tonyodev/fetch2/Error;",
            ">;>;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;

    invoke-direct {v2, p1, p0, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;-><init>(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final executeCancelAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeCancelAction$1$1;

    invoke-direct {v2, p1, p0, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeCancelAction$1$1;-><init>(LMf/a;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final executeDeleteAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;

    invoke-direct {v2, p1, p0, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeDeleteAction$1$1;-><init>(LMf/a;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final executeRemoveAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeRemoveAction$1$1;

    invoke-direct {v2, p1, p0, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$executeRemoveAction$1$1;-><init>(LMf/a;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public static synthetic f(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueue$lambda$6(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic g(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->addCompletedDownload$lambda$39(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic h(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsRunnable$lambda$2$lambda$1(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZZ)V

    return-void
.end method

.method public static synthetic i(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resume$lambda$14(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic j(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->remove$lambda$17(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->retry$lambda$25(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic l(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->delete$lambda$19(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V
    .locals 0

    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsRunnable$lambda$2(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    return-void
.end method

.method public static final newInstance(Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;)Lcom/tonyodev/fetch2/fetch/FetchImpl;
    .locals 1
    .param p0    # Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->Companion:Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;

    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$Companion;->newInstance(Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Modules;)Lcom/tonyodev/fetch2/fetch/FetchImpl;

    move-result-object p0

    return-object p0
.end method

.method private static final pause$lambda$9(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lpf/S;->G2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final pauseDownloads(Ljava/util/List;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v8, Lcom/tonyodev/fetch2/fetch/FetchImpl$pauseDownloads$1$1;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/tonyodev/fetch2/fetch/FetchImpl$pauseDownloads$1$1;-><init>(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v8}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final registerActiveDownloadsRunnable()V
    .locals 4

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/FetchConfiguration;->getActiveDownloadsCheckInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tonyodev/fetch2core/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final remove$lambda$17(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lpf/S;->G2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final resume$lambda$14(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lpf/S;->G2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final resumeDownloads(Ljava/util/List;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v8, Lcom/tonyodev/fetch2/fetch/FetchImpl$resumeDownloads$1$1;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/tonyodev/fetch2/fetch/FetchImpl$resumeDownloads$1$1;-><init>(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v8}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private static final retry$lambda$25(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 1

    const-string v0, "downloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lpf/S;->G2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    invoke-interface {p1, p0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final throwExceptionIfClosed()V
    .locals 2

    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v1, "This fetch instance has been closed. Create a new instance using the builder."

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addActiveDownloadsObserver(ZLcom/tonyodev/fetch2core/FetchObserver;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p2    # Lcom/tonyodev/fetch2core/FetchObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fetchObserver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$addActiveDownloadsObserver$1$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$addActiveDownloadsObserver$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/FetchObserver;Z)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public addCompletedDownload(Lcom/tonyodev/fetch2/CompletedDownload;ZLcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/CompletedDownload;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/CompletedDownload;",
            "Z",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "completedDownload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/f;

    invoke-direct {v0, p3, p4}, Lcom/tonyodev/fetch2/fetch/f;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->addCompletedDownloads(Ljava/util/List;ZLcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public addCompletedDownloads(Ljava/util/List;ZLcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/CompletedDownload;",
            ">;Z",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "completedDownloads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v8, Lcom/tonyodev/fetch2/fetch/FetchImpl$addCompletedDownloads$1$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/tonyodev/fetch2/fetch/FetchImpl$addCompletedDownloads$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;ZLcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v8}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public addListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/FetchListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->addListener(Lcom/tonyodev/fetch2/FetchListener;Z)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lcom/tonyodev/fetch2/FetchListener;Z)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/FetchListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->addListener(Lcom/tonyodev/fetch2/FetchListener;ZZ)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lcom/tonyodev/fetch2/FetchListener;ZZ)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2/FetchListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 5
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$addListener$1$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$addListener$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;ZZ)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public varargs attachFetchObserversForDownload(I[Lcom/tonyodev/fetch2core/FetchObserver;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p2    # [Lcom/tonyodev/fetch2core/FetchObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fetchObservers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$attachFetchObserversForDownload$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$attachFetchObserversForDownload$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;I[Lcom/tonyodev/fetch2core/FetchObserver;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public awaitFinish()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->awaitFinishOrTimeout(J)V

    return-void
.end method

.method public awaitFinishOrTimeout(J)V
    .locals 1

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-static {p1, p2, v0}, Lcom/tonyodev/fetch2/util/FetchUtils;->awaitFinishOrTimeout(JLcom/tonyodev/fetch2/fetch/FetchHandler;)V

    return-void
.end method

.method public cancel(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->cancel(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public cancel(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/g;

    invoke-direct {v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/g;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->cancel(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public cancel(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;
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
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->cancel(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public cancel(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$cancel$1;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$cancel$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeCancelAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public cancelAll()Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->cancelAll(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    return-object v0
.end method

.method public cancelAll(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$cancelAll$1;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$cancelAll$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeCancelAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public cancelGroup(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->cancelGroup(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public cancelGroup(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$cancelGroup$1;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$cancelGroup$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeCancelAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->closed:Z

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->logger:Lcom/tonyodev/fetch2core/Logger;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->getNamespace()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " closing/shutting down"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->activeDownloadsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$close$1$1;

    invoke-direct {v2, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$close$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V

    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public delete(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->delete(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public delete(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/i;

    invoke-direct {v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/i;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->delete(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;
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
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->delete(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$delete$1;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$delete$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeDeleteAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public deleteAll()Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->deleteAll(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$deleteAll$1;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$deleteAll$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeDeleteAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public deleteAllInGroupWithStatus(ILjava/util/List;)Lcom/tonyodev/fetch2/Fetch;
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
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->deleteAllInGroupWithStatus(ILjava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public deleteAllInGroupWithStatus(ILjava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Status;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$deleteAllInGroupWithStatus$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$deleteAllInGroupWithStatus$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILjava/util/List;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeDeleteAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public deleteAllWithStatus(Lcom/tonyodev/fetch2/Status;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->deleteAllWithStatus(Lcom/tonyodev/fetch2/Status;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public deleteAllWithStatus(Lcom/tonyodev/fetch2/Status;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Status;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$deleteAllWithStatus$1;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$deleteAllWithStatus$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/Status;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeDeleteAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public deleteGroup(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->deleteGroup(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public deleteGroup(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$deleteGroup$1;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$deleteGroup$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeDeleteAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public enableLogging(Z)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$enableLogging$1$1;

    invoke-direct {v2, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$enableLogging$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Z)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public enqueue(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Request;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Request;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/e;

    invoke-direct {v0, p0, p3, p2}, Lcom/tonyodev/fetch2/fetch/e;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueueRequest(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    return-object p0
.end method

.method public enqueue(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Request;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/Request;",
            "Lcom/tonyodev/fetch2/Error;",
            ">;>;>;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueueRequest(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    return-object p0
.end method

.method public enqueueBatch(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Request;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            "Ljava/lang/Boolean;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueBatch$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueBatch$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public freeze()Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->freeze(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    return-object v0
.end method

.method public freeze(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 3
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$freeze$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$freeze$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getAllGroupIds(Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getAllGroupIds$1$1;

    invoke-direct {v2, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getAllGroupIds$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getContentLengthForRequest(Lcom/tonyodev/fetch2/Request;ZLcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 9
    .param p1    # Lcom/tonyodev/fetch2/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Request;",
            "Z",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v8, Lcom/tonyodev/fetch2/fetch/FetchImpl$getContentLengthForRequest$1$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getContentLengthForRequest$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/Request;ZLcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v8}, Lcom/tonyodev/fetch2core/HandlerWrapper;->executeWorkerTask(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getContentLengthForRequests(Ljava/util/List;ZLcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Request;",
            ">;Z",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/Request;",
            "Ljava/lang/Long;",
            ">;>;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/Request;",
            "Lcom/tonyodev/fetch2/Error;",
            ">;>;>;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func2"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v8, Lcom/tonyodev/fetch2/fetch/FetchImpl$getContentLengthForRequests$1$1;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getContentLengthForRequests$1$1;-><init>(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;ZLcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v8}, Lcom/tonyodev/fetch2core/HandlerWrapper;->executeWorkerTask(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownload(ILcom/tonyodev/fetch2core/Func2;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p2    # Lcom/tonyodev/fetch2core/Func2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func2<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "func2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownload$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownload$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILcom/tonyodev/fetch2core/Func2;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownloadBlocks(ILcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2core/DownloadBlock;",
            ">;>;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadBlocks$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadBlocks$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownloads(Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 3
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloads$1$1;

    invoke-direct {v2, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloads$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownloads(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    const-string v0, "idList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 7
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloads$2$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloads$2$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownloadsByRequestIdentifier(JLcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "func"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadsByRequestIdentifier$1$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadsByRequestIdentifier$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;JLcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownloadsByTag(Ljava/lang/String;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadsByTag$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadsByTag$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/lang/String;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownloadsInGroup(ILcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadsInGroup$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadsInGroup$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownloadsInGroupWithStatus(ILjava/util/List;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Status;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadsInGroupWithStatus$1$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadsInGroupWithStatus$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILjava/util/List;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownloadsWithStatus(Lcom/tonyodev/fetch2/Status;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Status;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 3
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadsWithStatus$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadsWithStatus$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/Status;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownloadsWithStatus(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Status;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    const-string v0, "statuses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 7
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadsWithStatus$2$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getDownloadsWithStatus$2$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getFetchConfiguration()Lcom/tonyodev/fetch2/FetchConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchConfiguration:Lcom/tonyodev/fetch2/FetchConfiguration;

    return-object v0
.end method

.method public getFetchFileServerCatalog(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Request;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2core/FileResource;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getFetchFileServerCatalog$1$1;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getFetchFileServerCatalog$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->executeWorkerTask(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getFetchGroup(ILcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/FetchGroup;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$getFetchGroup$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getFetchGroup$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->fetchHandler:Lcom/tonyodev/fetch2/fetch/FetchHandler;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->getListenerSet()Ljava/util/Set;

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

.method public getNamespace()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getServerResponse(Ljava/lang/String;Ljava/util/Map;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2core/Func;
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
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2core/Downloader$Response;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v8, Lcom/tonyodev/fetch2/fetch/FetchImpl$getServerResponse$1$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/tonyodev/fetch2/fetch/FetchImpl$getServerResponse$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/lang/String;Ljava/util/Map;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v8}, Lcom/tonyodev/fetch2core/HandlerWrapper;->executeWorkerTask(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public hasActiveDownloads(ZLcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$hasActiveDownloads$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$hasActiveDownloads$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ZLcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public isClosed()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public pause(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pause(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public pause(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/c;

    invoke-direct {v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/c;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pause(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public pause(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;
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
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pause(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public pause(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pauseDownloads(Ljava/util/List;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    return-object p0
.end method

.method public pauseAll()Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$pauseAll$1$1;

    invoke-direct {v2, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$pauseAll$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V

    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public pauseGroup(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pauseGroup(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public pauseGroup(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->pauseDownloads(Ljava/util/List;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    return-object p0
.end method

.method public remove(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->remove(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public remove(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/b;

    invoke-direct {v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/b;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->remove(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;
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
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->remove(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$remove$1;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$remove$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeRemoveAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public removeActiveDownloadsObserver(Lcom/tonyodev/fetch2core/FetchObserver;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2core/FetchObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fetchObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeActiveDownloadsObserver$1$1;

    invoke-direct {v2, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeActiveDownloadsObserver$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/FetchObserver;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public removeAll()Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->removeAll(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeAll$1;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeAll$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeRemoveAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public removeAllInGroupWithStatus(ILjava/util/List;)Lcom/tonyodev/fetch2/Fetch;
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
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->removeAllInGroupWithStatus(ILjava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public removeAllInGroupWithStatus(ILjava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Status;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeAllInGroupWithStatus$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeAllInGroupWithStatus$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILjava/util/List;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeRemoveAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public removeAllWithStatus(Lcom/tonyodev/fetch2/Status;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->removeAllWithStatus(Lcom/tonyodev/fetch2/Status;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public removeAllWithStatus(Lcom/tonyodev/fetch2/Status;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Status;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeAllWithStatus$1;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeAllWithStatus$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/Status;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeRemoveAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeFetchObserversForDownload(I[Lcom/tonyodev/fetch2core/FetchObserver;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p2    # [Lcom/tonyodev/fetch2core/FetchObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fetchObservers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeFetchObserversForDownload$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeFetchObserversForDownload$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;I[Lcom/tonyodev/fetch2core/FetchObserver;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public removeGroup(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->removeGroup(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public removeGroup(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeGroup$1;

    invoke-direct {v0, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeGroup$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->executeRemoveAction(LMf/a;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2/FetchListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeListener$1$1;

    invoke-direct {v2, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$removeListener$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/FetchListener;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public renameCompletedDownloadFile(ILjava/lang/String;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "newFileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v8, Lcom/tonyodev/fetch2/fetch/FetchImpl$renameCompletedDownloadFile$1$1;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/tonyodev/fetch2/fetch/FetchImpl$renameCompletedDownloadFile$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILjava/lang/String;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v8}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public replaceExtras(ILcom/tonyodev/fetch2core/Extras;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 9
    .param p2    # Lcom/tonyodev/fetch2core/Extras;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Extras;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v8, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/tonyodev/fetch2/fetch/FetchImpl$replaceExtras$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILcom/tonyodev/fetch2core/Extras;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v8}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public resetAutoRetryAttempts(IZLcom/tonyodev/fetch2core/Func2;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 9
    .param p3    # Lcom/tonyodev/fetch2core/Func2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/tonyodev/fetch2core/Func2<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v8, Lcom/tonyodev/fetch2/fetch/FetchImpl$resetAutoRetryAttempts$1$1;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/tonyodev/fetch2/fetch/FetchImpl$resetAutoRetryAttempts$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;IZLcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func2;)V

    invoke-virtual {v1, v8}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public resume(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resume(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public resume(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/j;

    invoke-direct {v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/j;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resume(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public resume(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;
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
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resume(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public resume(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resumeDownloads(Ljava/util/List;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    return-object p0
.end method

.method public resumeAll()Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$resumeAll$1$1;

    invoke-direct {v2, p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$resumeAll$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V

    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public resumeGroup(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resumeGroup(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public resumeGroup(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->resumeDownloads(Ljava/util/List;Ljava/lang/Integer;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    return-object p0
.end method

.method public retry(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->retry(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public retry(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/tonyodev/fetch2/fetch/d;

    invoke-direct {v0, p2, p3}, Lcom/tonyodev/fetch2/fetch/d;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->retry(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public retry(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;
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
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->retry(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    return-object p1
.end method

.method public retry(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 3
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$retry$1$1;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$retry$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public setDownloadConcurrentLimit(I)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$setDownloadConcurrentLimit$1$1;

    invoke-direct {v2, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$setDownloadConcurrentLimit$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;I)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v1, "Concurrent limit cannot be less than 0"

    invoke-direct {p1, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public setGlobalNetworkType(Lcom/tonyodev/fetch2/NetworkType;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2/NetworkType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$setGlobalNetworkType$1$1;

    invoke-direct {v2, p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$setGlobalNetworkType$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2/NetworkType;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public unfreeze()Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->unfreeze(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    return-object v0
.end method

.method public unfreeze(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 3
    .param p1    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    .line 3
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v2, Lcom/tonyodev/fetch2/fetch/FetchImpl$unfreeze$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/FetchImpl$unfreeze$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public updateRequest(ILcom/tonyodev/fetch2/Request;ZLcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
    .locals 10
    .param p2    # Lcom/tonyodev/fetch2/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/tonyodev/fetch2core/Func;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tonyodev/fetch2/Request;",
            "Z",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;)",
            "Lcom/tonyodev/fetch2/Fetch;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "updatedRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->throwExceptionIfClosed()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    new-instance v9, Lcom/tonyodev/fetch2/fetch/FetchImpl$updateRequest$1$1;

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p5

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/tonyodev/fetch2/fetch/FetchImpl$updateRequest$1$1;-><init>(Lcom/tonyodev/fetch2/fetch/FetchImpl;ILcom/tonyodev/fetch2/Request;ZLcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V

    invoke-virtual {v1, v9}, Lcom/tonyodev/fetch2core/HandlerWrapper;->post(LMf/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
