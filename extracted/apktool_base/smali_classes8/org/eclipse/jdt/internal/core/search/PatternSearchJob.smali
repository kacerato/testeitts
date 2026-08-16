.class public Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/processing/IJob;


# instance fields
.field protected areIndexesReady:Z

.field protected executionTime:J

.field protected participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

.field protected pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

.field protected requestor:Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;

.field protected scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->executionTime:J

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->requestor:Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;

    return-void
.end method


# virtual methods
.method public belongsTo(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public ensureReadyToRun()V
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->areIndexesReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->getIndexes(Lorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/jdt/internal/core/index/Index;

    :cond_0
    return-void
.end method

.method public execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 8

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->executionTime:J

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->getIndexes(Lorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    const/4 v4, 0x0

    move v5, v1

    :goto_0
    if-lt v4, v3, :cond_1

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-> execution time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->executionTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-static {p1}, Lorg/eclipse/core/runtime/SubMonitor;->done(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return v5

    :cond_1
    :try_start_1
    aget-object v6, v2, v4

    invoke-virtual {v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->search(Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_2
    invoke-static {p1}, Lorg/eclipse/core/runtime/SubMonitor;->done(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    throw v0
.end method

.method public getIndexes(Lorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/jdt/internal/core/index/Index;
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;->selectIndexURLs(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)[Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object v0

    array-length v1, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jdt/core/search/SearchParticipant;->selectIndexes(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)[Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    array-length v1, v0

    array-length v4, v0

    new-array v4, v4, [Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    array-length v5, v0

    move v6, v2

    :goto_0
    if-lt v6, v5, :cond_2

    move-object v0, v4

    :goto_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v4

    invoke-virtual {v4, v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndexes([Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object p1

    array-length v0, p1

    if-ne v0, v1, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->areIndexesReady:Z

    return-object p1

    :cond_2
    new-instance v7, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;

    aget-object v8, v0, v6

    invoke-interface {v8}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;-><init>(Ljava/io/File;Z)V

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getJobFamily()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public search(Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    if-nez v1, :cond_3

    return v0

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->enterRead()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->requestor:Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-object v5, p1

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->findIndexMatches(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    iget-wide p1, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->executionTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    add-long/2addr p1, v4

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->executionTime:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    instance-of p2, p1, Ljava/io/EOFException;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    const/4 p1, 0x0

    return p1

    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitRead()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "searching "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->pattern:Lorg/eclipse/jdt/core/search/SearchPattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/search/SearchPattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitNeeded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
