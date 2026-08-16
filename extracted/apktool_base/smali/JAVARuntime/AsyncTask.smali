.class public LJAVARuntime/AsyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Async"
    }
.end annotation


# direct methods
.method public constructor <init>(LJAVARuntime/AsyncRunnable;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "asyncRunnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asyncRunnable"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, LJAVARuntime/AsyncTask;->execute(LJAVARuntime/AsyncRunnable;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;LJAVARuntime/AsyncRunnable;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "userData",
            "asyncRunnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userData",
            "asyncRunnable"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0, p2, p1}, LJAVARuntime/AsyncTask;->execute(LJAVARuntime/AsyncRunnable;Ljava/lang/Object;)V

    return-void
.end method

.method private execute(LJAVARuntime/AsyncRunnable;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "asyncRunnable",
            "userData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "asyncRunnable",
            "userData"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Thread;

    new-instance v1, LJAVARuntime/AsyncTask$1;

    invoke-direct {v1, p0, p1, p2}, LJAVARuntime/AsyncTask$1;-><init>(LJAVARuntime/AsyncTask;LJAVARuntime/AsyncRunnable;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, LJAVARuntime/Thread;-><init>(LJAVARuntime/Runnable;)V

    invoke-virtual {v0}, LJAVARuntime/Thread;->start()V

    return-void
.end method
