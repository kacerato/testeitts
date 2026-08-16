.class public LJAVARuntime/PCMSoundEmitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Sound"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LJAVARuntime/NativeShortBuffer;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "leftChannel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftChannel"
        }
    .end annotation

    .line 15
    invoke-static {}, LJAVARuntime/Device;->getAudioSampleRate()I

    move-result v0

    invoke-direct {p0, p1, v0}, LJAVARuntime/PCMSoundEmitter;-><init>(LJAVARuntime/NativeShortBuffer;I)V

    return-void
.end method

.method public constructor <init>(LJAVARuntime/NativeShortBuffer;I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "leftChannel",
            "sampleRate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftChannel",
            "sampleRate"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, LFc/c;

    iget-object p1, p1, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {v0, p1, p2}, LFc/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V

    iput-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "leftChannel can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;)V
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
    iput-object p1, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    return-void
.end method

.method public constructor <init>([S)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "leftChannel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftChannel"
        }
    .end annotation

    .line 16
    invoke-static {}, LJAVARuntime/Device;->getAudioSampleRate()I

    move-result v0

    invoke-direct {p0, p1, v0}, LJAVARuntime/PCMSoundEmitter;-><init>([SI)V

    return-void
.end method

.method public constructor <init>([SI)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "leftChannel",
            "sampleRate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftChannel",
            "sampleRate"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>([S)V

    .line 8
    :try_start_0
    new-instance p1, LFc/c;

    invoke-direct {p1, v0, p2}, LFc/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V

    iput-object p1, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result p2

    if-nez p2, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    .line 13
    :cond_1
    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "leftChannel can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getStepsCount()I
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->G()I

    move-result v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->destroy()V

    return-void
.end method

.method public getCurrentSecond()F
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->B()F

    move-result v0

    return v0
.end method

.method public getLeftVolume()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getLeftVolume()F

    move-result v0

    return v0
.end method

.method public getPitch()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getPitch()F

    move-result v0

    return v0
.end method

.method public getRightVolume()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getRightVolume()F

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getTotalSeconds()F
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->H()F

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->getVolume()F

    move-result v0

    return v0
.end method

.method public isLoop()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->isLoop()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isStopped()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->isStopped()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

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

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->seekTo(I)V

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

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->O(F)V

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

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

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

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

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

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

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

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

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

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

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

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

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
    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

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
    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->T(FFF)V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PCMSoundEmitter;->instance:Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Sound/Native/NativeSoundEmitter;->stop()V

    return-void
.end method
