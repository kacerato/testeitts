.class public final Lcom/tonyodev/fetch2/model/FetchGroupInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/FetchGroup;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchGroupInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchGroupInfo.kt\ncom/tonyodev/fetch2/model/FetchGroupInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,114:1\n766#2:115\n857#2,2:116\n766#2:118\n857#2,2:119\n766#2:121\n857#2,2:122\n766#2:124\n857#2,2:125\n766#2:127\n857#2,2:128\n766#2:130\n857#2,2:131\n766#2:133\n857#2,2:134\n766#2:136\n857#2,2:137\n766#2:139\n857#2,2:140\n1747#2,3:142\n32#3,2:145\n*S KotlinDebug\n*F\n+ 1 FetchGroupInfo.kt\ncom/tonyodev/fetch2/model/FetchGroupInfo\n*L\n21#1:115\n21#1:116,2\n22#1:118\n22#1:119,2\n23#1:121\n23#1:122,2\n24#1:124\n24#1:125,2\n25#1:127\n25#1:128,2\n26#1:130\n26#1:131,2\n27#1:133\n27#1:134,2\n28#1:136\n28#1:137,2\n29#1:139\n29#1:140,2\n68#1:142,3\n37#1:145,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFetchGroupInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchGroupInfo.kt\ncom/tonyodev/fetch2/model/FetchGroupInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,114:1\n766#2:115\n857#2,2:116\n766#2:118\n857#2,2:119\n766#2:121\n857#2,2:122\n766#2:124\n857#2,2:125\n766#2:127\n857#2,2:128\n766#2:130\n857#2,2:131\n766#2:133\n857#2,2:134\n766#2:136\n857#2,2:137\n766#2:139\n857#2,2:140\n1747#2,3:142\n32#3,2:145\n*S KotlinDebug\n*F\n+ 1 FetchGroupInfo.kt\ncom/tonyodev/fetch2/model/FetchGroupInfo\n*L\n21#1:115\n21#1:116,2\n22#1:118\n22#1:119,2\n23#1:121\n23#1:122,2\n24#1:124\n24#1:125,2\n25#1:127\n25#1:128,2\n26#1:130\n26#1:131,2\n27#1:133\n27#1:134,2\n28#1:136\n28#1:137,2\n29#1:139\n29#1:140,2\n68#1:142,3\n37#1:145,2\n*E\n"
    }
.end annotation


# instance fields
.field private addedDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cancelledDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private completedDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private deletedDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private downloadingDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile downloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private failedDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:I

.field private final namespace:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final observerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tonyodev/fetch2/FetchGroupObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pausedDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private queuedDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private removedDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "namespace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->id:I

    .line 2
    iput-object p2, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->namespace:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    .line 4
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->downloads:Ljava/util/List;

    .line 5
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->queuedDownloads:Ljava/util/List;

    .line 6
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->addedDownloads:Ljava/util/List;

    .line 7
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->pausedDownloads:Ljava/util/List;

    .line 8
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->downloadingDownloads:Ljava/util/List;

    .line 9
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->completedDownloads:Ljava/util/List;

    .line 10
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->cancelledDownloads:Ljava/util/List;

    .line 11
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->failedDownloads:Ljava/util/List;

    .line 12
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->deletedDownloads:Ljava/util/List;

    .line 13
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->removedDownloads:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/tonyodev/fetch2/model/FetchGroupInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->addFetchGroupObservers$lambda$15$lambda$14(Ljava/util/List;Lcom/tonyodev/fetch2/model/FetchGroupInfo;)V

    return-void
.end method

.method private static final addFetchGroupObservers$lambda$15$lambda$14(Ljava/util/List;Lcom/tonyodev/fetch2/model/FetchGroupInfo;)V
    .locals 3

    const-string v0, "$addedObservers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch2/FetchGroupObserver;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->getDownloads()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/tonyodev/fetch2core/Reason;->OBSERVER_ATTACHED:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {v0, v1, v2}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/tonyodev/fetch2/model/FetchGroupInfo;Ljava/util/List;Lcom/tonyodev/fetch2core/Reason;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->update$lambda$11(Lcom/tonyodev/fetch2/model/FetchGroupInfo;Ljava/util/List;Lcom/tonyodev/fetch2core/Reason;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method private static final update$lambda$11(Lcom/tonyodev/fetch2/model/FetchGroupInfo;Ljava/util/List;Lcom/tonyodev/fetch2core/Reason;Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$downloads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/FetchGroupObserver;

    invoke-interface {v1, p1, p2}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    if-eqz p3, :cond_0

    invoke-interface {v1, p1, p3, p2}, Lcom/tonyodev/fetch2/FetchGroupObserver;->onChanged(Ljava/util/List;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public varargs addFetchGroupObservers([Lcom/tonyodev/fetch2/FetchGroupObserver;)V
    .locals 4
    .param p1    # [Lcom/tonyodev/fetch2/FetchGroupObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fetchGroupObservers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lpf/A;->l9([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/FetchGroupObserver;

    iget-object v3, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->getMainUIHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, LQd/b;

    invoke-direct {v2, v1, p0}, LQd/b;-><init>(Ljava/util/List;Lcom/tonyodev/fetch2/model/FetchGroupInfo;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public getAddedDownloads()Ljava/util/List;
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->addedDownloads:Ljava/util/List;

    return-object v0
.end method

.method public getCancelledDownloads()Ljava/util/List;
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->cancelledDownloads:Ljava/util/List;

    return-object v0
.end method

.method public getCompletedDownloads()Ljava/util/List;
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->completedDownloads:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedDownloads()Ljava/util/List;
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->deletedDownloads:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadingDownloads()Ljava/util/List;
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->downloadingDownloads:Ljava/util/List;

    return-object v0
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->downloads:Ljava/util/List;

    return-object v0
.end method

.method public getFailedDownloads()Ljava/util/List;
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->failedDownloads:Ljava/util/List;

    return-object v0
.end method

.method public getGroupDownloadProgress()I
    .locals 8

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->getDownloads()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->getDownloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v6

    add-long/2addr v1, v6

    invoke-interface {v5}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_1

    :cond_3
    invoke-static {v1, v2, v3, v4}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->calculateProgress(JJ)I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->id:I

    return v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getObservers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tonyodev/fetch2core/FetchObserver<",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lpf/S;->e6(Ljava/lang/Iterable;)Ljava/util/Set;

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

.method public getPausedDownloads()Ljava/util/List;
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->pausedDownloads:Ljava/util/List;

    return-object v0
.end method

.method public getQueuedDownloads()Ljava/util/List;
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->queuedDownloads:Ljava/util/List;

    return-object v0
.end method

.method public getRemovedDownloads()Ljava/util/List;
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->removedDownloads:Ljava/util/List;

    return-object v0
.end method

.method public varargs removeFetchGroupObservers([Lcom/tonyodev/fetch2/FetchGroupObserver;)V
    .locals 5
    .param p1    # [Lcom/tonyodev/fetch2/FetchGroupObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fetchGroupObservers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->observerSet:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public setAddedDownloads(Ljava/util/List;)V
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
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->addedDownloads:Ljava/util/List;

    return-void
.end method

.method public setCancelledDownloads(Ljava/util/List;)V
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
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->cancelledDownloads:Ljava/util/List;

    return-void
.end method

.method public setCompletedDownloads(Ljava/util/List;)V
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
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->completedDownloads:Ljava/util/List;

    return-void
.end method

.method public setDeletedDownloads(Ljava/util/List;)V
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
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->deletedDownloads:Ljava/util/List;

    return-void
.end method

.method public setDownloadingDownloads(Ljava/util/List;)V
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
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->downloadingDownloads:Ljava/util/List;

    return-void
.end method

.method public setDownloads(Ljava/util/List;)V
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
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->downloads:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setQueuedDownloads(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->ADDED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setAddedDownloads(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->PAUSED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_4

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setPausedDownloads(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_6

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setDownloadingDownloads(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_8

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setCompletedDownloads(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->CANCELLED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_a

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setCancelledDownloads(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->FAILED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_c

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setFailedDownloads(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v3}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2/Status;->DELETED:Lcom/tonyodev/fetch2/Status;

    if-ne v3, v4, :cond_e

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setDeletedDownloads(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/tonyodev/fetch2/Download;

    invoke-interface {v2}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v2

    sget-object v3, Lcom/tonyodev/fetch2/Status;->REMOVED:Lcom/tonyodev/fetch2/Status;

    if-ne v2, v3, :cond_10

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    invoke-virtual {p0, v0}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setRemovedDownloads(Ljava/util/List;)V

    return-void
.end method

.method public setFailedDownloads(Ljava/util/List;)V
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
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->failedDownloads:Ljava/util/List;

    return-void
.end method

.method public setPausedDownloads(Ljava/util/List;)V
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
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->pausedDownloads:Ljava/util/List;

    return-void
.end method

.method public setQueuedDownloads(Ljava/util/List;)V
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
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->queuedDownloads:Ljava/util/List;

    return-void
.end method

.method public setRemovedDownloads(Ljava/util/List;)V
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
            "Lcom/tonyodev/fetch2/Download;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->removedDownloads:Ljava/util/List;

    return-void
.end method

.method public final update(Ljava/util/List;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2core/Reason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/Download;",
            ">;",
            "Lcom/tonyodev/fetch2/Download;",
            "Lcom/tonyodev/fetch2core/Reason;",
            ")V"
        }
    .end annotation

    const-string v0, "downloads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/model/FetchGroupInfo;->setDownloads(Ljava/util/List;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_BLOCK_UPDATED:Lcom/tonyodev/fetch2core/Reason;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->INSTANCE:Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;->getMainUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LQd/a;

    invoke-direct {v1, p0, p1, p3, p2}, LQd/a;-><init>(Lcom/tonyodev/fetch2/model/FetchGroupInfo;Ljava/util/List;Lcom/tonyodev/fetch2core/Reason;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
