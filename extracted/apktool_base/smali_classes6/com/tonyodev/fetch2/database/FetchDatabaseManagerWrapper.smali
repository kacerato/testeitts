.class public final Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2/database/FetchDatabaseManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tonyodev/fetch2/database/FetchDatabaseManager<",
        "Lcom/tonyodev/fetch2/database/DownloadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tonyodev/fetch2/database/FetchDatabaseManager<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

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


# direct methods
.method public constructor <init>(Lcom/tonyodev/fetch2/database/FetchDatabaseManager;)V
    .locals 1
    .param p1    # Lcom/tonyodev/fetch2/database/FetchDatabaseManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/database/FetchDatabaseManager<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fetchDatabaseManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getLogger()Lcom/tonyodev/fetch2core/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->logger:Lcom/tonyodev/fetch2core/Logger;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

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

.method public delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->delete(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    .line 3
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public delete(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->delete(Ljava/util/List;)V

    .line 7
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public deleteAll()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->deleteAll()V

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

.method public get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->get(I)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public get()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->get()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public get(Ljava/util/List;)Ljava/util/List;
    .locals 2
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
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getAllGroupIds()Ljava/util/List;
    .locals 2
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

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getAllGroupIds()Ljava/util/List;

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

.method public getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getByFile(Ljava/lang/String;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getByGroup(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getByGroup(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getByStatus(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;
    .locals 2
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
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getByStatus(Lcom/tonyodev/fetch2/Status;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getByStatus(Ljava/util/List;)Ljava/util/List;
    .locals 2
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
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getByStatus(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getDelegate()Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;

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

.method public getDownloadsByRequestIdentifier(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getDownloadsByRequestIdentifier(J)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownloadsByTag(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getDownloadsByTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getDownloadsInGroupWithStatus(ILjava/util/List;)Ljava/util/List;
    .locals 2
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
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "statuses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getDownloadsInGroupWithStatus(ILjava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getLogger()Lcom/tonyodev/fetch2core/Logger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->logger:Lcom/tonyodev/fetch2core/Logger;

    return-object v0
.end method

.method public getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v0}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getNewDownloadInfoInstance()Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPendingCount(Z)J
    .locals 3

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getPendingCount(Z)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getPendingDownloadsSorted(Lcom/tonyodev/fetch2/PrioritySort;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/PrioritySort;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/PrioritySort;",
            ")",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "prioritySort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->getPendingDownloadsSorted(Lcom/tonyodev/fetch2/PrioritySort;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
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

    const-string v0, "downloadInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)Lnf/Z;
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ")",
            "Lnf/Z<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->insert(Lcom/tonyodev/fetch2/database/DownloadInfo;)Lnf/Z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public isClosed()Z
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public sanitizeOnFirstEntry()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->sanitizeOnFirstEntry()V

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

.method public setDelegate(Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;)V
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate<",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->setDelegate(Lcom/tonyodev/fetch2/database/FetchDatabaseManager$Delegate;)V

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

.method public update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->update(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

    .line 3
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public update(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2/database/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->update(Ljava/util/List;)V

    .line 7
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public updateExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 2
    .param p2    # Lcom/tonyodev/fetch2core/Extras;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1, p2}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->updateExtras(ILcom/tonyodev/fetch2core/Extras;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V
    .locals 2
    .param p1    # Lcom/tonyodev/fetch2/database/DownloadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "downloadInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch2/database/FetchDatabaseManagerWrapper;->fetchDatabaseManager:Lcom/tonyodev/fetch2/database/FetchDatabaseManager;

    invoke-interface {v1, p1}, Lcom/tonyodev/fetch2/database/FetchDatabaseManager;->updateFileBytesInfoAndStatusOnly(Lcom/tonyodev/fetch2/database/DownloadInfo;)V

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
