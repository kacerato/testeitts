.class public Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final PROCESSED_QUEUE_SIZE:I = 0xc


# instance fields
.field volatile availableIndex:I

.field private caughtException:Ljava/lang/Throwable;

.field compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

.field volatile currentIndex:I

.field private processingThread:Ljava/lang/Thread;

.field volatile size:I

.field volatile sleepCount:I

.field private unitIndex:I

.field unitToProcess:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

.field units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/Compiler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->currentIndex:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->availableIndex:I

    const/16 p2, 0xc

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->size:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->sleepCount:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->size:I

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/lang/Thread;

    const-string p2, "Compiler Processing Task"

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->processingThread:Ljava/lang/Thread;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->processingThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized addNextUnit(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 4

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->availableIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->availableIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->availableIndex:I

    aput-object p1, v0, v2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->availableIndex:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->size:I

    if-lt p1, v0, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->availableIndex:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->sleepCount:I

    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->sleepCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0xfa

    :try_start_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->sleepCount:I

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public removeNextUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->currentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->caughtException:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->processingThread:Ljava/lang/Thread;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->caughtException:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    monitor-exit p0

    return-object v1

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->sleepCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x64

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->sleepCount:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->currentIndex:I

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->currentIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->currentIndex:I

    aput-object v1, v3, v4

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->currentIndex:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->size:I

    if-lt v1, v3, :cond_5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->currentIndex:I

    :cond_5
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->sleepCount:I

    const/4 v3, 0x1

    if-lt v1, v3, :cond_6

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->sleepCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->sleepCount:I

    const/4 v4, 0x4

    if-le v1, v4, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->sleepCount:I

    const/16 v4, 0x8

    if-le v1, v4, :cond_6

    move v2, v3

    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_7
    return-object v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->processingThread:Ljava/lang/Thread;

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitToProcess:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-nez v0, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitIndex:I

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/Compiler;->shouldCleanup(I)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->processingThread:Ljava/lang/Thread;

    if-nez v5, :cond_3

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitIndex:I

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/Compiler;->getUnitToProcess(I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitToProcess:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-nez v5, :cond_4

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->processingThread:Ljava/lang/Thread;

    monitor-exit p0

    return-void

    :cond_4
    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitIndex:I

    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-boolean v8, v8, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasBeenAccepted:Z

    if-eqz v8, :cond_5

    monitor-exit p0

    goto :goto_0

    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_processing:Ljava/lang/String;

    new-instance v10, Ljava/lang/String;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v9, v10}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/Compiler;->reportProgress(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v8, v8, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz v8, :cond_6

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/Compiler;->out:Ljava/io/PrintWriter;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_process:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitToProcess:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v7, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_6
    :goto_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->compiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitToProcess:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v5, v7, v6}, Lorg/eclipse/jdt/internal/compiler/Compiler;->process(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitToProcess:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_7
    :goto_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitToProcess:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->addNextUnit(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    goto/16 :goto_0

    :goto_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitToProcess:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    :cond_8
    throw v0
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    monitor-enter p0

    :try_start_6
    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->processingThread:Ljava/lang/Thread;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->caughtException:Ljava/lang/Throwable;

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :goto_7
    monitor-enter p0

    :try_start_7
    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->processingThread:Ljava/lang/Thread;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->caughtException:Ljava/lang/Throwable;

    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public shutdown()V
    .locals 3

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->processingThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->processingThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const-wide/16 v1, 0xfa

    :try_start_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    :goto_2
    return-void
.end method
