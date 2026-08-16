.class public final Lcom/tonyodev/fetch2/util/NotificationUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationUtils.kt\ncom/tonyodev/fetch2/util/NotificationUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,57:1\n1477#2:58\n1502#2,3:59\n1505#2,3:69\n1549#2:73\n1620#2,3:74\n372#3,7:62\n215#4:72\n216#4:77\n*S KotlinDebug\n*F\n+ 1 NotificationUtils.kt\ncom/tonyodev/fetch2/util/NotificationUtilsKt\n*L\n35#1:58\n35#1:59,3\n35#1:69,3\n37#1:73\n37#1:74,3\n35#1:62,7\n35#1:72\n35#1:77\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nNotificationUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationUtils.kt\ncom/tonyodev/fetch2/util/NotificationUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,57:1\n1477#2:58\n1502#2,3:59\n1505#2,3:69\n1549#2:73\n1620#2,3:74\n372#3,7:62\n215#4:72\n216#4:77\n*S KotlinDebug\n*F\n+ 1 NotificationUtils.kt\ncom/tonyodev/fetch2/util/NotificationUtilsKt\n*L\n35#1:58\n35#1:59,3\n35#1:69,3\n37#1:73\n37#1:74,3\n35#1:62,7\n35#1:72\n35#1:77\n*E\n"
    }
.end annotation


# direct methods
.method public static final onDownloadNotificationActionTriggered(Landroid/content/Context;Landroid/content/Intent;Lcom/tonyodev/fetch2/FetchNotificationManager;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/FetchNotificationManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fetchNotificationManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    const-string p0, "com.tonyodev.fetch2.extra.NAMESPACE"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.tonyodev.fetch2.extra.DOWNLOAD_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "com.tonyodev.fetch2.extra.ACTION_TYPE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "com.tonyodev.fetch2.extra.NOTIFICATION_ID"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v3, "com.tonyodev.fetch2.extra.NOTIFICATION_GROUP_ID"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "com.tonyodev.fetch2.extra.GROUP_ACTION"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "con.tonyodev.fetch2.extra.DOWNLOAD_NOTIFICATIONS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p1

    :cond_0
    if-nez v4, :cond_7

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eq v0, v1, :cond_c

    if-eq v2, v1, :cond_c

    invoke-interface {p2, p0}, Lcom/tonyodev/fetch2/FetchNotificationManager;->getFetchInstanceForNamespace(Ljava/lang/String;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p0

    invoke-interface {p0}, Lcom/tonyodev/fetch2/Fetch;->isClosed()Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz v2, :cond_6

    const/4 p1, 0x1

    if-eq v2, p1, :cond_5

    const/4 p1, 0x2

    if-eq v2, p1, :cond_4

    const/4 p1, 0x4

    if-eq v2, p1, :cond_3

    const/4 p1, 0x5

    if-eq v2, p1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-interface {p0, v0}, Lcom/tonyodev/fetch2/Fetch;->retry(I)Lcom/tonyodev/fetch2/Fetch;

    goto/16 :goto_3

    :cond_3
    invoke-interface {p0, v0}, Lcom/tonyodev/fetch2/Fetch;->cancel(I)Lcom/tonyodev/fetch2/Fetch;

    goto/16 :goto_3

    :cond_4
    invoke-interface {p0, v0}, Lcom/tonyodev/fetch2/Fetch;->delete(I)Lcom/tonyodev/fetch2/Fetch;

    goto/16 :goto_3

    :cond_5
    invoke-interface {p0, v0}, Lcom/tonyodev/fetch2/Fetch;->resume(I)Lcom/tonyodev/fetch2/Fetch;

    goto/16 :goto_3

    :cond_6
    invoke-interface {p0, v0}, Lcom/tonyodev/fetch2/Fetch;->pause(I)Lcom/tonyodev/fetch2/Fetch;

    goto/16 :goto_3

    :cond_7
    if-eq v3, v1, :cond_c

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tonyodev/fetch2/DownloadNotification;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2/DownloadNotification;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lpf/I;->d0(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonyodev/fetch2/DownloadNotification;

    invoke-virtual {v3}, Lcom/tonyodev/fetch2/DownloadNotification;->getNotificationId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-interface {p2, v0}, Lcom/tonyodev/fetch2/FetchNotificationManager;->getFetchInstanceForNamespace(Ljava/lang/String;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p1

    invoke-interface {p1}, Lcom/tonyodev/fetch2/Fetch;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {p1, v1}, Lcom/tonyodev/fetch2/Fetch;->retry(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;

    goto :goto_1

    :pswitch_1
    invoke-interface {p1, v1}, Lcom/tonyodev/fetch2/Fetch;->delete(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;

    goto :goto_1

    :pswitch_2
    invoke-interface {p1, v1}, Lcom/tonyodev/fetch2/Fetch;->cancel(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;

    goto :goto_1

    :pswitch_3
    invoke-interface {p1, v1}, Lcom/tonyodev/fetch2/Fetch;->resume(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;

    goto :goto_1

    :pswitch_4
    invoke-interface {p1, v1}, Lcom/tonyodev/fetch2/Fetch;->pause(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;

    goto :goto_1

    :cond_c
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
