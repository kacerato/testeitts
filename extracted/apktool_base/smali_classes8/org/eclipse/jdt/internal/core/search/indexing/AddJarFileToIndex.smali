.class Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;
.super Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;
.source "SourceFile"


# static fields
.field private static final JAR_SEPARATOR:C


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

    sput-char v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->JAR_SEPARATOR:C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)V
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->resource:Lorg/eclipse/core/resources/IFile;

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->indexFileURL:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    .line 5
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->forceIndexUpdate:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Z)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    .line 8
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->indexFileURL:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    .line 9
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->forceIndexUpdate:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->resource:Lorg/eclipse/core/resources/IFile;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Automatic-Module-Name"

    const-string v3, " because of the following exception:"

    const-string v4, "-> failed to index "

    const-string v5, ") [AddJarFileToIndex.execute()] Closing ZipFile "

    const-string v6, "("

    iget-boolean v7, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    const/4 v8, 0x1

    if-nez v7, :cond_0

    if-eqz v0, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v2, v8

    goto/16 :goto_16

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->hasPreBuiltIndex()Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_3

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v10, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    iget-object v11, v1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->indexFileURL:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v7, v10, v11}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->addIndex(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v8

    :cond_2
    iput-object v9, v1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->indexFileURL:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    :cond_3
    const/4 v7, 0x0

    :try_start_0
    iget-object v10, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v11, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v10, v11, v7, v7}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexForUpdate(Lorg/eclipse/core/runtime/IPath;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v10

    if-eqz v10, :cond_5

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-> no indexing required (index already exists) for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    goto/16 :goto_15

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    :goto_1
    return v8

    :cond_5
    iget-object v10, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v11, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v10, v11, v8, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexForUpdate(Lorg/eclipse/core/runtime/IPath;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v10

    if-nez v10, :cond_7

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-> index could not be created for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_6
    return v8

    :cond_7
    iget-object v11, v10, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    if-nez v11, :cond_9

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-> index for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " just got deleted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_8
    return v8

    :cond_9
    sget-char v12, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->JAR_SEPARATOR:C

    iput-char v12, v10, Lorg/eclipse/jdt/internal/core/index/Index;->separator:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/zip/ZipError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->enterWrite()V

    iget-object v12, v1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->resource:Lorg/eclipse/core/resources/IFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v13, ") [AddJarFileToIndex.execute()] Creating ZipFile on "

    if-eqz v12, :cond_10

    :try_start_2
    invoke-interface {v12}, Lorg/eclipse/core/resources/IFile;->getLocationURI()Ljava/net/URI;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v12, :cond_a

    :try_start_3
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/zip/ZipError; {:try_start_3 .. :try_end_3} :catch_0

    return v7

    :cond_a
    :try_start_4
    sget-boolean v14, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v14, :cond_b

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    const/4 v9, 0x0

    goto/16 :goto_14

    :cond_b
    :goto_2
    :try_start_5
    invoke-static {v12, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->toLocalFile(Ljava/net/URI;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/io/File;

    move-result-object v0
    :try_end_5
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v9, v0

    :try_start_6
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_c
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_e

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because the file could not be fetched"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_d
    :try_start_7
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/util/zip/ZipError; {:try_start_7 .. :try_end_7} :catch_0

    return v7

    :cond_e
    :try_start_8
    sget-boolean v9, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v9, :cond_f

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/runtime/Path;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v19, v3

    :goto_4
    move-object/from16 v20, v4

    goto/16 :goto_14

    :cond_10
    :try_start_a
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_11

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_11
    new-instance v9, Ljava/util/zip/ZipFile;

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    check-cast v0, Lorg/eclipse/core/runtime/Path;

    :goto_5
    iget-boolean v12, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const-string v13, " has been cancelled"

    const-string v14, "-> indexing of "

    if-eqz v12, :cond_14

    :try_start_c
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_12
    :try_start_d
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_13

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/util/zip/ZipError; {:try_start_d .. :try_end_d} :catch_0

    return v7

    :cond_14
    :try_start_e
    sget-boolean v12, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v12, :cond_15

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "-> indexing "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-string v12, ""

    invoke-virtual {v10, v12}, Lorg/eclipse/jdt/internal/core/index/Index;->queryDocumentNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const-string v15, "ms)"

    const-string v7, " ("

    if-eqz v12, :cond_1f

    :try_start_f
    array-length v8, v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object/from16 v19, v3

    :try_start_10
    const-string v3, "OK"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object/from16 v20, v4

    :try_start_11
    const-string v4, "DELETED"

    move-object/from16 p1, v13

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v8, :cond_16

    const/16 v21, 0x21

    :goto_6
    move-object/from16 v22, v14

    move/from16 v14, v21

    goto :goto_7

    :cond_16
    add-int/lit8 v21, v8, 0xb

    goto :goto_6

    :goto_7
    invoke-direct {v13, v14}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    const/4 v14, 0x0

    :goto_8
    if-lt v14, v8, :cond_1e

    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v12

    :cond_17
    :goto_9
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-nez v14, :cond_1d

    iget v3, v13, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-eq v3, v8, :cond_18

    const/4 v3, 0x1

    goto :goto_a

    :cond_18
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_20

    iget-object v8, v13, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v12, v8

    const/4 v13, 0x0

    :goto_b
    if-lt v13, v12, :cond_19

    goto :goto_c

    :cond_19
    aget-object v14, v8, v13

    if-ne v14, v4, :cond_1c

    const/4 v3, 0x1

    :goto_c
    if-nez v3, :cond_20

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-> no indexing required (index is consistent with library) for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_d

    :catchall_2
    move-exception v0

    goto/16 :goto_14

    :cond_1a
    :goto_d
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->saveIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_1b

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    :catch_3
    move-exception v0

    goto/16 :goto_15

    :catch_4
    move-exception v0

    goto/16 :goto_15

    :cond_1b
    :goto_e
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/util/zip/ZipError; {:try_start_12 .. :try_end_12} :catch_3

    const/4 v2, 0x1

    return v2

    :cond_1c
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_1d
    :try_start_13
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/zip/ZipEntry;

    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-virtual {v1, v14}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->isValidPackageNameForClassOrisModule(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-virtual {v13, v14, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_1e
    move-object/from16 v21, v3

    aget-object v3, v12, v14

    invoke-virtual {v13, v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v21

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    goto/16 :goto_4

    :cond_1f
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 p1, v13

    move-object/from16 v22, v14

    :cond_20
    invoke-static {}, Lorg/eclipse/jdt/core/search/SearchEngine;->getDefaultSearchParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v3

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v8, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v4, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->resetIndex(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_21

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_21
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/util/zip/ZipError; {:try_start_14 .. :try_end_14} :catch_3

    const/4 v2, 0x0

    return v2

    :cond_22
    :try_start_15
    sget-char v4, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->JAR_SEPARATOR:C

    iput-char v4, v10, Lorg/eclipse/jdt/internal/core/index/Index;->separator:C

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/index/Index;->getIndexLocation()Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v4

    if-eqz v4, :cond_23

    new-instance v8, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getCanonicalFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_23
    const/4 v8, 0x0

    :goto_f
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v12, 0x0

    :goto_10
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-nez v13, :cond_29

    if-nez v12, :cond_25

    :try_start_16
    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->resource:Lorg/eclipse/core/resources/IFile;

    if-nez v4, :cond_24

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    :cond_24
    invoke-interface {v4}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getLocalFile(Lorg/eclipse/core/runtime/IPath;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_11
    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/env/AutomaticModuleNaming;->determineAutomaticModuleName(Ljava/lang/String;)[C

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    const/16 v13, 0x3a

    invoke-static {v12, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->append([CC)[C

    move-result-object v12

    invoke-static {v12, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->append([C[C)[C

    move-result-object v4

    new-instance v12, Ljava/util/zip/ZipEntry;

    invoke-direct {v12, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v2, v12, v0, v4, v3}, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;-><init>(Ljava/util/zip/ZipEntry;Lorg/eclipse/core/runtime/IPath;[BLorg/eclipse/jdt/core/search/SearchParticipant;)V

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v0, v2, v3, v10, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_16
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :catch_5
    :cond_25
    :try_start_17
    iget-boolean v0, v1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->forceIndexUpdate:Z

    if-eqz v0, :cond_26

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->savePreBuiltIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V

    goto :goto_12

    :cond_26
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->saveIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V

    :goto_12
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-> done indexing of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :cond_27
    :try_start_18
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_28

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_28
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_4
    .catch Ljava/util/zip/ZipError; {:try_start_18 .. :try_end_18} :catch_3

    const/4 v2, 0x1

    return v2

    :cond_29
    :try_start_19
    iget-boolean v13, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    if-eqz v13, :cond_2c

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v13, v22

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :cond_2a
    :try_start_1a
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_2b

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_4
    .catch Ljava/util/zip/ZipError; {:try_start_1a .. :try_end_1a} :catch_3

    const/4 v2, 0x0

    return v2

    :cond_2c
    move-object/from16 v14, p1

    move-object/from16 v13, v22

    :try_start_1b
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v21, v2

    move-object/from16 v2, v16

    check-cast v2, Ljava/util/zip/ZipEntry;

    move-object/from16 p1, v4

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2d

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->isValidPackageNameForClassOrisModule(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2d

    move-object/from16 v22, v7

    const-string v7, "module-info"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    or-int/2addr v12, v4

    invoke-static {v2, v9}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getZipEntryByteContent(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)[B

    move-result-object v4

    new-instance v7, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;

    invoke-direct {v7, v2, v0, v4, v3}, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;-><init>(Ljava/util/zip/ZipEntry;Lorg/eclipse/core/runtime/IPath;[BLorg/eclipse/jdt/core/search/SearchParticipant;)V

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v2, v7, v3, v10, v8}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :goto_13
    move-object/from16 v4, p1

    move-object/from16 p1, v14

    move-object/from16 v2, v21

    move-object/from16 v7, v22

    move-object/from16 v22, v13

    goto/16 :goto_10

    :cond_2d
    move-object/from16 v22, v7

    goto :goto_13

    :goto_14
    if-eqz v9, :cond_2f

    :try_start_1c
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v2, :cond_2e

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2e
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    :cond_2f
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V

    throw v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_4
    .catch Ljava/util/zip/ZipError; {:try_start_1c .. :try_end_1c} :catch_3

    :goto_15
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_30
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->manager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V

    const/4 v2, 0x0

    :goto_16
    return v2
.end method

.method public getJobFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->resource:Lorg/eclipse/core/resources/IFile;

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

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->forceIndexUpdate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->indexFileURL:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->resource:Lorg/eclipse/core/resources/IFile;

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

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJarFileToIndex;->hasPreBuiltIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REUSE_STATE:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->REBUILDING_STATE:Ljava/lang/Integer;

    :goto_0
    return-object v0
.end method
