.class public Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;
.super Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;
.source "SourceFile"


# instance fields
.field project:Lorg/eclipse/core/resources/IProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;->project:Lorg/eclipse/core/resources/IProject;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;->project:Lorg/eclipse/core/resources/IProject;

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 27

    move-object/from16 v10, p0

    const-string v11, " because of the following exception:"

    const-string v12, "-> failed to index "

    iget-boolean v0, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    const/4 v13, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v13

    goto/16 :goto_18

    :cond_1
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_2

    return v13

    :cond_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_0
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    array-length v2, v1

    new-array v3, v2, [Lorg/eclipse/jdt/core/IClasspathEntry;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move v4, v15

    move v9, v4

    :goto_0
    if-lt v4, v2, :cond_1b

    if-nez v9, :cond_6

    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    move v3, v15

    :goto_1
    if-lt v3, v2, :cond_4

    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v1, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1, v13, v13}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexForUpdate(Lorg/eclipse/core/runtime/IPath;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->saveIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :catch_0
    move-exception v0

    goto/16 :goto_15

    :catch_1
    move-exception v0

    goto/16 :goto_16

    :cond_3
    :goto_2
    return v13

    :cond_4
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v5

    if-ne v5, v13, :cond_5

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v1, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v2, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;->project:Lorg/eclipse/core/resources/IProject;

    check-cast v4, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getLibraryIndexLocation()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLibrary(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Ljava/net/URL;)V

    return v13

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-eq v9, v2, :cond_7

    new-array v1, v9, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-static {v3, v15, v1, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v1

    goto :goto_3

    :cond_7
    move-object/from16 v16, v3

    :goto_3
    :try_start_2
    iget-object v1, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v2, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v2, v13, v13}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexForUpdate(Lorg/eclipse/core/runtime/IPath;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v1

    if-nez v1, :cond_8

    return v13

    :cond_8
    iget-object v8, v1, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v8, :cond_a

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    :cond_9
    return v13

    :cond_a
    :try_start_3
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->enterRead()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/index/Index;->queryDocumentNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v7, v15

    goto :goto_4

    :cond_b
    array-length v3, v2

    move v7, v3

    :goto_4
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v7, :cond_c

    const/16 v3, 0x21

    goto :goto_5

    :cond_c
    add-int/lit8 v3, v7, 0xb

    :goto_5
    invoke-direct {v6, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v5, "DELETED"

    if-eqz v2, :cond_e

    move v3, v15

    :goto_6
    if-lt v3, v7, :cond_d

    goto :goto_7

    :cond_d
    :try_start_4
    aget-object v4, v2, v3

    invoke-virtual {v6, v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v14, v8

    goto/16 :goto_17

    :catch_2
    move-exception v0

    move-object v14, v8

    goto/16 :goto_15

    :catch_3
    move-exception v0

    move-object v14, v8

    goto/16 :goto_16

    :cond_e
    :goto_7
    if-nez v7, :cond_f

    const-wide/16 v1, 0x0

    :goto_8
    move-wide/from16 v17, v1

    goto :goto_9

    :cond_f
    :try_start_5
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/index/Index;->getIndexLastModified()J

    move-result-wide v1

    goto :goto_8

    :goto_9
    iget-object v1, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v4
    :try_end_5
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v3, v15

    :goto_a
    if-lt v3, v9, :cond_14

    :try_start_6
    iget-object v1, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v1, v0, v14}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getSourceElementParser(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;)Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    move-result-object v0

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v3, v1

    move v4, v15

    :goto_b
    if-lt v4, v3, :cond_10

    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    new-instance v1, Lorg/eclipse/jdt/internal/core/search/indexing/SaveIndex;

    iget-object v2, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/SaveIndex;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->request(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)V
    :try_end_6
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    return v13

    :cond_10
    :try_start_7
    aget-object v6, v1, v4

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_13

    iget-boolean v7, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z
    :try_end_7
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v7, :cond_11

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    return v15

    :cond_11
    :try_start_8
    aget-object v7, v2, v4

    const-string v9, "OK"

    if-eq v7, v9, :cond_13

    if-ne v7, v5, :cond_12

    iget-object v7, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v9, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v7, v6, v9}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->remove(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_c

    :cond_12
    iget-object v6, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    check-cast v7, Lorg/eclipse/core/resources/IFile;

    iget-object v9, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v6, v7, v9, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->addSource(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/SourceElementParser;)V
    :try_end_8
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_13
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_14
    :try_start_9
    iget-boolean v1, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z
    :try_end_9
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v1, :cond_15

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    return v15

    :cond_15
    :try_start_a
    aget-object v1, v16, v3

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    if-eqz v2, :cond_1a

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v15
    :try_end_a
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v13, 0x4

    if-ne v15, v13, :cond_18

    :try_start_b
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    :goto_d
    if-lt v13, v9, :cond_16

    goto :goto_e

    :cond_16
    aget-object v15, v16, v13

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v15

    if-eqz v15, :cond_17

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_18
    :goto_e
    :try_start_c
    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v13

    const/4 v15, 0x1

    xor-int/2addr v13, v15

    move-object v15, v1

    check-cast v15, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object v15

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v19
    :try_end_c
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-nez v7, :cond_19

    :try_start_d
    new-instance v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;

    move-object/from16 v20, v1

    move-object/from16 v1, v20

    move-object/from16 v21, v0

    move-object v0, v2

    move-object/from16 v2, p0

    move/from16 v22, v3

    move-object/from16 v3, v19

    move-object/from16 v23, v4

    move-object v4, v15

    move-object/from16 v24, v5

    move-object v5, v6

    move-object/from16 v25, v6

    move v6, v13

    move/from16 v26, v7

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;-><init>(Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;[[C[[CLorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;ZLjava/util/HashSet;)V

    move-object/from16 v2, v20

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lorg/eclipse/core/resources/IResource;->accept(Lorg/eclipse/core/resources/IResourceProxyVisitor;I)V
    :try_end_d
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_f
    move-object/from16 v19, v8

    move v13, v9

    goto/16 :goto_13

    :cond_19
    move-object/from16 v21, v0

    move-object v0, v2

    move/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v26, v7

    :try_start_e
    new-instance v6, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$2;
    :try_end_e
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, v19

    move-object v4, v15

    move-object/from16 v5, v25

    move-object v15, v6

    move-wide/from16 v6, v17

    move-object/from16 v19, v8

    move v8, v13

    move v13, v9

    move-object v9, v14

    :try_start_f
    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$2;-><init>(Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;[[C[[CLorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;JZLjava/util/HashSet;)V

    const/4 v1, 0x0

    invoke-interface {v0, v15, v1}, Lorg/eclipse/core/resources/IResource;->accept(Lorg/eclipse/core/resources/IResourceProxyVisitor;I)V
    :try_end_f
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_13

    :catchall_2
    move-exception v0

    :goto_10
    move-object/from16 v14, v19

    goto/16 :goto_17

    :catch_4
    move-exception v0

    :goto_11
    move-object/from16 v14, v19

    goto/16 :goto_15

    :catch_5
    move-exception v0

    :goto_12
    move-object/from16 v14, v19

    goto/16 :goto_16

    :catchall_3
    move-exception v0

    move-object/from16 v19, v8

    goto :goto_10

    :catch_6
    move-exception v0

    move-object/from16 v19, v8

    goto :goto_11

    :catch_7
    move-exception v0

    move-object/from16 v19, v8

    goto :goto_12

    :cond_1a
    move-object/from16 v21, v0

    move/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v26, v7

    goto :goto_f

    :goto_13
    add-int/lit8 v3, v22, 0x1

    move v9, v13

    move-object/from16 v8, v19

    move-object/from16 v0, v21

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move/from16 v7, v26

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_17

    :catch_8
    move-exception v0

    const/4 v14, 0x0

    goto :goto_15

    :catch_9
    move-exception v0

    const/4 v14, 0x0

    goto :goto_16

    :cond_1b
    move-object/from16 v21, v0

    move v13, v9

    :try_start_10
    aget-object v0, v1, v4

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1c

    add-int/lit8 v9, v13, 0x1

    aput-object v0, v3, v13
    :try_end_10
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_14

    :cond_1c
    move v9, v13

    :goto_14
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v21

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_0

    :goto_15
    :try_start_11
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1d
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v1, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v14, :cond_1e

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    :cond_1e
    const/4 v1, 0x0

    return v1

    :goto_16
    :try_start_12
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_1f
    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v1, v10, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v14, :cond_20

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    :cond_20
    const/4 v1, 0x0

    return v1

    :goto_17
    if-eqz v14, :cond_21

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    :cond_21
    throw v0

    :goto_18
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "indexing project "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;->project:Lorg/eclipse/core/resources/IProject;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

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
