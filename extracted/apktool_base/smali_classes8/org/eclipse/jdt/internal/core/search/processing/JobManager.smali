.class public abstract Lorg/eclipse/jdt/internal/core/search/processing/JobManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static VERBOSE:Z = false


# instance fields
.field public activated:Z

.field private awaitingClients:I

.field protected awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

.field private enableCount:I

.field protected executing:Z

.field protected jobEnd:I

.field protected jobStart:I

.field protected processingThread:Ljava/lang/Thread;

.field protected progressJob:Lorg/eclipse/core/runtime/jobs/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->executing:Z

    const/4 v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enableCount:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->activated:Z

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingClients:I

    return-void
.end method


# virtual methods
.method public activateProcessing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->activated:Z

    return-void
.end method

.method public declared-synchronized awaitingJobsCount()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->activated:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized currentJob()Lorg/eclipse/jdt/internal/core/search/processing/IJob;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enableCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    aget-object v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized disable()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enableCount:I

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "DISABLING background indexing"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public discardJobs(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DISCARD   background job family - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->currentJob()Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->disable()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    :try_start_2
    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->belongsTo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->cancel()V

    :catch_0
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->executing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    :try_start_3
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-> waiting end of current background job - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_3
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    :goto_2
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    const/4 v1, -0x1

    :goto_3
    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    if-le v0, v2, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enable()V

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DISCARD   DONE with background job family - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_6
    :try_start_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    aget-object v3, v2, v0

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    aput-object v4, v2, v0

    if-eqz p1, :cond_7

    invoke-interface {v3, p1}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->belongsTo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    add-int/lit8 v1, v1, 0x1

    aput-object v3, v2, v1

    goto :goto_4

    :cond_7
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-> discarding background job  - "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_8
    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->cancel()V

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enable()V

    throw p1
.end method

.method public declared-synchronized enable()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enableCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enableCount:I

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "ENABLING  background indexing"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isJobWaiting(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized moveToNextJob()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    if-gt v0, v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    const/4 v4, 0x0

    aput-object v4, v2, v0

    if-le v3, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyIdle(J)V
    .locals 0

    return-void
.end method

.method public performConcurrentJob(Lorg/eclipse/jdt/internal/core/search/processing/IJob;ILorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "STARTING  concurrent job - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->ensureReadyToRun()V

    :try_start_0
    invoke-static/range {p3 .. p3}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobsCount()I

    move-result v4

    if-lez v4, :cond_14

    const/4 v4, 0x1

    if-eq v0, v4, :cond_10

    const/4 v5, 0x2

    if-eq v0, v5, :cond_d

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    goto/16 :goto_6

    :cond_1
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    iget-object v6, v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    const/4 v7, -0x1

    if-nez v6, :cond_2

    move v8, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Thread;->getPriority()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    if-eqz v6, :cond_3

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getPriority()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    :goto_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v9, v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingClients:I

    add-int/2addr v9, v4

    iput v9, v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingClients:I

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v12, v5

    move-object v11, v10

    move v10, v9

    :goto_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobsCount()I

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-gtz v13, :cond_4

    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget v0, v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingClients:I

    sub-int/2addr v0, v4

    iput v0, v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingClients:I

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v6, :cond_14

    if-le v8, v7, :cond_14

    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v6, v8}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_4
    :try_start_9
    invoke-virtual {v0}, Lorg/eclipse/core/runtime/SubMonitor;->isCanceled()Z

    move-result v14

    if-nez v14, :cond_b

    iget-object v14, v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    if-eqz v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->currentJob()Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    move-result-object v14

    if-eqz v14, :cond_9

    if-eq v14, v11, :cond_9

    sget-boolean v11, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "-> NOT READY - waiting until ready - "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_5
    sget-object v11, Lorg/eclipse/jdt/internal/core/util/Messages;->jobmanager_filesToIndex:Ljava/lang/String;

    invoke-interface {v14}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->getJobFamily()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v15, v7}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/eclipse/core/runtime/SubMonitor;->subTask(Ljava/lang/String;)V

    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v13, v5, :cond_6

    move v11, v7

    goto :goto_3

    :cond_6
    int-to-float v11, v5

    int-to-float v15, v13

    div-float/2addr v11, v15

    :goto_3
    if-le v12, v13, :cond_7

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v11

    add-float/2addr v9, v12

    goto :goto_4

    :cond_7
    add-float/2addr v9, v11

    :goto_4
    sub-float v11, v9, v10

    cmpl-float v7, v11, v7

    if-ltz v7, :cond_8

    float-to-int v7, v11

    invoke-virtual {v0, v7}, Lorg/eclipse/core/runtime/SubMonitor;->worked(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v10, v9

    :cond_8
    move v12, v13

    move-object v11, v14

    :cond_9
    :try_start_a
    sget-boolean v7, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "-> GOING TO SLEEP - "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_a
    const-wide/16 v13, 0x32

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_0
    const/4 v7, -0x1

    goto/16 :goto_2

    :cond_b
    :try_start_b
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_5
    :try_start_e
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    iget v3, v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingClients:I

    sub-int/2addr v3, v4

    iput v3, v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingClients:I

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v6, :cond_c

    const/4 v3, -0x1

    if-le v8, v3, :cond_c

    :try_start_10
    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v6, v8}, Ljava/lang/Thread;->setPriority(I)V

    :cond_c
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catchall_4
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v0

    :cond_d
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "-> NOT READY - cancelling - "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_e
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "CANCELED concurrent job - "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0

    :cond_10
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "-> NOT READY - forcing immediate - "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_11
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->disable()V

    invoke-interface {v2, v3}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enable()V

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FINISHED  concurrent job - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_12
    invoke-static/range {p3 .. p3}, Lorg/eclipse/core/runtime/SubMonitor;->done(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v3, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FINISHED  concurrent job - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_13
    return v0

    :catchall_5
    move-exception v0

    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enable()V

    throw v0

    :cond_14
    :goto_6
    invoke-interface {v2, v3}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    invoke-static/range {p3 .. p3}, Lorg/eclipse/core/runtime/SubMonitor;->done(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v3, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FINISHED  concurrent job - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_15
    return v0

    :goto_7
    invoke-static/range {p3 .. p3}, Lorg/eclipse/core/runtime/SubMonitor;->done(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v3, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FINISHED  concurrent job - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_16
    throw v0
.end method

.method public abstract processName()Ljava/lang/String;
.end method

.method public declared-synchronized request(Lorg/eclipse/jdt/internal/core/search/processing/IJob;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->ensureReadyToRun()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    if-ne v2, v1, :cond_2

    iget v3, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    const/16 v4, 0x32

    const/4 v5, 0x0

    if-ge v2, v4, :cond_1

    if-ge v2, v3, :cond_1

    invoke-static {v0, v3, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    :goto_0
    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iput v5, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    aput-object p1, v0, v1

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REQUEST   background job - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AWAITING JOBS count: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobsCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public reset()V
    .locals 2

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "Reset"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->discardJobs(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public run()V
    .locals 14

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->activateProcessing()V

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->progressJob:Lorg/eclipse/core/runtime/jobs/Job;

    const-wide/16 v1, -0x1

    move-wide v3, v1

    :catch_0
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_1

    return-void

    :cond_1
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    if-nez v5, :cond_2

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->currentJob()Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    move-result-object v5

    if-nez v5, :cond_5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->progressJob:Lorg/eclipse/core/runtime/jobs/Job;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/eclipse/core/runtime/jobs/Job;->cancel()Z

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->progressJob:Lorg/eclipse/core/runtime/jobs/Job;

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gez v6, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {p0, v6, v7}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->notifyIdle(J)V

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    :cond_5
    move-wide v3, v1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_6

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->notifyIdle(J)V

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_6

    :catch_2
    move-exception v1

    goto/16 :goto_7

    :cond_6
    sget-boolean v6, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobsCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " awaiting jobs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "STARTING background job - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    const-wide/16 v6, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_4
    iput-boolean v9, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->executing:Z

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->progressJob:Lorg/eclipse/core/runtime/jobs/Job;

    if-nez v10, :cond_8

    new-instance v10, Lorg/eclipse/jdt/internal/core/search/processing/JobManager$1ProgressJob;

    sget-object v11, Lorg/eclipse/jdt/internal/core/util/Messages;->jobmanager_indexing:Ljava/lang/String;

    const-string v12, ""

    const-string v13, ""

    invoke-static {v11, v12, v13}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager$1ProgressJob;-><init>(Lorg/eclipse/jdt/internal/core/search/processing/JobManager;Ljava/lang/String;)V

    iput-object v10, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->progressJob:Lorg/eclipse/core/runtime/jobs/Job;

    const/16 v11, 0x1e

    invoke-virtual {v10, v11}, Lorg/eclipse/core/runtime/jobs/Job;->setPriority(I)V

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->progressJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {v10, v9}, Lorg/eclipse/core/runtime/jobs/Job;->setSystem(Z)V

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->progressJob:Lorg/eclipse/core/runtime/jobs/Job;

    invoke-virtual {v9}, Lorg/eclipse/core/runtime/jobs/Job;->schedule()V

    goto :goto_3

    :catchall_1
    move-exception v9

    goto :goto_4

    :cond_8
    :goto_3
    invoke-interface {v5, v0}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iput-boolean v8, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->executing:Z

    sget-boolean v8, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FINISHED background job - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->moveToNextJob()V

    iget v8, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingClients:I

    if-nez v8, :cond_0

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->waitNeeded()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-boolean v8, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "WAITING after job - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :goto_4
    iput-boolean v8, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->executing:Z

    sget-boolean v8, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "FINISHED background job - "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->moveToNextJob()V

    iget v8, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingClients:I

    if-nez v8, :cond_d

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->waitNeeded()Z

    move-result v8

    if-eqz v8, :cond_d

    sget-boolean v8, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "WAITING after job - "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_c
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :cond_d
    throw v9
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1

    :goto_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_e

    instance-of v2, v1, Ljava/lang/ThreadDeath;

    if-nez v2, :cond_e

    const-string v2, "Background Indexer Crash Recovery"

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->discardJobs(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->reset()V

    :cond_e
    throw v1

    :goto_7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_f

    const-string v2, "Background Indexer Crash Recovery"

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->discardJobs(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->reset()V

    :cond_f
    throw v1
.end method

.method public shutdown()V
    .locals 2

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "Shutdown"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->disable()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->discardJobs(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->processingThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->progressJob:Lorg/eclipse/core/runtime/jobs/Job;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/jobs/Job;->cancel()Z

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/jobs/Job;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "Enable count:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->enableCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobEnd:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    const-string v3, "Jobs in queue:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    const/16 v4, 0xf

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " - job["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobs:[Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    iget v5, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->jobStart:I

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
