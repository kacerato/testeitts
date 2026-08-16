.class final Landroidx/room/AutoCloser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mAutoCloseTimeoutInMs:J

.field final mAutoCloser:Ljava/lang/Runnable;

.field mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

.field private mDelegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field private final mExecuteAutoCloser:Ljava/lang/Runnable;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field mLastDecrementRefCountTimeStamp:J

.field final mLock:Ljava/lang/Object;

.field private mManuallyClosed:Z

.field mOnAutoCloseCallback:Ljava/lang/Runnable;

.field mRefCount:I


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "autoCloseTimeoutAmount",
            "autoCloseTimeUnit",
            "autoCloseExecutor"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/room/AutoCloser;->mDelegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/room/AutoCloser;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Landroidx/room/AutoCloser;->mOnAutoCloseCallback:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/room/AutoCloser;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/room/AutoCloser;->mRefCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/room/AutoCloser;->mLastDecrementRefCountTimeStamp:J

    iput-boolean v0, p0, Landroidx/room/AutoCloser;->mManuallyClosed:Z

    new-instance v0, Landroidx/room/AutoCloser$1;

    invoke-direct {v0, p0}, Landroidx/room/AutoCloser$1;-><init>(Landroidx/room/AutoCloser;)V

    iput-object v0, p0, Landroidx/room/AutoCloser;->mExecuteAutoCloser:Ljava/lang/Runnable;

    new-instance v0, Landroidx/room/AutoCloser$2;

    invoke-direct {v0, p0}, Landroidx/room/AutoCloser$2;-><init>(Landroidx/room/AutoCloser;)V

    iput-object v0, p0, Landroidx/room/AutoCloser;->mAutoCloser:Ljava/lang/Runnable;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/room/AutoCloser;->mAutoCloseTimeoutInMs:J

    iput-object p4, p0, Landroidx/room/AutoCloser;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public closeDatabaseIfOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/room/AutoCloser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/room/AutoCloser;->mManuallyClosed:Z

    iget-object v1, p0, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public decrementCountAndScheduleClose()V
    .locals 5

    iget-object v0, p0, Landroidx/room/AutoCloser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/room/AutoCloser;->mRefCount:I

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/room/AutoCloser;->mRefCount:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/room/AutoCloser;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/room/AutoCloser;->mExecuteAutoCloser:Ljava/lang/Runnable;

    iget-wide v3, p0, Landroidx/room/AutoCloser;->mAutoCloseTimeoutInMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ref count is 0 or lower but we\'re supposed to decrement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/arch/core/util/Function<",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "TV;>;)TV;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroidx/room/AutoCloser;->incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    throw p1
.end method

.method public getDelegateDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 2

    iget-object v0, p0, Landroidx/room/AutoCloser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRefCountForTest()I
    .locals 2

    iget-object v0, p0, Landroidx/room/AutoCloser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/room/AutoCloser;->mRefCount:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 3

    iget-object v0, p0, Landroidx/room/AutoCloser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/room/AutoCloser;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/room/AutoCloser;->mExecuteAutoCloser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, p0, Landroidx/room/AutoCloser;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/room/AutoCloser;->mRefCount:I

    iget-boolean v1, p0, Landroidx/room/AutoCloser;->mManuallyClosed:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/room/AutoCloser;->mDelegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Landroidx/room/AutoCloser;->mDelegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AutoCloser has not been initialized. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempting to open already closed database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateOpenHelper"
        }
    .end annotation

    iget-object v0, p0, Landroidx/room/AutoCloser;->mDelegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    if-eqz v0, :cond_0

    const-string p1, "ROOM"

    const-string v0, "AutoCloser initialized multiple times. Please file a bug against room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/room/AutoCloser;->mDelegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/room/AutoCloser;->mManuallyClosed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setAutoCloseCallback(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onAutoClose"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/AutoCloser;->mOnAutoCloseCallback:Ljava/lang/Runnable;

    return-void
.end method
