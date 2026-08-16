.class public Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final javaPluginWorkingLocation:Lorg/eclipse/core/runtime/IPath;

.field private pendingWrite:[[C

.field private final queueMutex:Ljava/lang/Object;

.field private final savedIndexNamesFile:Ljava/io/File;

.field private final writeJob:Lorg/eclipse/core/runtime/jobs/Job;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->queueMutex:Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->savedIndexNamesFile:Ljava/io/File;

    new-instance p1, Lorg/eclipse/jdt/internal/core/search/indexing/a;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/core/search/indexing/a;-><init>(Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;)V

    const-string v0, "Updating index names"

    invoke-static {v0, p1}, Lorg/eclipse/core/runtime/jobs/Job;->create(Ljava/lang/String;Lorg/eclipse/core/runtime/ICoreRunnable;)Lorg/eclipse/core/runtime/jobs/Job;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->writeJob:Lorg/eclipse/core/runtime/jobs/Job;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/core/runtime/jobs/Job;->setSystem(Z)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->javaPluginWorkingLocation:Lorg/eclipse/core/runtime/IPath;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->save(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method private save(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9

    invoke-static {p1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->queueMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->pendingWrite:[[C

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v1, :cond_0

    return-void

    :cond_0
    array-length v0, v1

    invoke-virtual {p1, v0}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->savedIndexNamesFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "INDEX VERSION 1.131"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->javaPluginWorkingLocation:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    array-length v4, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_1

    :cond_1
    :try_start_4
    aget-object v6, v1, v5

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {v2, v6}, Ljava/io/Writer;->write([C)V

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :goto_1
    if-eqz v2, :cond_3

    if-eq v2, p1, :cond_2

    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    move-object p1, v2

    :cond_3
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz p1, :cond_4

    const-string p1, "Failed to write saved index file names"

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;Ljava/io/PrintStream;)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->queueMutex:Ljava/lang/Object;

    monitor-enter p1

    :try_start_7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->pendingWrite:[[C

    if-ne v2, v1, :cond_5

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->pendingWrite:[[C

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception p1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1
.end method


# virtual methods
.method public delete()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->queueMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->pendingWrite:[[C

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->writeJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/jobs/Job;->cancel()Z

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->writeJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/jobs/Job;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->queueMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->pendingWrite:[[C

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->savedIndexNamesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public read(Lorg/eclipse/core/runtime/IProgressMonitor;)[[C
    .locals 4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->queueMutex:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->pendingWrite:[[C

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->savedIndexNamesFile:Ljava/io/File;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INDEX VERSION 1.131+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->javaPluginWorkingLocation:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    return-object v0

    :catch_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "Failed to read saved index file names"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public write([[C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->queueMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->pendingWrite:[[C

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexNamesRegistry;->writeJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/jobs/Job;->schedule()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
