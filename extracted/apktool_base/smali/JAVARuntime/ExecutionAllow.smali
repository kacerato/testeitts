.class public LJAVARuntime/ExecutionAllow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient onGameRunning:Z

.field private transient onGameStopped:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "onGameStopped",
            "onGameRunning"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onGameStopped",
            "onGameRunning"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    iput-boolean p1, p0, LJAVARuntime/ExecutionAllow;->onGameStopped:Z

    iput-boolean p2, p0, LJAVARuntime/ExecutionAllow;->onGameRunning:Z

    return-void
.end method


# virtual methods
.method public onGameRunning()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/ExecutionAllow;->onGameRunning:Z

    return v0
.end method

.method public onGameStopped()Z
    .locals 1

    iget-boolean v0, p0, LJAVARuntime/ExecutionAllow;->onGameStopped:Z

    return v0
.end method

.method public setOnGameRunning(Z)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "onGameRunning"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onGameRunning"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/ExecutionAllow;->onGameRunning:Z

    return-void
.end method

.method public setOnGameStopped(Z)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "onGameStopped"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onGameStopped"
        }
    .end annotation

    iput-boolean p1, p0, LJAVARuntime/ExecutionAllow;->onGameStopped:Z

    return-void
.end method
