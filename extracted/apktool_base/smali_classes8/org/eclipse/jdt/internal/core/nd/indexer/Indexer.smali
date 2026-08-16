.class public final Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer$Listener;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static DEBUG_ALLOCATIONS:Z = false

.field public static DEBUG_INSERTIONS:Z = false

.field public static DEBUG_LOG_SIZE_MB:I = 0x0

.field public static DEBUG_SCHEDULING:Z = false

.field public static DEBUG_SELFTEST:Z = false

.field public static DEBUG_TIMING:Z = false

.field private static final TOTAL_TICKS_TO_REPORT_DURING_INDEXING:I = 0x3e8

.field private static indexer:Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;

.field private static final mutex:Ljava/lang/Object;


# instance fields
.field private final automaticIndexingMutex:Ljava/lang/Object;

.field private enableAutomaticIndexing:Z

.field private final fileStateCache:Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

.field private group:Lorg/eclipse/core/runtime/jobs/JobGroup;

.field private indexerDirtiedWhileDisabled:Z

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private listenersMutex:Ljava/lang/Object;

.field private nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

.field private rebuildIndexJob:Lorg/eclipse/core/runtime/jobs/Job;

.field private rescanJob:Lorg/eclipse/core/runtime/jobs/Job;

.field private root:Lorg/eclipse/core/resources/IWorkspaceRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->mutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/core/resources/IWorkspaceRoot;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->enableAutomaticIndexing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->indexerDirtiedWhileDisabled:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->automaticIndexingMutex:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listenersMutex:Ljava/lang/Object;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listeners:Ljava/util/Set;

    new-instance v1, Lorg/eclipse/core/runtime/jobs/JobGroup;

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/indexer/Messages;->Indexer_updating_index_job_name:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v0}, Lorg/eclipse/core/runtime/jobs/JobGroup;-><init>(Ljava/lang/String;II)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->group:Lorg/eclipse/core/runtime/jobs/JobGroup;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Messages;->Indexer_updating_index_job_name:Ljava/lang/String;

    new-instance v2, Lorg/eclipse/jdt/internal/core/nd/indexer/c;

    invoke-direct {v2, p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/c;-><init>(Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;)V

    invoke-static {v1, v2}, Lorg/eclipse/core/runtime/jobs/Job;->create(Ljava/lang/String;Lorg/eclipse/core/runtime/ICoreRunnable;)Lorg/eclipse/core/runtime/jobs/Job;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanJob:Lorg/eclipse/core/runtime/jobs/Job;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Messages;->Indexer_updating_index_job_name:Ljava/lang/String;

    new-instance v2, Lorg/eclipse/jdt/internal/core/nd/indexer/d;

    invoke-direct {v2, p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/d;-><init>(Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;)V

    invoke-static {v1, v2}, Lorg/eclipse/core/runtime/jobs/Job;->create(Ljava/lang/String;Lorg/eclipse/core/runtime/ICoreRunnable;)Lorg/eclipse/core/runtime/jobs/Job;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rebuildIndexJob:Lorg/eclipse/core/runtime/jobs/Job;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->root:Lorg/eclipse/core/resources/IWorkspaceRoot;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {p2, v0}, Lorg/eclipse/core/runtime/jobs/Job;->setSystem(Z)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanJob:Lorg/eclipse/core/runtime/jobs/Job;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->group:Lorg/eclipse/core/runtime/jobs/JobGroup;

    invoke-virtual {p2, v1}, Lorg/eclipse/core/runtime/jobs/Job;->setJobGroup(Lorg/eclipse/core/runtime/jobs/JobGroup;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rebuildIndexJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {p2, v0}, Lorg/eclipse/core/runtime/jobs/Job;->setSystem(Z)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rebuildIndexJob:Lorg/eclipse/core/runtime/jobs/Job;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->group:Lorg/eclipse/core/runtime/jobs/JobGroup;

    invoke-virtual {p2, v0}, Lorg/eclipse/core/runtime/jobs/Job;->setJobGroup(Lorg/eclipse/core/runtime/jobs/JobGroup;)V

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->getCache(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->fileStateCache:Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->lambda$1(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method private addClassToIndex(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;[C[CLorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/16 v0, 0x64

    invoke-static {p5, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p5

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    const/4 v2, 0x5

    invoke-virtual {p5, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isInIndex()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_INSERTIONS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inserting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getLocation()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {p5, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p5

    invoke-virtual {v0, p4, p2, p5}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->addType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;[CLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getVersion()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->setJdkLevel(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p5, 0x1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_SELFTEST:Z

    if-eqz v0, :cond_9

    if-eqz p5, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->findType([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getTypes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getResourceFile()Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v1, p1

    goto :goto_5

    :cond_4
    :goto_2
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_5

    new-instance p1, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->create(Lorg/eclipse/jdt/internal/core/nd/java/NdType;)Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;[C)V

    invoke-static {p4, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->testType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not find class in index immediately after indexing it: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-eqz v2, :cond_9

    :try_start_3
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    goto :goto_9

    :catchall_2
    move-exception p1

    goto :goto_6

    :goto_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_6
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_6
    if-eqz v1, :cond_8

    if-eq v1, p1, :cond_7

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_0
    move-exception p1

    goto :goto_8

    :cond_7
    :goto_7
    move-object p1, v1

    :cond_8
    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Error during indexing: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_9
    return p5

    :goto_a
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw p1
.end method

.method private addElement(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {p3 .. p3}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v10

    instance-of v0, v9, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    const-string v11, "Unable to index "

    const/4 v13, 0x1

    if-eqz v0, :cond_12

    move-object v14, v9

    check-cast v14, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v15

    invoke-static {v14}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getLocationForElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v16

    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getLocalFile(Lorg/eclipse/core/runtime/IPath;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    :try_start_1
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->throwIoExceptionsInGetZipFile:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    if-eqz v0, :cond_1

    :try_start_2
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Throwing simulated IOException for error handling test case"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object/from16 v21, v5

    move-object/from16 v20, v14

    const/4 v12, 0x0

    :goto_0
    const/16 v18, 0x0

    goto/16 :goto_13

    :cond_0
    :goto_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->size()I

    move-result v0

    invoke-virtual {v10, v0}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    const/4 v4, 0x5

    invoke-virtual {v10, v4}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->allocateZipEntries(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    :try_start_5
    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    const/16 v18, 0x0

    :goto_2
    :try_start_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    if-nez v0, :cond_2

    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1b

    :catchall_1
    move-exception v0

    move-object/from16 v20, v14

    move/from16 v19, v18

    const/4 v6, 0x0

    const/4 v12, 0x0

    goto/16 :goto_14

    :cond_2
    :try_start_8
    invoke-virtual {v10, v13}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_4

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v20, v14

    goto/16 :goto_b

    :cond_4
    :goto_3
    iget-object v6, v7, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v10, v4}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isInIndex()Z

    move-result v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-eqz v6, :cond_9

    :try_start_a
    sget-boolean v6, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_INSERTIONS:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Inserting non-class file "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " into "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getLocation()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v12

    invoke-interface {v12}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v20, v14

    :try_start_b
    iget-wide v13, v8, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_4
    move-object/from16 v21, v5

    :goto_5
    const/4 v12, 0x0

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    move-object/from16 v20, v14

    goto :goto_4

    :cond_5
    move-object/from16 v20, v14

    :goto_6
    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->addZipEntry(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;

    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v6, :cond_a

    :try_start_c
    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    const-string v13, "UTF-8"

    const/4 v14, -0x1

    invoke-static {v6, v14, v13}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsCharArray(Ljava/io/InputStream;ILjava/lang/String;)[C

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->setManifestContent([C)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v6, :cond_a

    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    const/4 v1, 0x0

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_6

    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catchall_6
    move-exception v0

    goto :goto_8

    :cond_6
    :goto_7
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :goto_8
    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_8

    :try_start_10
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_7
    move-object v1, v0

    :cond_8
    :goto_9
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :cond_9
    move-object/from16 v20, v14

    :cond_a
    :goto_a
    :try_start_11
    iget-object v6, v7, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    :goto_b
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    move v14, v4

    move-object/from16 v21, v5

    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_c
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->binaryNameToFieldDescriptor([C)[C

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x7c

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v13, v6, v3, v14, v2}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;-><init>([C[C[C[C)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :try_start_12
    invoke-static {v1, v5}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getZipEntryByteContent(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)[B

    move-result-object v1

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    iget-object v2, v13, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->indexPath:[C

    const/4 v3, 0x1

    invoke-direct {v6, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[CZ)V

    iget-object v14, v13, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->fieldDescriptor:[C

    iget-object v2, v13, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->indexPath:[C

    invoke-virtual {v0, v3}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0
    :try_end_12
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-object/from16 v2, p1

    move-object v3, v14

    move v14, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v5

    move-object v5, v6

    const/4 v12, 0x0

    move-object v6, v0

    :try_start_13
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->addClassToIndex(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;[C[CLorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result v0
    :try_end_13
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-eqz v0, :cond_d

    add-int/lit8 v18, v18, 0x1

    :cond_d
    :goto_c
    move v4, v14

    move-object/from16 v14, v20

    move-object/from16 v5, v21

    const/4 v13, 0x1

    goto/16 :goto_2

    :catchall_7
    move-exception v0

    :goto_d
    move-object v6, v0

    goto :goto_13

    :catch_0
    move-exception v0

    goto :goto_10

    :catch_1
    move-exception v0

    goto :goto_10

    :catchall_8
    move-exception v0

    move-object/from16 v21, v5

    :goto_e
    const/4 v12, 0x0

    goto :goto_d

    :catch_2
    move-exception v0

    :goto_f
    move v14, v4

    move-object/from16 v21, v5

    const/4 v12, 0x0

    goto :goto_10

    :catch_3
    move-exception v0

    goto :goto_f

    :goto_10
    :try_start_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v20, v14

    goto/16 :goto_5

    :goto_11
    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :catchall_a
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v20, v14

    goto :goto_e

    :catchall_b
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v20, v14

    const/4 v12, 0x0

    :goto_12
    move-object v6, v0

    goto/16 :goto_0

    :catchall_c
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v20, v14

    const/4 v12, 0x0

    :try_start_15
    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_12

    :goto_13
    :try_start_16
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipFile;->close()V

    throw v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    :catchall_e
    move-exception v0

    move/from16 v19, v18

    goto :goto_14

    :catchall_f
    move-exception v0

    move-object/from16 v20, v14

    const/4 v12, 0x0

    move-object v6, v12

    const/16 v19, 0x0

    :goto_14
    if-eqz v6, :cond_e

    if-eq v6, v0, :cond_f

    :try_start_17
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_15

    :catch_4
    move-exception v0

    goto :goto_16

    :catch_5
    move-exception v0

    goto :goto_17

    :catch_6
    move-exception v0

    goto :goto_18

    :catch_7
    move-exception v0

    goto :goto_19

    :cond_e
    move-object v6, v0

    :cond_f
    :goto_15
    throw v6
    :try_end_17
    .catch Ljava/util/zip/ZipException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_17 .. :try_end_17} :catch_4

    :goto_16
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v1

    :goto_17
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v2, 0x3d9

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    :goto_18
    throw v0

    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The zip file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was corrupt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_18
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isInIndex()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->setFlags(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    goto :goto_1a

    :catchall_10
    move-exception v0

    goto :goto_1c

    :cond_10
    :goto_1a
    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    move/from16 v18, v19

    :goto_1b
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG:Z

    if-eqz v0, :cond_11

    if-nez v18, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " contained no class files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V

    :cond_11
    return v18

    :goto_1c
    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw v0

    :cond_12
    instance-of v0, v9, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    if-eqz v0, :cond_14

    check-cast v9, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v6

    invoke-static {v9}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->createDescriptor(Lorg/eclipse/jdt/core/IOrdinaryClassFile;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_19
    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->rawReadTypeTestForExists(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;ZZ)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v5

    if-eqz v5, :cond_13

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->fieldDescriptor:[C

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->indexPath:[C

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->addClassToIndex(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;[C[CLorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result v12
    :try_end_19
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_19 .. :try_end_19} :catch_9
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_19 .. :try_end_19} :catch_8

    goto :goto_1e

    :catch_8
    move-exception v0

    goto :goto_1d

    :catch_9
    move-exception v0

    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    const/4 v12, 0x0

    :goto_1e
    return v12

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to index elements of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private attachWorkspaceFilesToResource(Ljava/util/List;Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {v1, v2, p2, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;[C)V

    goto :goto_0
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->lambda$0(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method private cleanGarbage(JLjava/util/Collection;Lorg/eclipse/core/runtime/IProgressMonitor;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x3

    move-object/from16 v6, p4

    invoke-static {v6, v5}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->getUsageTimestampUpdatePeriod()J

    move-result-wide v8

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->getGarbageCleanupTimeout()J

    move-result-wide v10

    :try_start_0
    iget-object v13, v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getAllResourceFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v12, v15}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v12

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v15, :cond_4

    if-eqz v13, :cond_0

    :try_start_2
    invoke-interface {v13}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v12, 0x0

    goto/16 :goto_9

    :goto_1
    invoke-virtual {v5, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v15

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v5, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v4

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    return v14

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v4, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_3
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isInIndex()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->setTimeLastUsed(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_4
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    const/4 v0, 0x1

    goto :goto_3

    :goto_5
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw v0

    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->deleteResource(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    move v0, v4

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    invoke-virtual {v12, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isDoneIndexing()Z

    move-result v16

    if-nez v16, :cond_5

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v12, v0

    goto :goto_7

    :cond_5
    new-instance v1, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getLocation()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v16

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getTimeLastUsed()J

    move-result-wide v18

    sub-long v18, v2, v18

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    cmp-long v0, v18, v8

    if-lez v0, :cond_6

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    move-object/from16 v1, p0

    move-object/from16 v0, v17

    goto/16 :goto_0

    :cond_7
    cmp-long v0, v18, v10

    if-lez v0, :cond_6

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :goto_7
    if-eqz v13, :cond_8

    :try_start_5
    invoke-interface {v13}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_9

    :cond_8
    :goto_8
    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_9
    if-eqz v12, :cond_9

    if-eq v12, v0, :cond_a

    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_9
    move-object v12, v0

    :cond_a
    :goto_a
    throw v12
.end method

.method private fireChange(Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listenersMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listeners:Ljava/util/Set;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer$Listener;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer$Listener;->consume(Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private fireDelta(Ljava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->root:Lorg/eclipse/core/resources/IWorkspaceRoot;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProjects()[Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v1

    new-instance v6, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v6, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {p2, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move p2, v4

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;->createChange(Lorg/eclipse/jdt/core/IJavaElementDelta;)Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->fireChange(Lorg/eclipse/jdt/internal/core/nd/indexer/IndexerEvent;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v7, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    :try_start_0
    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "org.eclipse.jdt.core.javanature"

    invoke-interface {v1, v2}, Lorg/eclipse/core/resources/IProject;->isNatureEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaProject;->getAllPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_2
    if-lt v3, v2, :cond_3

    goto :goto_1

    :cond_3
    aget-object v5, v1, v3

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getLocationForElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_4

    const p2, 0x8001

    :try_start_1
    invoke-virtual {v6, v5, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    move p2, v0

    goto :goto_3

    :catch_0
    move-exception p2

    move v1, v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v10, v1

    move v1, p2

    move-object p2, v10

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :goto_4
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->log(Ljava/lang/Throwable;)V

    move p2, v1

    goto :goto_1

    :cond_5
    aget-object v6, v1, v5

    invoke-interface {v6}, Lorg/eclipse/core/resources/IProject;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private static getGarbageCleanupTimeout()J
    .locals 6

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->getPreferencesService()Lorg/eclipse/core/runtime/preferences/IPreferencesService;

    move-result-object v0

    const-wide/32 v3, 0xf731400

    const/4 v5, 0x0

    const-string v1, "org.eclipse.jdt.core"

    const-string v2, "garbageCleanupTimeoutMs"

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/core/runtime/preferences/IPreferencesService;->getLong(Ljava/lang/String;Ljava/lang/String;J[Lorg/eclipse/core/runtime/preferences/IScopeContext;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getIndexablesThatHaveChanged(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/runtime/IPath;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInstance()Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->indexer:Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getGlobalNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v2

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/core/resources/IWorkspaceRoot;)V

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->indexer:Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->indexer:Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getUsageTimestampUpdatePeriod()J
    .locals 4

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->getGarbageCleanupTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private synthetic lambda$0(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-static {p1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescan(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/nd/db/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Database corruption detected during indexing. Deleting and rebuilding the index."

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rebuildIndex(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$1(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rebuildIndex(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method private rescanArchive(JLorg/eclipse/core/runtime/IPath;Ljava/util/List;Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;Lorg/eclipse/core/runtime/IProgressMonitor;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/eclipse/core/runtime/IPath;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;",
            "Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const-string v0, "the file "

    const/16 v1, 0x64

    invoke-static {p6, v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p6

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    const/4 v6, 0x5

    invoke-virtual {p6, v6}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_0
    new-instance v5, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-direct {v5, v7}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->setTimeLastUsed(J)V

    invoke-virtual {v5, v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->setLocation(Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-interface {v1, p1}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getLocationForElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->setPackageFragmentRoot([C)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    :goto_0
    invoke-direct {p0, p4, v5}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->attachWorkspaceFilesToResource(Ljava/util/List;Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "rescanning "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    :try_start_1
    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->fileExists()Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x32

    invoke-virtual {p6, p2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    invoke-direct {p0, v5, v1, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->addElement(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)I

    move-result v2
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->getEmpty()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    move-result-object p5

    :cond_3
    :goto_1
    sget-boolean p2, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG:Z

    if-eqz p2, :cond_4

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->fileExists()Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " was not indexed because it does not exist"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    const/4 p3, 0x1

    invoke-virtual {p6, p3}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p4

    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_2
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isInIndex()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v5, p5}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->setFingerprint(Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;)V

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->findResourcesWithPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->fileStateCache:Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getLocation()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p4

    invoke-interface {p4}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->remove(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_5
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    const/16 p2, 0x28

    invoke-virtual {p6, p2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, p3

    invoke-virtual {p2, p4}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_7

    return v2

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    invoke-virtual {p4, v5}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6

    invoke-virtual {p2, p3}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p5

    invoke-virtual {p0, p4, p5}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->deleteResource(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_3

    :goto_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw p1

    :goto_5
    sget-boolean p2, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG:Z

    if-eqz p2, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "A RuntimeException occurred while indexing "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    throw p1

    :catch_2
    sget-boolean p2, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG:Z

    if-eqz p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cannot be indexed due to a recoverable error"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p6, v6}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_3
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isInIndex()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->delete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_7

    :cond_a
    :goto_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    return v2

    :goto_7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw p1

    :goto_8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw p1
.end method

.method private testFingerprints(Ljava/util/Collection;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p2, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/runtime/IPath;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->testForChanges(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private testForChanges(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/16 v0, 0x64

    invoke-static {p2, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {p2, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->getEmpty()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getResourceFile([C)Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getFingerprint()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseReadLock()V

    const/16 v1, 0x28

    invoke-virtual {p2, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->test(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->needsNewFingerprint()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isInIndex()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Writing updated fingerprint for "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->getNewFingerprint()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->getNewFingerprint()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->setFingerprint(Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    goto :goto_3

    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw p1

    :cond_3
    :goto_3
    return-object v1

    :goto_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseReadLock()V

    throw p1
.end method

.method private updateResourceMappings(Ljava/util/Map;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;>;",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {p2, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v3, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getResourceFile([C)Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->attachWorkspaceFilesToResource(Ljava/util/List;Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw p1
.end method


# virtual methods
.method public addListener(Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer$Listener;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listenersMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listeners:Ljava/util/Set;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deleteResource(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 5

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isInIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->markAsInvalid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isInIndex()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_1

    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    goto :goto_3

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getTypeCount()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_3

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isInIndex()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->delete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    return-void

    :goto_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw p1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :try_start_4
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getType(I)Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v0

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_INSERTIONS:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTypeId()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getLocation()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_7

    :cond_4
    :goto_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    goto/16 :goto_1

    :goto_7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw p1

    :goto_8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw p1
.end method

.method public enableAutomaticIndexing(Z)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->automaticIndexingMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->enableAutomaticIndexing:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->enableAutomaticIndexing:Z

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->indexerDirtiedWhileDisabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/jobs/Job;->schedule()V

    :cond_2
    if-nez p1, :cond_3

    :try_start_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanJob:Lorg/eclipse/core/runtime/jobs/Job;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/core/runtime/jobs/Job;->join(JLorg/eclipse/core/runtime/IProgressMonitor;)Z
    :try_end_1
    .catch Lorg/eclipse/core/runtime/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public makeDirty(Lorg/eclipse/core/resources/IProject;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->fileStateCache:Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->clear()V

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanAll()V

    return-void
.end method

.method public makeDirty(Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->fileStateCache:Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->remove(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanAll()V

    return-void
.end method

.method public makeWorkspacePathDirty(Lorg/eclipse/core/runtime/IPath;)V
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->fileStateCache:Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->clear()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanAll()V

    return-void
.end method

.method public rebuildIndex(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/jobs/Job;->cancel()Z

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {p1, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lorg/eclipse/core/runtime/jobs/Job;->join(JLorg/eclipse/core/runtime/IProgressMonitor;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p1, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->clear(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->flush()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x61

    invoke-virtual {p1, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescan(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw p1
.end method

.method public removeListener(Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer$Listener;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listenersMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listeners:Ljava/util/Set;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestRebuildIndex()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rebuildIndexJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/jobs/Job;->schedule()V

    return-void
.end method

.method public rescan(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v8, p0

    const/16 v0, 0x64

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->resetCacheCounters()V

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v1

    sget v2, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_LOG_SIZE_MB:I

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->setBufferSize(I)V

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->automaticIndexingMutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->indexerDirtiedWhileDisabled:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Indexer running rescan"

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->fileStateCache:Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->clear()V

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->root:Lorg/eclipse/core/resources/IWorkspaceRoot;

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->create(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;

    move-result-object v13

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->allLocations()Ljava/util/Set;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual {v0, v12}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    invoke-direct {v8, v10, v11, v14, v1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->cleanGarbage(JLjava/util/Collection;Lorg/eclipse/core/runtime/IProgressMonitor;)I

    move-result v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-virtual {v0, v12}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    invoke-direct {v8, v14, v1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->testFingerprints(Ljava/util/Collection;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/Map;

    move-result-object v6

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v8, v14, v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->getIndexablesThatHaveChanged(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v21, 0x0

    move-object/from16 v23, v13

    move-wide/from16 v12, v21

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    cmp-long v1, v12, v21

    const-wide v24, 0x408f400000000000L    # 1000.0

    const-wide/16 v26, 0x0

    if-nez v1, :cond_1

    move-wide/from16 v28, v26

    goto :goto_1

    :cond_1
    long-to-double v3, v12

    div-double v3, v24, v3

    move-wide/from16 v28, v3

    :goto_1
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v3

    invoke-direct {v8, v1, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->updateResourceMappings(Ljava/util/Map;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    iget-object v3, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0, v4}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :try_start_1
    iget-object v3, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->flush()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v3, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    invoke-virtual {v0, v4}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    invoke-direct {v8, v5, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->fireDelta(Ljava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Rescan finished"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 p1, v9

    sub-long v8, v15, v10

    move-wide/from16 v33, v10

    sub-long v10, v17, v15

    move-wide/from16 v35, v12

    sub-long v12, v19, v17

    move-object/from16 v37, v5

    sub-long v5, v31, v19

    move-wide/from16 v28, v8

    sub-long v8, v3, v31

    move-wide/from16 v38, v3

    if-nez v7, :cond_3

    move-wide v15, v10

    move-wide/from16 v3, v26

    goto :goto_4

    :cond_3
    long-to-double v3, v10

    move-wide v15, v10

    int-to-double v10, v7

    div-double/2addr v3, v10

    :goto_4
    if-nez v2, :cond_4

    move-wide/from16 v17, v5

    move-wide/from16 v10, v26

    goto :goto_5

    :cond_4
    long-to-double v10, v5

    move-wide/from16 v17, v5

    int-to-double v5, v2

    div-double/2addr v10, v5

    :goto_5
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_5

    move-wide/from16 v19, v10

    move-wide/from16 v5, v26

    goto :goto_6

    :cond_5
    long-to-double v5, v12

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v0

    move-wide/from16 v19, v10

    int-to-double v10, v0

    div-double/2addr v5, v10

    :goto_6
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_6

    move-wide/from16 v30, v8

    move-wide/from16 v10, v26

    goto :goto_7

    :cond_6
    long-to-double v10, v8

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    move-wide/from16 v30, v8

    int-to-double v8, v0

    div-double/2addr v10, v8

    :goto_7
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_TIMING:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v8, "#0.###"

    invoke-direct {v0, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "#0.###"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/text/SimpleDateFormat;

    move-wide/from16 v40, v15

    const-string v15, "yyyy-MM-dd HH:mm:ss.SSS\n"

    invoke-direct {v9, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v16, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-wide/from16 v42, v10

    const-string v10, "Indexing done at "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    move-object/from16 v44, v1

    move v11, v2

    move-wide/from16 v1, v38

    invoke-direct {v10, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  Located "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " indexables in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v28

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v7, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  Collected garbage from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " files in "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v40

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms, average time = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Tested "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " fingerprints in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms, average time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v11, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Indexed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " classes (from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " files containing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v35 .. v36}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->formatByteString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v17

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms, average time per class = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v19

    invoke-virtual {v0, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Updated "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " paths in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v30

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms, average time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v42

    invoke-virtual {v0, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunkStats()Lorg/eclipse/jdt/internal/core/nd/db/Database$ChunkStats;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getCacheHits()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getCacheMisses()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v7, v3, v21

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    if-nez v7, :cond_a

    move-wide/from16 v10, v26

    goto :goto_8

    :cond_a
    long-to-double v10, v5

    mul-double/2addr v10, v8

    long-to-double v3, v3

    div-double/2addr v10, v3

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Cache misses = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-virtual {v4, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBytesRead()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBytesWritten()J

    move-result-wide v10

    sub-long v1, v1, v33

    long-to-double v1, v1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getCumulativeFlushTimeMs()J

    move-result-wide v12

    cmpl-double v3, v1, v26

    if-nez v3, :cond_b

    :goto_9
    move-wide/from16 v3, v26

    goto :goto_a

    :cond_b
    long-to-double v3, v12

    mul-double/2addr v3, v8

    div-double v26, v3, v1

    goto :goto_9

    :goto_a
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  Reads = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->formatByteString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", writes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->formatByteString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getAverageReadBytesPerMs()D

    move-result-wide v7

    mul-double v7, v7, v24

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getAverageWriteBytesPerMs()D

    move-result-wide v17

    move-wide/from16 v19, v1

    mul-double v1, v17, v24

    const-wide/32 v17, 0x64000

    cmp-long v5, v5, v17

    if-lez v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  Read speed = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    double-to-long v6, v7

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->formatByteString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    cmp-long v5, v10, v17

    if-lez v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  Write speed = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    double-to-long v1, v1

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->formatByteString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/s"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Time spent performing flushes = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ms ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Total indexing time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v2, v19

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_ALLOCATIONS:Z

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    move-object/from16 v8, p0

    :try_start_2
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->reportFreeBlocks()V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getMemoryStats()Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;

    move-result-object v0

    iget-object v3, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getTypeRegistry()Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->printMemoryStats(Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_13

    :try_start_4
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_f

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_f
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_b
    if-eqz v1, :cond_10

    if-eq v1, v0, :cond_11

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_10
    move-object v1, v0

    :cond_11
    :goto_c
    throw v1

    :cond_12
    move-object/from16 v8, p0

    :cond_13
    :goto_d
    return-void

    :catchall_2
    move-exception v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock()V

    throw v0

    :cond_14
    move-object/from16 v44, v1

    move-object/from16 v37, v5

    move-object/from16 p1, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    const/4 v4, 0x1

    move v11, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v9, v23

    invoke-virtual {v9, v1}, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->get(Lorg/eclipse/core/runtime/IPath;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v10, v44

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v10

    move v2, v11

    move-wide/from16 v10, v33

    move-wide/from16 v12, v35

    move-object/from16 v9, p1

    goto/16 :goto_3

    :cond_15
    move-object/from16 v9, p1

    move v2, v11

    move-wide/from16 v10, v33

    move-wide/from16 v12, v35

    move-object/from16 v1, v44

    goto/16 :goto_3

    :cond_16
    move-object/from16 p1, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v9, v23

    const/4 v12, 0x1

    move v11, v2

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->getNewFingerprint()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->getSize()J

    move-result-wide v1

    long-to-double v1, v1

    mul-double v1, v1, v28

    double-to-int v1, v1

    invoke-virtual {v9, v10}, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->get(Lorg/eclipse/core/runtime/IPath;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->getNewFingerprint()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    move-result-object v23

    invoke-virtual {v4, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v31

    move-object/from16 v1, p0

    move-wide/from16 v2, v33

    move-object/from16 v32, v4

    move-object v4, v10

    move-object v10, v5

    move-object v5, v13

    move-object v13, v6

    move-object/from16 v6, v23

    move/from16 v23, v7

    move-object/from16 v7, v31

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanArchive(JLorg/eclipse/core/runtime/IPath;Ljava/util/List;Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;Lorg/eclipse/core/runtime/IProgressMonitor;)I

    move-result v1

    add-int v2, v11, v1

    move-object v5, v10

    move-object v6, v13

    move/from16 v7, v23

    move-object/from16 v4, v32

    move-wide/from16 v10, v33

    move-wide/from16 v12, v35

    move-object/from16 v23, v9

    move-object/from16 v9, p1

    goto/16 :goto_2

    :cond_17
    move-object/from16 p1, v9

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-object/from16 v9, v23

    const/4 v12, 0x1

    move-object v10, v5

    move-object v13, v6

    move/from16 v23, v7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->getNewFingerprint()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->getSize()J

    move-result-wide v4

    add-long v4, v35, v4

    move-wide v12, v4

    move-object/from16 v23, v9

    move-object v5, v10

    move-wide/from16 v10, v33

    move-object/from16 v9, p1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public rescanAll()V
    .locals 2

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->DEBUG_SCHEDULING:Z

    if-eqz v0, :cond_0

    const-string v0, "Scheduling rescanAll now"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->automaticIndexingMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->enableAutomaticIndexing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->indexerDirtiedWhileDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->indexerDirtiedWhileDisabled:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/jobs/Job;->schedule()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public waitForIndex(ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1

    .line 8
    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->waitForIndex(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/jobs/Job;->getState()I

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    return-void

    .line 11
    :cond_3
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1
.end method

.method public waitForIndex(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->automaticIndexingMutex:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->enableAutomaticIndexing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->indexerDirtiedWhileDisabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 4
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/jobs/Job;->schedule()V

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->rescanJob:Lorg/eclipse/core/runtime/jobs/Job;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/eclipse/core/runtime/jobs/Job;->join(JLorg/eclipse/core/runtime/IProgressMonitor;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 6
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 7
    :catch_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1
.end method
