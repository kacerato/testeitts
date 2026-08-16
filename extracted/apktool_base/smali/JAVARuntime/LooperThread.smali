.class public LJAVARuntime/LooperThread;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final BLOCK:Ljava/lang/Object;

.field private final runnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final stop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private thread:LJAVARuntime/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/LooperThread;->BLOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LJAVARuntime/LooperThread;->runnables:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LJAVARuntime/LooperThread;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic access$000(LJAVARuntime/LooperThread;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LJAVARuntime/LooperThread;->BLOCK:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(LJAVARuntime/LooperThread;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJAVARuntime/LooperThread;->runnables:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(LJAVARuntime/LooperThread;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LJAVARuntime/LooperThread;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$302(LJAVARuntime/LooperThread;LJAVARuntime/Thread;)LJAVARuntime/Thread;
    .locals 0

    iput-object p1, p0, LJAVARuntime/LooperThread;->thread:LJAVARuntime/Thread;

    return-object p1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/LooperThread;->BLOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LJAVARuntime/LooperThread;->runnables:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, LJAVARuntime/LooperThread;->BLOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LJAVARuntime/LooperThread;->thread:LJAVARuntime/Thread;

    if-nez v1, :cond_0

    new-instance v1, LJAVARuntime/Thread;

    new-instance v2, LJAVARuntime/LooperThread$1;

    invoke-direct {v2, p0}, LJAVARuntime/LooperThread$1;-><init>(LJAVARuntime/LooperThread;)V

    invoke-direct {v1, v2}, LJAVARuntime/Thread;-><init>(LJAVARuntime/Runnable;)V

    iput-object v1, p0, LJAVARuntime/LooperThread;->thread:LJAVARuntime/Thread;

    invoke-virtual {v1}, LJAVARuntime/Thread;->start()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Thread already started!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/LooperThread;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
