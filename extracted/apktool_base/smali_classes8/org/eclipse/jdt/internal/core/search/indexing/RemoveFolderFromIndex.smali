.class Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;
.super Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;
.source "SourceFile"


# instance fields
.field exclusionPatterns:[[C

.field folderPath:Lorg/eclipse/core/runtime/IPath;

.field inclusionPatterns:[[C


# direct methods
.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;[[C[[CLorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V
    .locals 0

    invoke-interface {p4}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p4

    invoke-direct {p0, p4, p5}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;->folderPath:Lorg/eclipse/core/runtime/IPath;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;->inclusionPatterns:[[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;->exclusionPatterns:[[C

    return-void
.end method


# virtual methods
.method public execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 8

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/core/runtime/IPath;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    if-nez v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->enterRead()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;->folderPath:Lorg/eclipse/core/runtime/IPath;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->relativePath(Lorg/eclipse/core/runtime/IPath;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/core/index/Index;->queryDocumentNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;->exclusionPatterns:[[C

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;->inclusionPatterns:[[C

    if-nez v3, :cond_4

    array-length v3, p1

    move v4, v2

    :goto_0
    if-lt v4, v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    aget-object v6, p1, v4

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->remove(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_4
    array-length v3, p1

    move v4, v2

    :goto_1
    if-lt v4, v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v6, v5}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;->inclusionPatterns:[[C

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;->exclusionPatterns:[[C

    invoke-static {v6, v5, v7, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    aget-object v6, p1, v4

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->remove(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    return v1

    :goto_3
    :try_start_1
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-> failed to remove "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;->folderPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from index because of the following exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    return v2

    :goto_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    throw p1

    :cond_9
    :goto_5
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/RemoveFolderFromIndex;->folderPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
