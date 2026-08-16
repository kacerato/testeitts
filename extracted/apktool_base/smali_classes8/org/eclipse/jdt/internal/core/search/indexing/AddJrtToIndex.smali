.class public Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;
.super Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;,
        Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;,
        Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;
    }
.end annotation


# static fields
.field static final JAR_SEPARATOR:C


# instance fields
.field private final forceIndexUpdate:Z

.field private indexFileURL:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

.field resource:Lorg/eclipse/core/resources/IFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "|"

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->JAR_SEPARATOR:C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->resource:Lorg/eclipse/core/resources/IFile;

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->indexFileURL:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    .line 4
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->forceIndexUpdate:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    .line 6
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->indexFileURL:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    .line 7
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->forceIndexUpdate:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->resource:Lorg/eclipse/core/resources/IFile;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v9, " because of the following exception:"

    const-string v10, "-> failed to index "

    iget-boolean v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    const/4 v11, 0x1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v11

    goto/16 :goto_d

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->hasPreBuiltIndex()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->indexFileURL:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->addIndex(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v11

    :cond_2
    iput-object v2, v8, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->indexFileURL:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    :cond_3
    const/4 v12, 0x0

    :try_start_0
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v3, v12, v12}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexForUpdate(Lorg/eclipse/core/runtime/IPath;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-> no indexing required (index already exists) for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    goto/16 :goto_c

    :cond_4
    :goto_0
    return v11

    :cond_5
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v3, v11, v11}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexForUpdate(Lorg/eclipse/core/runtime/IPath;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v13

    if-nez v13, :cond_7

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-> index could not be created for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_6
    return v11

    :cond_7
    sget-char v1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->JAR_SEPARATOR:C

    iput-char v1, v13, Lorg/eclipse/jdt/internal/core/index/Index;->separator:C

    iget-object v14, v13, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    if-nez v14, :cond_9

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-> index for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " just got deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return v11

    :cond_9
    :try_start_1
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->enterWrite()V

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->resource:Lorg/eclipse/core/resources/IFile;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->getLocationURI()Ljava/net/URI;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_a

    :try_start_2
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v12

    :cond_a
    :try_start_3
    sget-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->JRT_ACCESS_VERBOSE:Z

    if-eqz v3, :cond_b

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") [AddJrtFileToIndex.execute()] Creating ZipFile on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    goto/16 :goto_b

    :cond_b
    :goto_1
    :try_start_4
    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->toLocalFile(Ljava/net/URI;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/io/File;

    move-result-object v2
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    :try_start_5
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_c
    :goto_2
    if-nez v2, :cond_e

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because the file could not be fetched"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_d
    :try_start_6
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return v12

    :cond_e
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    :goto_3
    move-object v6, v1

    goto :goto_4

    :cond_f
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    goto :goto_3

    :goto_4
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-> indexing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-string v1, ""

    invoke-virtual {v13, v1}, Lorg/eclipse/jdt/internal/core/index/Index;->queryDocumentNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v7, "ms)"

    const-string v5, " ("

    if-eqz v1, :cond_17

    :try_start_8
    array-length v2, v1

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v2, :cond_11

    const/16 v4, 0x21

    goto :goto_5

    :cond_11
    add-int/lit8 v4, v2, 0xb

    :goto_5
    invoke-direct {v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    move v4, v12

    :goto_6
    if-lt v4, v2, :cond_16

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;

    invoke-direct {v4, v8, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtTraverser;-><init>(Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)V

    sget v12, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_FILES:I

    invoke-static {v1, v4, v12}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->walkModuleImage(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V

    iget v1, v3, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-eq v1, v2, :cond_12

    move v1, v11

    goto :goto_7

    :cond_12
    const/4 v1, 0x0

    :goto_7
    if-nez v1, :cond_17

    iget-object v2, v3, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-lt v4, v3, :cond_13

    goto :goto_9

    :cond_13
    aget-object v12, v2, v4

    sget-object v11, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;->DELETED:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    if-ne v12, v11, :cond_15

    const/4 v1, 0x1

    :goto_9
    if-nez v1, :cond_17

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-> no indexing required (index is consistent with library) for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v15

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_14
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v0, v13}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->saveIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v1, 0x1

    return v1

    :cond_15
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x1

    goto :goto_8

    :cond_16
    :try_start_a
    aget-object v11, v1, v4

    sget-object v12, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;->DELETED:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    invoke-virtual {v3, v11, v12}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_6

    :cond_17
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->resetIndex(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    const/4 v1, 0x0

    return v1

    :cond_18
    :try_start_c
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;

    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v4

    iget-object v3, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v17, v3

    move-object v3, v11

    move-object/from16 v18, v9

    move-object v9, v5

    move-object v5, v13

    move-object/from16 v19, v10

    move-object v10, v7

    move-object/from16 v7, v17

    :try_start_d
    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$JrtIndexer;-><init>(Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;Ljava/io/File;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    sget v1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_FILES:I

    invoke-static {v11, v12, v1}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->walkModuleImage(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V

    iget-boolean v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->forceIndexUpdate:Z

    if-eqz v1, :cond_19

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v1, v13}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->savePreBuiltIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_19
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v1, v13}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->saveIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V

    :goto_a
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-> done indexing of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v15

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_1a
    :try_start_e
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V

    const/4 v1, 0x1

    return v1

    :catch_2
    move-exception v0

    goto :goto_c

    :goto_b
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V

    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    :goto_c
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1b
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V

    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public getJobFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->resource:Lorg/eclipse/core/resources/IFile;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->getJobFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPreBuiltIndex()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->forceIndexUpdate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->indexFileURL:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->resource:Lorg/eclipse/core/resources/IFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "indexing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatedIndexState()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;->hasPreBuiltIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REUSE_STATE:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REBUILDING_STATE:Ljava/lang/Integer;

    :goto_0
    return-object v0
.end method
