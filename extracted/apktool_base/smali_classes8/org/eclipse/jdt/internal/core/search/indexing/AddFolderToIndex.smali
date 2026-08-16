.class Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;
.super Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;
.source "SourceFile"


# instance fields
.field exclusionPatterns:[[C

.field folderPath:Lorg/eclipse/core/runtime/IPath;

.field inclusionPatterns:[[C

.field project:Lorg/eclipse/core/resources/IProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;[[C[[CLorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V
    .locals 1

    invoke-interface {p2}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->folderPath:Lorg/eclipse/core/runtime/IPath;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->project:Lorg/eclipse/core/resources/IProject;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->inclusionPatterns:[[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->exclusionPatterns:[[C

    return-void
.end method


# virtual methods
.method public execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 7

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->folderPath:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/IContainer;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v2, v1, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/core/runtime/IPath;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->enterRead()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->project:Lorg/eclipse/core/resources/IProject;

    invoke-static {v5}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getSourceElementParser(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;)Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->exclusionPatterns:[[C

    if-nez v6, :cond_5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->inclusionPatterns:[[C

    if-nez v6, :cond_5

    new-instance v6, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$1;

    invoke-direct {v6, p0, v4, v3, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$1;-><init>(Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/SourceElementParser;)V

    invoke-interface {p1, v6, v2}, Lorg/eclipse/core/resources/IResource;->accept(Lorg/eclipse/core/resources/IResourceProxyVisitor;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_5
    new-instance v6, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;

    invoke-direct {v6, p0, v4, v3, v5}, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;-><init>(Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/SourceElementParser;)V

    invoke-interface {p1, v6, v2}, Lorg/eclipse/core/resources/IResource;->accept(Lorg/eclipse/core/resources/IResourceProxyVisitor;I)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    return v1

    :goto_1
    :try_start_1
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-> failed to add "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->folderPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to index because of the following exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    return v2

    :goto_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    throw p1

    :cond_7
    :goto_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->folderPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
