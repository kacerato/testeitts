.class public final Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fetchDatabaseManagerWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    return-void
.end method


# virtual methods
.method public final getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public final update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    return-void
.end method

.method public final updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/helper/DownloadInfoUpdater;->fetchDatabaseManagerWrapper:Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    return-void
.end method
