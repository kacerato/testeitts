.class final Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/fetch/FetchImpl;->enqueueRequest(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/a<",
        "Lnf/P0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1305:1\n1655#2,8:1306\n1855#2,2:1314\n1549#2:1316\n1620#2,3:1317\n*S KotlinDebug\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1\n*L\n119#1:1306,8\n124#1:1314,2\n149#1:1316\n149#1:1317,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFetchImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1305:1\n1655#2,8:1306\n1855#2,2:1314\n1549#2:1316\n1620#2,3:1317\n*S KotlinDebug\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1\n*L\n119#1:1306,8\n124#1:1314,2\n149#1:1316\n149#1:1317,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $func:Lcom/tonyodev/fetch2core/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/Request;",
            "Lcom/tonyodev/fetch2/Error;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final synthetic $func2:Lcom/tonyodev/fetch2core/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Request;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/tonyodev/fetch2/fetch/FetchImpl;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Request;",
            ">;",
            "Lcom/tonyodev/fetch2/fetch/FetchImpl;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;",
            "Lcom/tonyodev/fetch2core/Func<",
            "Ljava/util/List<",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/Request;",
            "Lcom/tonyodev/fetch2/Error;",
            ">;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->$requests:Ljava/util/List;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->$func2:Lcom/tonyodev/fetch2core/Func;

    iput-object p4, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->$func:Lcom/tonyodev/fetch2core/Func;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method

.method public static synthetic b(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->invoke$lambda$4(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method

.method public static synthetic d(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->invoke$lambda$3(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    return-void
.end method

.method private static final invoke$lambda$3(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V
    .locals 4

    const-string v0, "$downloadPairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

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

    check-cast v1, Lnf/Z;

    new-instance v2, Lnf/Z;

    invoke-virtual {v1}, Lnf/Z;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getRequest()Lcom/tonyodev/fetch2/Request;

    move-result-object v3

    invoke-virtual {v1}, Lnf/Z;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lnf/Z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static final invoke$lambda$4(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V
    .locals 1

    const-string v0, "$error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2core/Func;->call(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->invoke()V

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->$requests:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    move-object v4, v3

    check-cast v4, Lcom/tonyodev/fetch2/Request;

    .line 7
    invoke-virtual {v4}, Lcom/tonyodev/fetch2/Request;->getFile()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 10
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->$requests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 12
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getFetchHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/FetchHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->$requests:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/tonyodev/fetch2/fetch/FetchHandler;->enqueue(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 13
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnf/Z;

    .line 15
    invoke-virtual {v3}, Lnf/Z;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    .line 16
    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v4

    sget-object v5, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    const-string v6, "Added "

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getListenerCoordinator$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/tonyodev/fetch2/FetchListener;->onCompleted(Lcom/tonyodev/fetch2/Download;)V

    .line 18
    invoke-static {v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getLogger$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2core/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Completed download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getFetchDatabaseManagerWrapper$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tonyodev/fetch2/util/FetchTypeConverterExtensions;->toDownloadInfo(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/database/DownloadInfo;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v4

    .line 20
    sget-object v5, Lcom/tonyodev/fetch2/Status;->ADDED:Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v4, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    .line 21
    invoke-static {v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getListenerCoordinator$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/tonyodev/fetch2/FetchListener;->onAdded(Lcom/tonyodev/fetch2/Download;)V

    .line 22
    invoke-static {v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getLogger$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2core/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    .line 23
    invoke-static {v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getListenerCoordinator$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/tonyodev/fetch2/FetchListener;->onQueued(Lcom/tonyodev/fetch2/Download;Z)V

    .line 24
    invoke-static {v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getLogger$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2core/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Queued "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for download"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 25
    :cond_4
    invoke-static {v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getListenerCoordinator$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->getMainListener()Lcom/tonyodev/fetch2/FetchListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/tonyodev/fetch2/FetchListener;->onAdded(Lcom/tonyodev/fetch2/Download;)V

    .line 26
    invoke-static {v2}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getLogger$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2core/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/tonyodev/fetch2core/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 27
    :cond_5
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->$func:Lcom/tonyodev/fetch2core/Func;

    new-instance v3, Lcom/tonyodev/fetch2/fetch/r;

    invoke-direct {v3, v2, v0}, Lcom/tonyodev/fetch2/fetch/r;-><init>(Lcom/tonyodev/fetch2core/Func;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 28
    :cond_6
    new-instance v0, Lcom/tonyodev/fetch2/exception/FetchException;

    const-string v1, "request_list_not_distinct"

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/exception/FetchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    :goto_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getLogger$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Lcom/tonyodev/fetch2core/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->$requests:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to enqueue list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tonyodev/fetch2core/Logger;->e(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    .line 32
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->$func2:Lcom/tonyodev/fetch2core/Func;

    if-eqz v0, :cond_7

    .line 33
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->this$0:Lcom/tonyodev/fetch2/fetch/FetchImpl;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/FetchImpl;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/FetchImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchImpl$enqueueRequest$1$1;->$func2:Lcom/tonyodev/fetch2core/Func;

    new-instance v3, Lcom/tonyodev/fetch2/fetch/s;

    invoke-direct {v3, v2, v1}, Lcom/tonyodev/fetch2/fetch/s;-><init>(Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2/Error;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_3
    return-void
.end method
