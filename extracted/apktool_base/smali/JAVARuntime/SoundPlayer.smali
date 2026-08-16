.class public final LJAVARuntime/SoundPlayer;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Sound",
        "Components"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/SoundPlayer$Mode;
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 4
    iget-object v0, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    iput-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    return-void
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;)LJAVARuntime/SoundPlayer$Mode;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/SoundPlayer$Mode;->valueOf(Ljava/lang/String;)LJAVARuntime/SoundPlayer$Mode;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/SoundPlayer$Mode;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/SoundPlayer;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getDiameter()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->diameter:F

    return v0
.end method

.method public getMode()LJAVARuntime/SoundPlayer$Mode;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->getMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/SoundPlayer;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;)LJAVARuntime/SoundPlayer$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getPitch()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->getPitch()F

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->getVolume()F

    move-result v0

    return v0
.end method

.method public isDestroyOnFinish()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->isDestroyOnFinish()Z

    move-result v0

    return v0
.end method

.method public isLoop()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->isLoop()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isStopped()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->isStopped()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->play()V

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

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->seekTo(I)V

    return-void
.end method

.method public setDestroyOnFinish(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

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
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->setDestroyOnFinish(Z)V

    return-void
.end method

.method public setDiameter(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

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
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->diameter:F

    return-void
.end method

.method public setLoop(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

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
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->setLoop(Z)V

    return-void
.end method

.method public setMode(LJAVARuntime/SoundPlayer$Mode;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

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
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-static {p1}, LJAVARuntime/SoundPlayer;->ENUMCONVERT(LJAVARuntime/SoundPlayer$Mode;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->setMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer$q;)V

    return-void
.end method

.method public setPitch(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

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
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->setPitch(F)V

    return-void
.end method

.method public setSoundFile(LJAVARuntime/File;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFile"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 4
    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->useIOFile(Ljava/io/File;)V

    return-void
.end method

.method public setSoundFile(LJAVARuntime/SoundFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFile"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->setFile(Ljava/lang/String;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

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
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->setSpeed(F)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

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
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->setVolume(F)V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->stop()V

    return-void
.end method

.method public unPause()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SoundPlayer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;->play()V

    return-void
.end method
