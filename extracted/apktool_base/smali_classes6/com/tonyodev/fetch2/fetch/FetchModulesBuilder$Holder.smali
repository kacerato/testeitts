.class public final Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# instance fields
.field private final downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
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

.field private final uiHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2core/HandlerWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/provider/DownloadProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "handlerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchDatabaseManagerWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupInfoProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManagerCoordinator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenerCoordinator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfoProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iput-object p2, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    iput-object p3, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    iput-object p4, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    iput-object p5, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    iput-object p7, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iput-object p8, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    return-void
.end method

.method public static synthetic copy$default(Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;ILjava/lang/Object;)Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->copy(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/tonyodev/fetch2core/HandlerWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    return-object v0
.end method

.method public final component2()Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    return-object v0
.end method

.method public final component3()Lcom/tonyodev/fetch2/provider/DownloadProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    return-object v0
.end method

.method public final component4()Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    return-object v0
.end method

.method public final component5()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final component6()Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    return-object v0
.end method

.method public final component7()Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    return-object v0
.end method

.method public final component8()Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    return-object v0
.end method

.method public final copy(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;
    .locals 10
    .param p1    # Lcom/tonyodev/fetch2core/HandlerWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/tonyodev/fetch2/provider/DownloadProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "handlerWrapper"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchDatabaseManagerWrapper"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadProvider"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupInfoProvider"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiHandler"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManagerCoordinator"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenerCoordinator"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfoProvider"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;-><init>(Lcom/tonyodev/fetch2core/HandlerWrapper;Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;Lcom/tonyodev/fetch2/provider/DownloadProvider;Lcom/tonyodev/fetch2/provider/GroupInfoProvider;Landroid/os/Handler;Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget-object v3, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    iget-object p1, p1, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getDownloadManagerCoordinator()Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    return-object v0
.end method

.method public final getDownloadProvider()Lcom/tonyodev/fetch2/provider/DownloadProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    return-object v0
.end method

.method public final getFetchDatabaseManagerWrapper()Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    return-object v0
.end method

.method public final getGroupInfoProvider()Lcom/tonyodev/fetch2/provider/GroupInfoProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    return-object v0
.end method

.method public final getHandlerWrapper()Lcom/tonyodev/fetch2core/HandlerWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    return-object v0
.end method

.method public final getListenerCoordinator()Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    return-object v0
.end method

.method public final getNetworkInfoProvider()Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    return-object v0
.end method

.method public final getUiHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/HandlerWrapper;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->handlerWrapper:Lcom/tonyodev/fetch2core/HandlerWrapper;

    iget-object v1, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    iget-object v2, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadProvider:Lcom/tonyodev/fetch2/provider/DownloadProvider;

    iget-object v3, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->groupInfoProvider:Lcom/tonyodev/fetch2/provider/GroupInfoProvider;

    iget-object v4, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->uiHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->downloadManagerCoordinator:Lcom/tonyodev/fetch2/downloader/DownloadManagerCoordinator;

    iget-object v6, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->listenerCoordinator:Lcom/tonyodev/fetch2/fetch/ListenerCoordinator;

    iget-object v7, p0, Lcom/tonyodev/fetch2/fetch/FetchModulesBuilder$Holder;->networkInfoProvider:Lcom/tonyodev/fetch2/provider/NetworkInfoProvider;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Holder(handlerWrapper="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fetchDatabaseManagerWrapper="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", downloadProvider="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", groupInfoProvider="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uiHandler="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", downloadManagerCoordinator="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", listenerCoordinator="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networkInfoProvider="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
