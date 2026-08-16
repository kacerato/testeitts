.class Lorg/eclipse/jdt/internal/core/search/processing/JobManager$1ProgressJob;
.super Lorg/eclipse/core/runtime/jobs/Job;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressJob"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/processing/JobManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/processing/JobManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager$1ProgressJob;->this$0:Lorg/eclipse/jdt/internal/core/search/processing/JobManager;

    invoke-direct {p0, p2}, Lorg/eclipse/core/runtime/jobs/Job;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/IStatus;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager$1ProgressJob;->this$0:Lorg/eclipse/jdt/internal/core/search/processing/JobManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->currentJob()Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->jobmanager_indexing:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->jobmanager_filesToIndex:Ljava/lang/String;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/search/processing/IJob;->getJobFamily()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager$1ProgressJob;->this$0:Lorg/eclipse/jdt/internal/core/search/processing/JobManager;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->awaitingJobsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->subTask(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager$1ProgressJob;->setName(Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager$1ProgressJob;->this$0:Lorg/eclipse/jdt/internal/core/search/processing/JobManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->currentJob()Lorg/eclipse/jdt/internal/core/search/processing/IJob;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p1, Lorg/eclipse/core/runtime/Status;->OK_STATUS:Lorg/eclipse/core/runtime/IStatus;

    return-object p1
.end method
