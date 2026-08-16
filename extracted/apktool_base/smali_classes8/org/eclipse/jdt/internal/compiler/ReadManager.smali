.class public Lorg/eclipse/jdt/internal/compiler/ReadManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final CACHE_SIZE:I = 0xf

.field static final START_CUSHION:I = 0x5

.field public static final THRESHOLD:I = 0xa


# instance fields
.field private caughtException:Ljava/lang/Throwable;

.field contentsRead:[[C

.field filesRead:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

.field nextAvailablePosition:I

.field nextFileToRead:I

.field readInProcessMarker:[C

.field readingThreads:[Ljava/lang/Thread;

.field readyToReadPosition:I

.field sleepingThreadCount:I

.field units:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readInProcessMarker:[C

    const/4 v1, 0x1

    const/16 v2, 0xf

    :try_start_0
    const-string v3, "java.lang.Runtime"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "availableProcessors"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    :catch_0
    :cond_0
    move v3, v0

    goto :goto_0

    :cond_1
    if-le v3, v2, :cond_2

    move v3, v2

    :cond_2
    :goto_0
    if-lez v3, :cond_4

    monitor-enter p0

    :try_start_1
    new-array v4, p2, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->units:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-static {p1, v0, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x5

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->nextFileToRead:I

    new-array p1, v2, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->filesRead:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    new-array p1, v2, [[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->contentsRead:[[C

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readyToReadPosition:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->nextAvailablePosition:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->sleepingThreadCount:I

    new-array p1, v3, [Ljava/lang/Thread;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readingThreads:[Ljava/lang/Thread;

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_3

    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readingThreads:[Ljava/lang/Thread;

    new-instance p2, Ljava/lang/Thread;

    const-string v0, "Compiler Source File Reader"

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    aput-object p2, p1, v3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readingThreads:[Ljava/lang/Thread;

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readingThreads:[Ljava/lang/Thread;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public getContents(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)[C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readingThreads:[Ljava/lang/Thread;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->units:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    array-length v1, v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->sleepingThreadCount:I

    array-length v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->filesRead:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readyToReadPosition:I

    aget-object v1, v1, v4

    const/4 v5, 0x0

    if-ne p1, v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->contentsRead:[[C

    aget-object v1, v1, v4

    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readInProcessMarker:[C

    if-eq v1, v4, :cond_4

    if-eqz v1, :cond_4

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->filesRead:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readyToReadPosition:I

    aput-object v5, v4, v6

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->contentsRead:[[C

    aput-object v5, v4, v6

    add-int/2addr v6, v2

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readyToReadPosition:I

    array-length v2, v4

    if-lt v6, v2, :cond_2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readyToReadPosition:I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_2
    :goto_2
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->sleepingThreadCount:I

    if-lez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_3
    move-object v5, v1

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->contentsRead:[[C

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readyToReadPosition:I

    aput-object v5, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0xfa

    :try_start_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->caughtException:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    instance-of p1, v1, Ljava/lang/Error;

    if-eqz p1, :cond_5

    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_5
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->contentsRead:[[C

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readyToReadPosition:I

    aget-object v1, v1, v4

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->units:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    array-length v1, v1

    move v2, v3

    :goto_3
    if-lt v2, v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->units:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    aget-object v4, v4, v2

    if-ne v4, p1, :cond_d

    :goto_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->units:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    array-length v1, v1

    if-ne v2, v1, :cond_9

    new-array v1, v3, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->units:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    goto :goto_5

    :cond_9
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->nextFileToRead:I

    if-lt v2, v1, :cond_a

    add-int/lit8 v2, v2, 0x5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->nextFileToRead:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readyToReadPosition:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->nextAvailablePosition:I

    const/16 v1, 0xf

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->filesRead:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    new-array v1, v1, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->contentsRead:[[C

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_b
    if-eqz v5, :cond_c

    return-object v5

    :cond_c
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object p1

    return-object p1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_e
    :goto_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->caughtException:Ljava/lang/Throwable;

    if-eqz v0, :cond_10

    instance-of p1, v0, Ljava/lang/Error;

    if-eqz p1, :cond_f

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_f
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_10
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 6

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readingThreads:[Ljava/lang/Thread;

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->nextFileToRead:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->units:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readingThreads:[Ljava/lang/Thread;

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->filesRead:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->nextAvailablePosition:I

    aget-object v2, v0, v1

    if-nez v2, :cond_6

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->nextFileToRead:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->units:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    array-length v4, v3

    if-lt v2, v4, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->nextFileToRead:I

    aget-object v2, v3, v2

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->nextAvailablePosition:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->contentsRead:[[C

    array-length v5, v4

    if-lt v3, v5, :cond_3

    const/4 v3, 0x0

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->nextAvailablePosition:I

    :cond_3
    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readInProcessMarker:[C

    aput-object v0, v4, v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v0

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->filesRead:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    aget-object v3, v3, v1

    if-ne v3, v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->contentsRead:[[C

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->contentsRead:[[C

    aput-object v0, v2, v1

    :cond_5
    monitor-exit p0

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_6
    :try_start_5
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->sleepingThreadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->sleepingThreadCount:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v0, 0xfa

    :try_start_6
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    :try_start_7
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->sleepingThreadCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->sleepingThreadCount:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readingThreads:[Ljava/lang/Thread;

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_7
    :goto_4
    return-void

    :goto_5
    monitor-enter p0

    :try_start_9
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->caughtException:Ljava/lang/Throwable;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ReadManager;->shutdown()V

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :goto_6
    monitor-enter p0

    :try_start_a
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->caughtException:Ljava/lang/Throwable;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ReadManager;->shutdown()V

    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ReadManager;->readingThreads:[Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
