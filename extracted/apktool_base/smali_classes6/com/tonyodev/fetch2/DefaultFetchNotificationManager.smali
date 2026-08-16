.class public abstract Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/FetchNotificationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/DefaultFetchNotificationManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultFetchNotificationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultFetchNotificationManager.kt\ncom/tonyodev/fetch2/DefaultFetchNotificationManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,353:1\n766#2:354\n857#2,2:355\n*S KotlinDebug\n*F\n+ 1 DefaultFetchNotificationManager.kt\ncom/tonyodev/fetch2/DefaultFetchNotificationManager\n*L\n230#1:354\n230#1:355,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDefaultFetchNotificationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultFetchNotificationManager.kt\ncom/tonyodev/fetch2/DefaultFetchNotificationManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,353:1\n766#2:354\n857#2,2:355\n*S KotlinDebug\n*F\n+ 1 DefaultFetchNotificationManager.kt\ncom/tonyodev/fetch2/DefaultFetchNotificationManager\n*L\n230#1:354\n230#1:355,2\n*E\n"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final downloadNotificationExcludeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final downloadNotificationsBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final downloadNotificationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tonyodev/fetch2/DownloadNotification;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationManager:Landroid/app/NotificationManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationManagerAction:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->context:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsBuilderMap:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationExcludeSet:Ljava/util/Set;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEFAULT_FETCH2_NOTIFICATION_MANAGER_ACTION_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->notificationManagerAction:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->initialize()V

    return-void
.end method

.method private final getEtaText(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p2, v0

    const/16 v0, 0xe10

    int-to-long v0, v0

    div-long v2, p2, v0

    mul-long/2addr v0, v2

    sub-long/2addr p2, v0

    const/16 v0, 0x3c

    int-to-long v0, v0

    div-long v4, p2, v0

    mul-long/2addr v0, v4

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v6, v2, v0

    const-string v7, "getString(...)"

    if-lez v6, :cond_0

    sget v0, Lcom/tonyodev/fetch2/R$string;->fetch_notification_download_eta_hrs:I

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {v1, v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    sget v0, Lcom/tonyodev/fetch2/R$string;->fetch_notification_download_eta_min:I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/tonyodev/fetch2/R$string;->fetch_notification_download_eta_sec:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final initialize()V
    .locals 2

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->registerBroadcastReceiver()V

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0, v1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->createNotificationChannels(Landroid/content/Context;Landroid/app/NotificationManager;)V

    return-void
.end method


# virtual methods
.method public cancelNotification(I)V
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsBuilderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationExcludeSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/DownloadNotification;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/DownloadNotification;->getGroupId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->notify(I)V

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

.method public cancelOngoingNotifications()V
    .locals 5

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch2/DownloadNotification;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/DownloadNotification;->isFailed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/DownloadNotification;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v3, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsBuilderMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationExcludeSet:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v2}, Lcom/tonyodev/fetch2/DownloadNotification;->getGroupId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->notify(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public createNotificationChannels(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/NotificationManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/tonyodev/fetch2/R$string;->fetch_notification_default_channel_id:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-nez v2, :cond_0

    sget v2, Lcom/tonyodev/fetch2/R$string;->fetch_notification_default_channel_name:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public getActionPendingIntent(Lcom/tonyodev/fetch2/DownloadNotification;Lcom/tonyodev/fetch2/DownloadNotification$ActionType;)Landroid/app/PendingIntent;
    .locals 6
    .param p1    # Lcom/tonyodev/fetch2/DownloadNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/DownloadNotification$ActionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "downloadNotification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getNotificationManagerAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.tonyodev.fetch2.extra.NAMESPACE"

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/DownloadNotification;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.tonyodev.fetch2.extra.DOWNLOAD_ID"

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.tonyodev.fetch2.extra.NOTIFICATION_ID"

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.tonyodev.fetch2.extra.GROUP_ACTION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.tonyodev.fetch2.extra.NOTIFICATION_GROUP_ID"

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/DownloadNotification;->getGroupId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x4

    const/4 v4, 0x1

    if-eq p2, v4, :cond_2

    const/4 v5, 0x2

    if-eq p2, v5, :cond_1

    const/4 v5, 0x3

    if-eq p2, v5, :cond_0

    if-eq p2, v2, :cond_3

    const/4 v3, 0x5

    if-eq p2, v3, :cond_3

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v2

    :cond_3
    :goto_0
    const-string p2, "com.tonyodev.fetch2.extra.ACTION_TYPE"

    invoke-virtual {v1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result p1

    add-int/2addr p1, v3

    const/high16 v2, 0x8000000

    invoke-static {p2, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getBroadcast(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager$broadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager$broadcastReceiver$1;-><init>(Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;)V

    return-object v0
.end method

.method public getChannelId(ILandroid/content/Context;)Ljava/lang/String;
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/tonyodev/fetch2/R$string;->fetch_notification_default_channel_id:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDownloadNotificationTitle(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public abstract getFetchInstanceForNamespace(Ljava/lang/String;)Lcom/tonyodev/fetch2/Fetch;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getGroupActionPendingIntent(ILjava/util/List;Lcom/tonyodev/fetch2/DownloadNotification$ActionType;)Landroid/app/PendingIntent;
    .locals 4
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/DownloadNotification$ActionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/DownloadNotification;",
            ">;",
            "Lcom/tonyodev/fetch2/DownloadNotification$ActionType;",
            ")",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "downloadNotifications"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getNotificationManagerAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.tonyodev.fetch2.extra.NOTIFICATION_GROUP_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "con.tonyodev.fetch2.extra.DOWNLOAD_NOTIFICATIONS"

    new-instance v3, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Collection;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "com.tonyodev.fetch2.extra.GROUP_ACTION"

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p2, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    const/4 p2, -0x1

    goto :goto_0

    :pswitch_0
    const/16 p2, 0xa

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x6

    goto :goto_0

    :pswitch_2
    const/4 p2, 0x7

    goto :goto_0

    :pswitch_3
    const/16 p2, 0x9

    goto :goto_0

    :pswitch_4
    const/16 p2, 0x8

    :goto_0
    const-string p3, "com.tonyodev.fetch2.extra.ACTION_TYPE"

    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p3, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->context:Landroid/content/Context;

    add-int/2addr p1, p2

    const/high16 p2, 0x8000000

    invoke-static {p3, p1, v1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getBroadcast(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNotificationBuilder(II)Landroidx/core/app/NotificationCompat$Builder;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsBuilderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, v2}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getChannelId(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsBuilderMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-wide v4, 0x73df16000L

    invoke-virtual {p1, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x1080082

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public getNotificationManagerAction()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->notificationManagerAction:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTimeOutMillis()J
    .locals 2

    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public getSubtitleText(Landroid/content/Context;Lcom/tonyodev/fetch2/DownloadNotification;)Ljava/lang/String;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/DownloadNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadNotification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isCompleted()Z

    move-result v0

    const-string v1, "getString(...)"

    if-eqz v0, :cond_0

    sget p2, Lcom/tonyodev/fetch2/R$string;->fetch_notification_download_complete:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget p2, Lcom/tonyodev/fetch2/R$string;->fetch_notification_download_failed:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    sget p2, Lcom/tonyodev/fetch2/R$string;->fetch_notification_download_paused:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isQueued()Z

    move-result v0

    if-eqz v0, :cond_3

    sget p2, Lcom/tonyodev/fetch2/R$string;->fetch_notification_download_starting:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getEtaInMilliSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    sget p2, Lcom/tonyodev/fetch2/R$string;->fetch_notification_download_downloading:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getEtaInMilliSeconds()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getEtaText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public notify(I)V
    .locals 8

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/tonyodev/fetch2/DownloadNotification;

    invoke-virtual {v4}, Lcom/tonyodev/fetch2/DownloadNotification;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1, p1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getNotificationBuilder(II)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->updateGroupSummaryNotification(ILandroidx/core/app/NotificationCompat$Builder;Ljava/util/List;Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tonyodev/fetch2/DownloadNotification;

    invoke-virtual {p0, v4}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->shouldUpdateNotification(Lcom/tonyodev/fetch2/DownloadNotification;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result v5

    invoke-virtual {p0, v5, p1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getNotificationBuilder(II)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v6, v4, v7}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->updateNotification(Landroidx/core/app/NotificationCompat$Builder;Lcom/tonyodev/fetch2/DownloadNotification;Landroid/content/Context;)V

    iget-object v7, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {v4}, Lcom/tonyodev/fetch2/DownloadNotification;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v5

    sget-object v6, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationExcludeSet:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

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

.method public postDownloadUpdate(Lcom/tonyodev/fetch2/Download;)Z
    .locals 4
    .param p1    # Lcom/tonyodev/fetch2/Download;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "download"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsBuilderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/DownloadNotification;

    if-nez v1, :cond_1

    new-instance v1, Lcom/tonyodev/fetch2/DownloadNotification;

    invoke-direct {v1}, Lcom/tonyodev/fetch2/DownloadNotification;-><init>()V

    :cond_1
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getStatus()Lcom/tonyodev/fetch2/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification;->setProgress(I)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification;->setNotificationId(I)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification;->setGroupId(I)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getEtaInMilliSeconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tonyodev/fetch2/DownloadNotification;->setEtaInMilliSeconds(J)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getDownloadedBytesPerSecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tonyodev/fetch2/DownloadNotification;->setDownloadedBytesPerSecond(J)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getTotal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tonyodev/fetch2/DownloadNotification;->setTotal(J)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getDownloaded()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tonyodev/fetch2/DownloadNotification;->setDownloaded(J)V

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification;->setNamespace(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getDownloadNotificationTitle(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonyodev/fetch2/DownloadNotification;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationsMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationExcludeSet:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/DownloadNotification;->isFailed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/DownloadNotification;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationExcludeSet:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/DownloadNotification;->isCancelledNotification()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->shouldCancelNotification(Lcom/tonyodev/fetch2/DownloadNotification;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/tonyodev/fetch2/Download;->getGroup()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->notify(I)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->cancelNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public registerBroadcastReceiver()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getNotificationManagerAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getNotificationManagerAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public shouldCancelNotification(Lcom/tonyodev/fetch2/DownloadNotification;)Z
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/DownloadNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downloadNotification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/DownloadNotification;->isPaused()Z

    move-result p1

    return p1
.end method

.method public shouldUpdateNotification(Lcom/tonyodev/fetch2/DownloadNotification;)Z
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/DownloadNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downloadNotification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->downloadNotificationExcludeSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public unregisterBroadcastReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateGroupSummaryNotification(ILandroidx/core/app/NotificationCompat$Builder;Ljava/util/List;Landroid/content/Context;)Z
    .locals 5
    .param p2    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/DownloadNotification;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadNotifications"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch2/DownloadNotification;

    invoke-virtual {p0, p4, v1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getSubtitleText(Landroid/content/Context;Lcom/tonyodev/fetch2/DownloadNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/DownloadNotification;->getTotal()J

    move-result-wide v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const v1, 0x1080082

    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    sget v1, Lcom/tonyodev/fetch2/R$string;->fetch_notification_default_channel_name:I

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const-string p4, ""

    invoke-virtual {p2, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    return p3
.end method

.method public updateNotification(Landroidx/core/app/NotificationCompat$Builder;Lcom/tonyodev/fetch2/DownloadNotification;Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/DownloadNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "notificationBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadNotification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1080081

    goto :goto_0

    :cond_0
    const v0, 0x1080082

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0, p3, p2}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getSubtitleText(Landroid/content/Context;Lcom/tonyodev/fetch2/DownloadNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isOnGoingNotification()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getGroupId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isFailed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getProgressIndeterminate()Z

    move-result v0

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getProgressIndeterminate()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const/16 v2, 0x64

    :goto_1
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getProgress()I

    move-result v3

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->getProgress()I

    move-result v1

    :goto_2
    invoke-virtual {p1, v2, v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {p1, v1, v1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    :goto_4
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getNotificationTimeOutMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    sget v0, Lcom/tonyodev/fetch2/R$drawable;->fetch_notification_pause:I

    sget v1, Lcom/tonyodev/fetch2/R$string;->fetch_notification_download_pause:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->PAUSE:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    invoke-virtual {p0, p2, v2}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getActionPendingIntent(Lcom/tonyodev/fetch2/DownloadNotification;Lcom/tonyodev/fetch2/DownloadNotification$ActionType;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    sget v0, Lcom/tonyodev/fetch2/R$drawable;->fetch_notification_cancel:I

    sget v1, Lcom/tonyodev/fetch2/R$string;->fetch_notification_download_cancel:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->CANCEL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    invoke-virtual {p0, p2, v1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getActionPendingIntent(Lcom/tonyodev/fetch2/DownloadNotification;Lcom/tonyodev/fetch2/DownloadNotification$ActionType;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, v0, p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getNotificationTimeOutMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    sget v0, Lcom/tonyodev/fetch2/R$drawable;->fetch_notification_resume:I

    sget v1, Lcom/tonyodev/fetch2/R$string;->fetch_notification_download_resume:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->RESUME:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    invoke-virtual {p0, p2, v2}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getActionPendingIntent(Lcom/tonyodev/fetch2/DownloadNotification;Lcom/tonyodev/fetch2/DownloadNotification$ActionType;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    sget v0, Lcom/tonyodev/fetch2/R$drawable;->fetch_notification_cancel:I

    sget v1, Lcom/tonyodev/fetch2/R$string;->fetch_notification_download_cancel:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/tonyodev/fetch2/DownloadNotification$ActionType;->CANCEL:Lcom/tonyodev/fetch2/DownloadNotification$ActionType;

    invoke-virtual {p0, p2, v1}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getActionPendingIntent(Lcom/tonyodev/fetch2/DownloadNotification;Lcom/tonyodev/fetch2/DownloadNotification$ActionType;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, v0, p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Lcom/tonyodev/fetch2/DownloadNotification;->isQueued()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/DefaultFetchNotificationManager;->getNotificationTimeOutMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_5

    :cond_7
    const-wide p2, 0x73df16000L

    invoke-virtual {p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    :goto_5
    return-void
.end method
