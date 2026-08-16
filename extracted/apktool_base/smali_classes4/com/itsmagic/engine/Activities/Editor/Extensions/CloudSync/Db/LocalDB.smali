.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fileList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;",
            ">;"
        }
    .end annotation
.end field

.field public final inProjectFiles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;",
            ">;"
        }
    .end annotation
.end field

.field public final syncOperationList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->syncOperationList:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->fileList:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->inProjectFiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->syncOperationList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->syncOperationList:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;

    const-string v3, "exclusion"

    invoke-direct {v2, p1, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deleted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->inProjectFiles:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->inProjectFiles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ipp",
            "localLM",
            "serverLM"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->fileList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object p1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;->ipp:Ljava/lang/String;

    iput-object p2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;->localLM:Ljava/lang/String;

    iput-object p3, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;->serverLM:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;-><init>()V

    iput-object p1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;->ipp:Ljava/lang/String;

    iput-object p2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;->localLM:Ljava/lang/String;

    iput-object p3, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;->serverLM:Ljava/lang/String;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->fileList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->fileList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->fileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;

    iget-object v3, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;->ipp:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ipp",
            "localLM"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->inProjectFiles:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->inProjectFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->inProjectFiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;

    iget-object v3, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;->ipp:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;->localLM:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;-><init>()V

    iput-object p1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;->ipp:Ljava/lang/String;

    iput-object p2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;->localLM:Ljava/lang/String;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->inProjectFiles:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "at"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->syncOperationList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->syncOperationList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->syncOperationList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->syncOperationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "at"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->inProjectFiles:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->inProjectFiles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/InProjectFile;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->inProjectFiles:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->inProjectFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->fileList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalFile;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->fileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operation"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->syncOperationList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->syncOperationList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/SyncOperation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->syncOperationList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Db/LocalDB;->syncOperationList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
