.class public Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;
.super Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;
.source "SourceFile"


# instance fields
.field folder:Lorg/eclipse/core/resources/IContainer;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;->folder:Lorg/eclipse/core/resources/IContainer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;->folder:Lorg/eclipse/core/resources/IContainer;

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;->folder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 12

    const-string v0, " because of the following exception:"

    const-string v1, "-> failed to index "

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_e

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;->folder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->isAccessible()Z

    move-result p1

    if-nez p1, :cond_1

    return v3

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p1, v2, v3, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexForUpdate(Lorg/eclipse/core/runtime/IPath;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object p1

    if-nez p1, :cond_2

    return v3

    :cond_2
    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    if-nez v2, :cond_3

    return v3

    :cond_3
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->enterRead()V

    const-string v5, ""

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/core/index/Index;->queryDocumentNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    move v6, v4

    goto :goto_0

    :cond_4
    array-length v6, v5

    :goto_0
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v6, :cond_5

    const/16 v8, 0x21

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v6, 0xb

    :goto_1
    invoke-direct {v7, v8}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "DELETED"

    if-nez v5, :cond_6

    :try_start_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;->folder:Lorg/eclipse/core/resources/IContainer;

    new-instance v5, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$1;

    invoke-direct {v5, p0, v7}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$1;-><init>(Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)V

    invoke-interface {p1, v5, v4}, Lorg/eclipse/core/resources/IContainer;->accept(Lorg/eclipse/core/resources/IResourceProxyVisitor;I)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    goto/16 :goto_7

    :cond_6
    move v9, v4

    :goto_2
    if-lt v9, v6, :cond_b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->getIndexLastModified()J

    move-result-wide v5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;->folder:Lorg/eclipse/core/resources/IContainer;

    new-instance v9, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$2;

    invoke-direct {v9, p0, v7, v5, v6}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$2;-><init>(Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;J)V

    invoke-interface {p1, v9, v4}, Lorg/eclipse/core/resources/IContainer;->accept(Lorg/eclipse/core/resources/IResourceProxyVisitor;I)V

    :goto_3
    iget-object p1, v7, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v6, p1

    move v7, v4

    :goto_4
    if-lt v7, v6, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    new-instance v5, Lorg/eclipse/jdt/internal/core/search/indexing/SaveIndex;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-direct {v5, v6, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SaveIndex;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->request(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    return v3

    :cond_7
    :try_start_2
    aget-object v9, p1, v7

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_a

    iget-boolean v10, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_8

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    return v4

    :cond_8
    :try_start_3
    aget-object v10, v5, v7

    const-string v11, "OK"

    if-eq v10, v11, :cond_a

    if-ne v10, v8, :cond_9

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v11, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v10, v9, v11}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->remove(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_5

    :cond_9
    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    check-cast v10, Lorg/eclipse/core/resources/IFile;

    iget-object v11, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v9, v10, v11}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->addBinary(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/core/runtime/IPath;)V

    :cond_a
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    aget-object v10, v5, v9

    invoke-virtual {v7, v10, v8}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :goto_6
    :try_start_4
    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;->folder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    return v4

    :goto_7
    :try_start_5
    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;->folder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_d
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    return v4

    :goto_8
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    throw p1

    :cond_e
    :goto_9
    return v3
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;->folder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "indexing binary folder "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;->folder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatedIndexState()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REBUILDING_STATE:Ljava/lang/Integer;

    return-object v0
.end method
