.class public LJAVARuntime/Thread;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Thread"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/Thread$State;,
        LJAVARuntime/Thread$UncaughtExceptionHandler;
    }
.end annotation


# static fields
.field private static final removeThreads:Ljava/util/List;
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LJAVARuntime/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final runtimeThreads:Ljava/util/List;
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LJAVARuntime/Thread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient interruptCalled:Z

.field private transient target:LJAVARuntime/Runnable;

.field private final transient thread:Ljava/lang/Thread;

.field private transient uncaughtExceptionHandler:LJAVARuntime/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LJAVARuntime/Thread;->runtimeThreads:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LJAVARuntime/Thread;->removeThreads:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LJAVARuntime/Thread;->interruptCalled:Z

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requireSpace()V

    .line 5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LJAVARuntime/Thread$4;

    invoke-direct {v1, p0}, LJAVARuntime/Thread$4;-><init>(LJAVARuntime/Thread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 7
    invoke-static {p0}, LJAVARuntime/Thread;->addThread(LJAVARuntime/Thread;)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Runnable;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, LJAVARuntime/Thread;->interruptCalled:Z

    .line 11
    invoke-static {}, LJAVARuntime/Thread;->requireSpace()V

    .line 12
    iput-object p1, p0, LJAVARuntime/Thread;->target:LJAVARuntime/Runnable;

    .line 13
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, LJAVARuntime/Thread$5;

    invoke-direct {v0, p0}, LJAVARuntime/Thread$5;-><init>(LJAVARuntime/Thread;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 15
    invoke-static {p0}, LJAVARuntime/Thread;->addThread(LJAVARuntime/Thread;)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Runnable;Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "target",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "name"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, LJAVARuntime/Thread;->interruptCalled:Z

    .line 43
    invoke-static {}, LJAVARuntime/Thread;->requireSpace()V

    .line 44
    iput-object p1, p0, LJAVARuntime/Thread;->target:LJAVARuntime/Runnable;

    .line 45
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, LJAVARuntime/Thread$9;

    invoke-direct {v0, p0}, LJAVARuntime/Thread$9;-><init>(LJAVARuntime/Thread;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, LJAVARuntime/Thread;->addThread(LJAVARuntime/Thread;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, LJAVARuntime/Thread;->interruptCalled:Z

    .line 27
    invoke-static {}, LJAVARuntime/Thread;->requireSpace()V

    .line 28
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LJAVARuntime/Thread$7;

    invoke-direct {v1, p0}, LJAVARuntime/Thread$7;-><init>(LJAVARuntime/Thread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, LJAVARuntime/Thread;->addThread(LJAVARuntime/Thread;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;LJAVARuntime/Runnable;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "group",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "group",
            "target"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, LJAVARuntime/Thread;->interruptCalled:Z

    .line 19
    invoke-static {}, LJAVARuntime/Thread;->requireSpace()V

    .line 20
    iput-object p2, p0, LJAVARuntime/Thread;->target:LJAVARuntime/Runnable;

    .line 21
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, LJAVARuntime/Thread$6;

    invoke-direct {v0, p0}, LJAVARuntime/Thread$6;-><init>(LJAVARuntime/Thread;)V

    invoke-direct {p2, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object p2, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    const/4 p1, 0x1

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 23
    invoke-static {p0}, LJAVARuntime/Thread;->addThread(LJAVARuntime/Thread;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;LJAVARuntime/Runnable;Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "group",
            "target",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "target",
            "name"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, LJAVARuntime/Thread;->interruptCalled:Z

    .line 52
    invoke-static {}, LJAVARuntime/Thread;->requireSpace()V

    .line 53
    iput-object p2, p0, LJAVARuntime/Thread;->target:LJAVARuntime/Runnable;

    .line 54
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, LJAVARuntime/Thread$10;

    invoke-direct {p2, p0}, LJAVARuntime/Thread$10;-><init>(LJAVARuntime/Thread;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    const/4 p2, 0x1

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setPriority(I)V

    .line 56
    invoke-virtual {p1, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, LJAVARuntime/Thread;->addThread(LJAVARuntime/Thread;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;LJAVARuntime/Runnable;Ljava/lang/String;J)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "group",
            "target",
            "name",
            "stackSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "target",
            "name",
            "stackSize"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, LJAVARuntime/Thread;->interruptCalled:Z

    .line 61
    invoke-static {}, LJAVARuntime/Thread;->requireSpace()V

    .line 62
    iput-object p2, p0, LJAVARuntime/Thread;->target:LJAVARuntime/Runnable;

    .line 63
    new-instance p2, Ljava/lang/Thread;

    new-instance v3, LJAVARuntime/Thread$11;

    invoke-direct {v3, p0}, LJAVARuntime/Thread$11;-><init>(LJAVARuntime/Thread;)V

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    iput-object p2, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 65
    invoke-static {p0}, LJAVARuntime/Thread;->addThread(LJAVARuntime/Thread;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "group",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "group",
            "name"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, LJAVARuntime/Thread;->interruptCalled:Z

    .line 35
    invoke-static {}, LJAVARuntime/Thread;->requireSpace()V

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LJAVARuntime/Thread$8;

    invoke-direct {v1, p0}, LJAVARuntime/Thread$8;-><init>(LJAVARuntime/Thread;)V

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    const/4 p1, 0x1

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, LJAVARuntime/Thread;->addThread(LJAVARuntime/Thread;)V

    return-void
.end method

.method private static addThread(LJAVARuntime/Thread;)V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thread"
        }
    .end annotation

    sget-object v0, LJAVARuntime/Thread;->runtimeThreads:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static countThreads()I
    .locals 2
    .annotation runtime LH6/g;
    .end annotation

    sget-object v0, LJAVARuntime/Thread;->runtimeThreads:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static dumpStack()V
    .locals 0

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    return-void
.end method

.method public static interruptAll()V
    .locals 4
    .annotation runtime LH6/g;
    .end annotation

    sget-object v0, LJAVARuntime/Thread;->runtimeThreads:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, LJAVARuntime/Thread;->runtimeThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJAVARuntime/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, LJAVARuntime/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, LJAVARuntime/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, LJAVARuntime/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static isEngineThread()Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    invoke-static {}, LK8/a;->q()Z

    move-result v0

    return v0
.end method

.method public static isOpenglEngineThread()Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    invoke-static {}, LK8/a;->r()Z

    move-result v0

    return v0
.end method

.method public static requestEngineThread()V
    .locals 2
    .annotation runtime LH6/g;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->isEngineThread()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Can\'t execute game operations from a different thread, use Thread.runOnEngine(Runnable) to sync with the game before applying operations!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestOpenglEngineThread()V
    .locals 2
    .annotation runtime LH6/g;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->isOpenglEngineThread()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Can\'t execute opengl operations from a different thread, use Thread.runOnEngine(Runnable) to sync with the game before applying operations!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static requireSpace()V
    .locals 2
    .annotation runtime LH6/g;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->countThreads()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Cannot allocate more threads than 200!!! make sure to finish open threads before creating new ones."

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static runOnEngine(FLJAVARuntime/Runnable;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "delaySeconds",
            "runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delaySeconds",
            "runnable"
        }
    .end annotation

    .line 3
    new-instance v0, Lob/b;

    new-instance v1, LJAVARuntime/Thread$2;

    invoke-direct {v1, p1}, LJAVARuntime/Thread$2;-><init>(LJAVARuntime/Runnable;)V

    invoke-direct {v0, v1, p0}, Lob/b;-><init>(Lob/b$a;F)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void
.end method

.method public static runOnEngine(LJAVARuntime/Runnable;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 2
    new-instance v0, LJAVARuntime/Thread$1;

    invoke-direct {v0, p0}, LJAVARuntime/Thread$1;-><init>(LJAVARuntime/Runnable;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, LJAVARuntime/Thread;->runOnEngine(LJAVARuntime/Runnable;I)V

    return-void
.end method

.method private static runOnEngine(LJAVARuntime/Runnable;I)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "tries"
        }
    .end annotation

    .line 1
    invoke-static {p0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnUIThread(LJAVARuntime/Runnable;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Thread$3;

    invoke-direct {v0, p0}, LJAVARuntime/Thread$3;-><init>(LJAVARuntime/Runnable;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sleep(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "milis"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static sleep(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "milis",
            "nanos"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static update()V
    .locals 5
    .annotation runtime LH6/g;
    .end annotation

    sget-object v0, LJAVARuntime/Thread;->runtimeThreads:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, LJAVARuntime/Thread;->runtimeThreads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJAVARuntime/Thread;

    invoke-virtual {v3}, LJAVARuntime/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, LJAVARuntime/Thread;->removeThreads:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    sget-object v2, LJAVARuntime/Thread;->removeThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJAVARuntime/Thread;

    sget-object v3, LJAVARuntime/Thread;->runtimeThreads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public getState()LJAVARuntime/Thread$State;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/Thread$State;->valueOf(Ljava/lang/String;)LJAVARuntime/Thread$State;

    move-result-object v0

    return-object v0
.end method

.method public getThreadGroup()Ljava/lang/ThreadGroup;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method public getUncaughtExceptionHandler()LJAVARuntime/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread;->uncaughtExceptionHandler:LJAVARuntime/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LJAVARuntime/Thread;->interruptCalled:Z

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isInterruptCalled()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/Thread;->interruptCalled:Z

    return v0
.end method

.method public isInterrupted()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method public join()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method

.method public join(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->join(J)V

    return-void
.end method

.method public join(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "millis",
            "nanos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/Thread;->join(JI)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread;->target:LJAVARuntime/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LJAVARuntime/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cl"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setPriority(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "newPriority"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPriority"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method

.method public setUncaughtExceptionHandler(LJAVARuntime/Thread$UncaughtExceptionHandler;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eh"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Thread;->uncaughtExceptionHandler:LJAVARuntime/Thread$UncaughtExceptionHandler;

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    new-instance v1, LJAVARuntime/Thread$12;

    invoke-direct {v1, p0, p1}, LJAVARuntime/Thread$12;-><init>(LJAVARuntime/Thread;LJAVARuntime/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Thread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
