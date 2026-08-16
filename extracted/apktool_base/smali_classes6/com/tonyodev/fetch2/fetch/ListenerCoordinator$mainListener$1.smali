.class public final Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/FetchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;-><init>(Ljava/lang/String;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Lcom/tonyodev/fetch2/provider/DownloadProvider;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListenerCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListenerCoordinator.kt\ncom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,770:1\n1855#2,2:771\n1855#2,2:773\n1855#2,2:775\n1855#2,2:777\n1855#2,2:779\n1855#2,2:781\n1855#2,2:783\n1855#2,2:785\n1855#2,2:787\n1855#2,2:789\n1855#2,2:791\n1855#2,2:793\n1855#2,2:795\n1855#2,2:797\n1855#2,2:799\n1855#2,2:801\n1855#2,2:803\n1855#2,2:805\n1855#2,2:807\n1855#2,2:809\n1855#2,2:811\n1855#2,2:813\n1855#2,2:815\n1855#2,2:817\n1855#2,2:819\n1855#2,2:821\n1855#2,2:823\n1855#2,2:825\n1855#2,2:827\n1855#2,2:829\n1855#2,2:831\n1855#2,2:833\n1855#2,2:835\n1855#2,2:837\n1855#2,2:839\n1855#2,2:841\n1855#2,2:843\n1855#2,2:845\n*S KotlinDebug\n*F\n+ 1 ListenerCoordinator.kt\ncom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1\n*L\n97#1:771,2\n113#1:773,2\n130#1:775,2\n143#1:777,2\n159#1:779,2\n174#1:781,2\n187#1:783,2\n203#1:785,2\n218#1:787,2\n238#1:789,2\n254#1:791,2\n269#1:793,2\n289#1:795,2\n305#1:797,2\n320#1:799,2\n333#1:801,2\n347#1:803,2\n371#1:805,2\n387#1:807,2\n402#1:809,2\n422#1:811,2\n438#1:813,2\n453#1:815,2\n473#1:817,2\n489#1:819,2\n504#1:821,2\n524#1:823,2\n540#1:825,2\n555#1:827,2\n575#1:829,2\n591#1:831,2\n606#1:833,2\n626#1:835,2\n642#1:837,2\n657#1:839,2\n677#1:841,2\n693#1:843,2\n708#1:845,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nListenerCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListenerCoordinator.kt\ncom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,770:1\n1855#2,2:771\n1855#2,2:773\n1855#2,2:775\n1855#2,2:777\n1855#2,2:779\n1855#2,2:781\n1855#2,2:783\n1855#2,2:785\n1855#2,2:787\n1855#2,2:789\n1855#2,2:791\n1855#2,2:793\n1855#2,2:795\n1855#2,2:797\n1855#2,2:799\n1855#2,2:801\n1855#2,2:803\n1855#2,2:805\n1855#2,2:807\n1855#2,2:809\n1855#2,2:811\n1855#2,2:813\n1855#2,2:815\n1855#2,2:817\n1855#2,2:819\n1855#2,2:821\n1855#2,2:823\n1855#2,2:825\n1855#2,2:827\n1855#2,2:829\n1855#2,2:831\n1855#2,2:833\n1855#2,2:835\n1855#2,2:837\n1855#2,2:839\n1855#2,2:841\n1855#2,2:843\n1855#2,2:845\n*S KotlinDebug\n*F\n+ 1 ListenerCoordinator.kt\ncom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1\n*L\n97#1:771,2\n113#1:773,2\n130#1:775,2\n143#1:777,2\n159#1:779,2\n174#1:781,2\n187#1:783,2\n203#1:785,2\n218#1:787,2\n238#1:789,2\n254#1:791,2\n269#1:793,2\n289#1:795,2\n305#1:797,2\n320#1:799,2\n333#1:801,2\n347#1:803,2\n371#1:805,2\n387#1:807,2\n402#1:809,2\n422#1:811,2\n438#1:813,2\n453#1:815,2\n473#1:817,2\n489#1:819,2\n504#1:821,2\n524#1:823,2\n540#1:825,2\n555#1:827,2\n575#1:829,2\n591#1:831,2\n606#1:833,2\n626#1:835,2\n642#1:837,2\n657#1:839,2\n677#1:841,2\n693#1:843,2\n708#1:845,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onQueued$lambda$12$lambda$8$lambda$7(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Z)V

    return-void
.end method

.method public static synthetic B(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onResumed$lambda$69$lambda$65$lambda$64(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic C(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onStarted$lambda$45$lambda$41$lambda$40(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic D(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onPaused$lambda$61$lambda$55(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic E(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onCompleted$lambda$26$lambda$22$lambda$21(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic F(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onCompleted$lambda$26$lambda$20(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic G(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onCancelled$lambda$77$lambda$76$lambda$75(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic H(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onError$lambda$34$lambda$30$lambda$29(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onError$lambda$34$lambda$28(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic b(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onResumed$lambda$69$lambda$63(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic c(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onStarted$lambda$45$lambda$39(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic d(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onCancelled$lambda$77$lambda$73$lambda$72(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic e(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onPaused$lambda$61$lambda$60$lambda$59(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic f(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onAdded$lambda$6$lambda$5$lambda$4(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic g(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onDeleted$lambda$93$lambda$92$lambda$91(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic h(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onCompleted$lambda$26$lambda$25$lambda$24(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic i(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onProgress$lambda$53$lambda$49$lambda$48(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;JJ)V

    return-void
.end method

.method public static synthetic j(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onPaused$lambda$61$lambda$57$lambda$56(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic k(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onDeleted$lambda$93$lambda$89$lambda$88(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic l(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onError$lambda$34$lambda$33$lambda$32(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic m(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onWaitingNetwork$lambda$18$lambda$14$lambda$13(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic n(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onStarted$lambda$45$lambda$44$lambda$43(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic o(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onResumed$lambda$69$lambda$68$lambda$67(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method private static final onAdded$lambda$6$lambda$1$lambda$0(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/FetchListener;->onAdded(Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method private static final onAdded$lambda$6$lambda$3$lambda$2(Lcom/tonyodev/fetch2/FetchGroupListener;ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fetchGroup"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/FetchGroupListener;->onAdded(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V

    return-void
.end method

.method private static final onAdded$lambda$6$lambda$5$lambda$4(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ADDED:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {p0, p1, v0}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    return-void
.end method

.method private static final onCancelled$lambda$77$lambda$71(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationManagerList$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/FetchNotificationManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/FetchNotificationManager;->postDownloadUpdate(Lcom/tonyodev/fetch2/Download;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static final onCancelled$lambda$77$lambda$73$lambda$72(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/FetchListener;->onCancelled(Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method private static final onCancelled$lambda$77$lambda$76$lambda$75(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_CANCELLED:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {p0, p1, v0}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    return-void
.end method

.method private static final onCompleted$lambda$26$lambda$20(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationManagerList$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/FetchNotificationManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/FetchNotificationManager;->postDownloadUpdate(Lcom/tonyodev/fetch2/Download;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static final onCompleted$lambda$26$lambda$22$lambda$21(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/FetchListener;->onCompleted(Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method private static final onCompleted$lambda$26$lambda$25$lambda$24(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_COMPLETED:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {p0, p1, v0}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    return-void
.end method

.method private static final onDeleted$lambda$93$lambda$87(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationManagerList$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/FetchNotificationManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/FetchNotificationManager;->postDownloadUpdate(Lcom/tonyodev/fetch2/Download;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static final onDeleted$lambda$93$lambda$89$lambda$88(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/FetchListener;->onDeleted(Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method private static final onDeleted$lambda$93$lambda$92$lambda$91(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_DELETED:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {p0, p1, v0}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    return-void
.end method

.method private static final onError$lambda$34$lambda$28(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationManagerList$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/FetchNotificationManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/FetchNotificationManager;->postDownloadUpdate(Lcom/tonyodev/fetch2/Download;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static final onError$lambda$34$lambda$30$lambda$29(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/FetchListener;->onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final onError$lambda$34$lambda$33$lambda$32(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ERROR:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {p0, p1, v0}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    return-void
.end method

.method private static final onPaused$lambda$61$lambda$55(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationManagerList$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/FetchNotificationManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/FetchNotificationManager;->postDownloadUpdate(Lcom/tonyodev/fetch2/Download;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static final onPaused$lambda$61$lambda$57$lambda$56(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/FetchListener;->onPaused(Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method private static final onPaused$lambda$61$lambda$60$lambda$59(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PAUSED:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {p0, p1, v0}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    return-void
.end method

.method private static final onProgress$lambda$53$lambda$47(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationManagerList$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/FetchNotificationManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/FetchNotificationManager;->postDownloadUpdate(Lcom/tonyodev/fetch2/Download;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static final onProgress$lambda$53$lambda$49$lambda$48(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;JJ)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p5}, Lcom/tonyodev/fetch2/FetchListener;->onProgress(Lcom/tonyodev/fetch2/Download;JJ)V

    return-void
.end method

.method private static final onProgress$lambda$53$lambda$52$lambda$51(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PROGRESS_CHANGED:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {p0, p1, v0}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    return-void
.end method

.method private static final onQueued$lambda$12$lambda$11$lambda$10(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_QUEUED:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {p0, p1, v0}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    return-void
.end method

.method private static final onQueued$lambda$12$lambda$8$lambda$7(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Z)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lcom/tonyodev/fetch2/FetchListener;->onQueued(Lcom/tonyodev/fetch2/Download;Z)V

    return-void
.end method

.method private static final onRemoved$lambda$85$lambda$79(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationManagerList$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/FetchNotificationManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/FetchNotificationManager;->postDownloadUpdate(Lcom/tonyodev/fetch2/Download;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static final onRemoved$lambda$85$lambda$81$lambda$80(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/FetchListener;->onRemoved(Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method private static final onRemoved$lambda$85$lambda$84$lambda$83(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_REMOVED:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {p0, p1, v0}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    return-void
.end method

.method private static final onResumed$lambda$69$lambda$63(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationManagerList$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/FetchNotificationManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/FetchNotificationManager;->postDownloadUpdate(Lcom/tonyodev/fetch2/Download;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static final onResumed$lambda$69$lambda$65$lambda$64(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/FetchListener;->onResumed(Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method private static final onResumed$lambda$69$lambda$68$lambda$67(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_RESUMED:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {p0, p1, v0}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    return-void
.end method

.method private static final onStarted$lambda$45$lambda$39(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationManagerList$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/FetchNotificationManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/FetchNotificationManager;->postDownloadUpdate(Lcom/tonyodev/fetch2/Download;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static final onStarted$lambda$45$lambda$41$lambda$40(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$downloadBlocks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/FetchListener;->onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V

    return-void
.end method

.method private static final onStarted$lambda$45$lambda$44$lambda$43(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_STARTED:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {p0, p1, v0}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    return-void
.end method

.method private static final onWaitingNetwork$lambda$18$lambda$14$lambda$13(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/tonyodev/fetch2/FetchListener;->onWaitingNetwork(Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method private static final onWaitingNetwork$lambda$18$lambda$17$lambda$16(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 1

    const-string v0, "$download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_WAITING_ON_NETWORK:Lcom/tonyodev/fetch2core/Reason;

    invoke-interface {p0, p1, v0}, Lcom/tonyodev/fetch2core/FetchObserver;->onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V

    return-void
.end method

.method public static synthetic p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onProgress$lambda$53$lambda$47(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic q(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onDeleted$lambda$93$lambda$87(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic r(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onProgress$lambda$53$lambda$52$lambda$51(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic s(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onQueued$lambda$12$lambda$11$lambda$10(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic t(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onRemoved$lambda$85$lambda$81$lambda$80(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic u(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onCancelled$lambda$77$lambda$71(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic v(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onWaitingNetwork$lambda$18$lambda$17$lambda$16(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic w(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onAdded$lambda$6$lambda$1$lambda$0(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic x(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onRemoved$lambda$85$lambda$84$lambda$83(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method

.method public static synthetic y(Lcom/tonyodev/fetch2/FetchGroupListener;ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onAdded$lambda$6$lambda$3$lambda$2(Lcom/tonyodev/fetch2/FetchGroupListener;ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V

    return-void
.end method

.method public static synthetic z(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->onRemoved$lambda$85$lambda$79(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    return-void
.end method


# virtual methods
.method public onAdded(Lcom/tonyodev/fetch2/Download;)V
    .locals 9
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tonyodev/fetch2/fetch/J0;

    invoke-direct {v6, v4, p1}, Lcom/tonyodev/fetch2/fetch/J0;-><init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ADDED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v3, v2, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v3

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/tonyodev/fetch2/fetch/K0;

    invoke-direct {v8, v6, v2, p1, v3}, Lcom/tonyodev/fetch2/fetch/K0;-><init>(Lcom/tonyodev/fetch2/FetchGroupListener;ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ADDED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v2, v3, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    :cond_6
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/tonyodev/fetch2/fetch/M0;

    invoke-direct {v5, v3, p1}, Lcom/tonyodev/fetch2/fetch/M0;-><init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public onCancelled(Lcom/tonyodev/fetch2/Download;)V
    .locals 7
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tonyodev/fetch2/fetch/S0;

    invoke-direct {v3, v1, p1}, Lcom/tonyodev/fetch2/fetch/S0;-><init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tonyodev/fetch2/fetch/T0;

    invoke-direct {v6, v4, p1}, Lcom/tonyodev/fetch2/fetch/T0;-><init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_CANCELLED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v3, v2, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v3

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-interface {v6, v2, p1, v3}, Lcom/tonyodev/fetch2/FetchGroupListener;->onCancelled(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_CANCELLED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v2, v3, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    :cond_6
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/tonyodev/fetch2/fetch/U0;

    invoke-direct {v5, v3, p1}, Lcom/tonyodev/fetch2/fetch/U0;-><init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public onCompleted(Lcom/tonyodev/fetch2/Download;)V
    .locals 7
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tonyodev/fetch2/fetch/t0;

    invoke-direct {v3, v1, p1}, Lcom/tonyodev/fetch2/fetch/t0;-><init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tonyodev/fetch2/fetch/u0;

    invoke-direct {v6, v4, p1}, Lcom/tonyodev/fetch2/fetch/u0;-><init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_COMPLETED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v3, v2, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v3

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-interface {v6, v2, p1, v3}, Lcom/tonyodev/fetch2/FetchGroupListener;->onCompleted(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_COMPLETED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v2, v3, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    :cond_6
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/tonyodev/fetch2/fetch/v0;

    invoke-direct {v5, v3, p1}, Lcom/tonyodev/fetch2/fetch/v0;-><init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public onDeleted(Lcom/tonyodev/fetch2/Download;)V
    .locals 7
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tonyodev/fetch2/fetch/w0;

    invoke-direct {v3, v1, p1}, Lcom/tonyodev/fetch2/fetch/w0;-><init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tonyodev/fetch2/fetch/x0;

    invoke-direct {v6, v4, p1}, Lcom/tonyodev/fetch2/fetch/x0;-><init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_DELETED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v3, v2, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v3

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-interface {v6, v2, p1, v3}, Lcom/tonyodev/fetch2/FetchGroupListener;->onDeleted(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_DELETED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v2, v3, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    :cond_6
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/tonyodev/fetch2/fetch/y0;

    invoke-direct {v5, v3, p1}, Lcom/tonyodev/fetch2/fetch/y0;-><init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V
    .locals 11
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2core/DownloadBlock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-interface {v4, p1, p2, p3}, Lcom/tonyodev/fetch2/FetchListener;->onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_BLOCK_UPDATED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v3, v2, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v9

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v3, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    move v4, v2

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, v9

    invoke-interface/range {v3 .. v8}, Lcom/tonyodev/fetch2/FetchGroupListener;->onDownloadBlockUpdated(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;ILcom/tonyodev/fetch2/FetchGroup;)V

    goto :goto_1

    :cond_5
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    .locals 12
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/Error;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tonyodev/fetch2/fetch/p0;

    invoke-direct {v3, v1, p1}, Lcom/tonyodev/fetch2/fetch/p0;-><init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tonyodev/fetch2/fetch/A0;

    invoke-direct {v6, v4, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/A0;-><init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ERROR:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v3, v2, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v9

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v3, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    move v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v9

    invoke-interface/range {v3 .. v8}, Lcom/tonyodev/fetch2/FetchGroupListener;->onError(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;Lcom/tonyodev/fetch2/FetchGroup;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object p2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result p3

    sget-object v2, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ERROR:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {p2, p3, p1, v2}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    :cond_6
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_9

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz p3, :cond_7

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tonyodev/fetch2/fetch/L0;

    invoke-direct {v3, p3, p1}, Lcom/tonyodev/fetch2/fetch/L0;-><init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public onPaused(Lcom/tonyodev/fetch2/Download;)V
    .locals 7
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tonyodev/fetch2/fetch/q0;

    invoke-direct {v3, v1, p1}, Lcom/tonyodev/fetch2/fetch/q0;-><init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tonyodev/fetch2/fetch/r0;

    invoke-direct {v6, v4, p1}, Lcom/tonyodev/fetch2/fetch/r0;-><init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PAUSED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v3, v2, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v3

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-interface {v6, v2, p1, v3}, Lcom/tonyodev/fetch2/FetchGroupListener;->onPaused(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PAUSED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v2, v3, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    :cond_6
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/tonyodev/fetch2/fetch/s0;

    invoke-direct {v5, v3, p1}, Lcom/tonyodev/fetch2/fetch/s0;-><init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public onProgress(Lcom/tonyodev/fetch2/Download;JJ)V
    .locals 16
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "download"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v2}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v1, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v10

    :try_start_0
    invoke-static {v11}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tonyodev/fetch2/fetch/z0;

    invoke-direct {v3, v11, v0}, Lcom/tonyodev/fetch2/fetch/z0;-><init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v11}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v3, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    invoke-static {v11}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/tonyodev/fetch2/fetch/B0;

    move-object v2, v14

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/tonyodev/fetch2/fetch/B0;-><init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;JJ)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v11}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface/range {p1 .. p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v12

    invoke-static {v11}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v2

    sget-object v3, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PROGRESS_CHANGED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v2, v12, v0, v3}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v13

    invoke-static {v11}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    move v3, v12

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-object v9, v13

    invoke-interface/range {v2 .. v9}, Lcom/tonyodev/fetch2/FetchGroupListener;->onProgress(ILcom/tonyodev/fetch2/Download;JJLcom/tonyodev/fetch2/FetchGroup;)V

    goto :goto_1

    :cond_5
    invoke-static {v11}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PROGRESS_CHANGED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v2, v3, v0, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    :cond_6
    invoke-static {v11}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz v3, :cond_7

    invoke-static {v11}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/tonyodev/fetch2/fetch/C0;

    invoke-direct {v5, v3, v0}, Lcom/tonyodev/fetch2/fetch/C0;-><init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    sget-object v0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v10

    return-void

    :goto_3
    monitor-exit v10

    throw v0
.end method

.method public onQueued(Lcom/tonyodev/fetch2/Download;Z)V
    .locals 7
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tonyodev/fetch2/fetch/V0;

    invoke-direct {v6, v4, p1, p2}, Lcom/tonyodev/fetch2/fetch/V0;-><init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_QUEUED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v3, v2, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v3

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-interface {v6, v2, p1, p2, v3}, Lcom/tonyodev/fetch2/FetchGroupListener;->onQueued(ILcom/tonyodev/fetch2/Download;ZLcom/tonyodev/fetch2/FetchGroup;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object p2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    sget-object v3, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_QUEUED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {p2, v2, p1, v3}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    :cond_6
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_9

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz v2, :cond_7

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/tonyodev/fetch2/fetch/W0;

    invoke-direct {v4, v2, p1}, Lcom/tonyodev/fetch2/fetch/W0;-><init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public onRemoved(Lcom/tonyodev/fetch2/Download;)V
    .locals 7
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tonyodev/fetch2/fetch/N0;

    invoke-direct {v3, v1, p1}, Lcom/tonyodev/fetch2/fetch/N0;-><init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tonyodev/fetch2/fetch/O0;

    invoke-direct {v6, v4, p1}, Lcom/tonyodev/fetch2/fetch/O0;-><init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_REMOVED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v3, v2, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v3

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-interface {v6, v2, p1, v3}, Lcom/tonyodev/fetch2/FetchGroupListener;->onRemoved(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_REMOVED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v2, v3, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    :cond_6
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/tonyodev/fetch2/fetch/P0;

    invoke-direct {v5, v3, p1}, Lcom/tonyodev/fetch2/fetch/P0;-><init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public onResumed(Lcom/tonyodev/fetch2/Download;)V
    .locals 7
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tonyodev/fetch2/fetch/G0;

    invoke-direct {v3, v1, p1}, Lcom/tonyodev/fetch2/fetch/G0;-><init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tonyodev/fetch2/fetch/H0;

    invoke-direct {v6, v4, p1}, Lcom/tonyodev/fetch2/fetch/H0;-><init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_RESUMED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v3, v2, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v3

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-interface {v6, v2, p1, v3}, Lcom/tonyodev/fetch2/FetchGroupListener;->onResumed(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_RESUMED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v2, v3, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    :cond_6
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/tonyodev/fetch2/fetch/I0;

    invoke-direct {v5, v3, p1}, Lcom/tonyodev/fetch2/fetch/I0;-><init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V
    .locals 12
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Download;",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2core/DownloadBlock;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadBlocks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchNotificationHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tonyodev/fetch2/fetch/D0;

    invoke-direct {v3, v1, p1}, Lcom/tonyodev/fetch2/fetch/D0;-><init>(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tonyodev/fetch2/fetch/E0;

    invoke-direct {v6, v4, p1, p2, p3}, Lcom/tonyodev/fetch2/fetch/E0;-><init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_STARTED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v3, v2, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v9

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v3, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    move v4, v2

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, v9

    invoke-interface/range {v3 .. v8}, Lcom/tonyodev/fetch2/FetchGroupListener;->onStarted(ILcom/tonyodev/fetch2/Download;Ljava/util/List;ILcom/tonyodev/fetch2/FetchGroup;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object p2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result p3

    sget-object v2, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_STARTED:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {p2, p3, p1, v2}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    :cond_6
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_9

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz p3, :cond_7

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tonyodev/fetch2/fetch/F0;

    invoke-direct {v3, p3, p1}, Lcom/tonyodev/fetch2/fetch/F0;-><init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public onWaitingNetwork(Lcom/tonyodev/fetch2/Download;)V
    .locals 7
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v0}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getLock$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator$mainListener$1;->this$0:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/FetchListener;

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tonyodev/fetch2/fetch/Q0;

    invoke-direct {v6, v4, p1}, Lcom/tonyodev/fetch2/fetch/Q0;-><init>(Lcom/tonyodev/fetch2/FetchListener;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_WAITING_ON_NETWORK:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v3, v2, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->getGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)Lcom/tonyodev/fetch2/FetchGroup;

    move-result-object v3

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getFetchGroupListenerMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tonyodev/fetch2/FetchGroupListener;

    if-nez v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-interface {v6, v2, p1, v3}, Lcom/tonyodev/fetch2/FetchGroupListener;->onWaitingNetwork(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/FetchGroup;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getGroupInfoProvider$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v3

    sget-object v4, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_WAITING_ON_NETWORK:Lcom/tonyodev/fetch2core/Reason;

    invoke-virtual {v2, v3, p1, v4}, Lcom/tonyodev/fetch2/provider/GroupInfoProvider;->postGroupReplace(ILcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/Reason;)V

    :cond_6
    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getDownloadsObserverMap$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2core/FetchObserver;

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;->access$getUiHandler$p(Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/tonyodev/fetch2/fetch/R0;

    invoke-direct {v5, v3, p1}, Lcom/tonyodev/fetch2/fetch/R0;-><init>(Lcom/tonyodev/fetch2core/FetchObserver;Lcom/tonyodev/fetch2/Download;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method
