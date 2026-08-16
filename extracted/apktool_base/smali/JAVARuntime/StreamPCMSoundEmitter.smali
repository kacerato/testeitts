.class public LJAVARuntime/StreamPCMSoundEmitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Sound"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/StreamPCMSoundEmitter$State;,
        LJAVARuntime/StreamPCMSoundEmitter$Callback;
    }
.end annotation


# instance fields
.field public transient instance:LFc/e;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LFc/e;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/StreamPCMSoundEmitter$Callback;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, LFc/e;

    new-instance v1, LJAVARuntime/StreamPCMSoundEmitter$1;

    invoke-direct {v1, p0, p1}, LJAVARuntime/StreamPCMSoundEmitter$1;-><init>(LJAVARuntime/StreamPCMSoundEmitter;LJAVARuntime/StreamPCMSoundEmitter$Callback;)V

    invoke-direct {v0, v1}, LFc/e;-><init>(LFc/e$a;)V

    iput-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callback can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(LJAVARuntime/StreamPCMSoundEmitter$State;)LFc/e$b;
    .locals 0

    invoke-static {p0}, LJAVARuntime/StreamPCMSoundEmitter;->convert(LJAVARuntime/StreamPCMSoundEmitter$State;)LFc/e$b;

    move-result-object p0

    return-object p0
.end method

.method private static convert(LJAVARuntime/StreamPCMSoundEmitter$State;)LFc/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, LFc/e$b;->STOPPED:LFc/e$b;

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    .line 3
    sget-object p0, LFc/e$b;->STOPPED:LFc/e$b;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, LFc/e$b;->PAUSED:LFc/e$b;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, LFc/e$b;->PLAYING:LFc/e$b;

    return-object p0
.end method

.method private static convert(LFc/e$b;)LJAVARuntime/StreamPCMSoundEmitter$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 6
    sget-object p0, LJAVARuntime/StreamPCMSoundEmitter$State;->STOPPED:LJAVARuntime/StreamPCMSoundEmitter$State;

    return-object p0

    .line 7
    :cond_0
    sget-object v0, LJAVARuntime/StreamPCMSoundEmitter$2;->$SwitchMap$com$itsmagic$engine$Engines$Sound$Adapters$StreamPCMSoundEmitter$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    .line 8
    sget-object p0, LJAVARuntime/StreamPCMSoundEmitter$State;->STOPPED:LJAVARuntime/StreamPCMSoundEmitter$State;

    return-object p0

    .line 9
    :cond_1
    sget-object p0, LJAVARuntime/StreamPCMSoundEmitter$State;->PAUSED:LJAVARuntime/StreamPCMSoundEmitter$State;

    return-object p0

    .line 10
    :cond_2
    sget-object p0, LJAVARuntime/StreamPCMSoundEmitter$State;->PLAYING:LJAVARuntime/StreamPCMSoundEmitter$State;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, LFc/e;->destroy()V

    return-void
.end method

.method public getCallbackState()LJAVARuntime/StreamPCMSoundEmitter$State;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, LFc/e;->c0()LFc/e$b;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/StreamPCMSoundEmitter;->convert(LFc/e$b;)LJAVARuntime/StreamPCMSoundEmitter$State;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSecond()F
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->B()F

    move-result v0

    return v0
.end method

.method public getLeftVolume()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getLeftVolume()F

    move-result v0

    return v0
.end method

.method public getPitch()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getPitch()F

    move-result v0

    return v0
.end method

.method public getRightVolume()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getRightVolume()F

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getSampleRate()I

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getTotalSeconds()F
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->H()F

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getVolume()F

    move-result v0

    return v0
.end method

.method public isLoop()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->isLoop()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isStopped()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->isStopped()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->play()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "miliSeconds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "miliSeconds"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0, p1}, LFc/e;->seekTo(I)V

    return-void
.end method

.method public seekToSecond(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "second"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "second"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0, p1}, LFc/e;->O(F)V

    return-void
.end method

.method public setLeftVolume(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "leftVolume"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftVolume"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->setLeftVolume(F)V

    return-void
.end method

.method public setLoop(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "loop"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loop"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->setLoop(Z)V

    return-void
.end method

.method public setPitch(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "pitch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->setPitch(F)V

    return-void
.end method

.method public setRightVolume(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rightVolume"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightVolume"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->setRightVolume(F)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->setSpeed(F)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "volume"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->setVolume(F)V

    return-void
.end method

.method public setVolumes(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "left",
            "right"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->S(FF)V

    return-void
.end method

.method public setVolumes(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "left",
            "right",
            "volume"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "volume"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 4
    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->T(FFF)V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/StreamPCMSoundEmitter;->instance:LFc/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->stop()V

    return-void
.end method
