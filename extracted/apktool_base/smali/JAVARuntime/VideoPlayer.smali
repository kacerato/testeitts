.class public final LJAVARuntime/VideoPlayer;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Sound",
        "Components"
    }
.end annotation


# instance fields
.field public transient component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 4
    iget-object v0, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    iput-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;)V
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
    iput-object p1, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    return-void
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

    const-class v0, LJAVARuntime/VideoPlayer;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getChromaKeyColor()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the chroma key color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a cor do chroma key."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->getChromaKeyColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChromaKeyTolerance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the chroma key tolerance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a tolerancia do chroma key."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->getChromaKeyTolerance()F

    move-result v0

    return v0
.end method

.method public isChromaKeyEnabled()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the chroma key is enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o chroma key esta habilitado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->isChromaKeyEnabled()Z

    move-result v0

    return v0
.end method

.method public isLoop()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->loop:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isStopped()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->isStopped()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->play()V

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

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->seekTo(I)V

    return-void
.end method

.method public setChromaKeyColor(LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the chroma key color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a cor do chroma key."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
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

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->setChromaKeyColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public setChromaKeyEnabled(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Enables or disables the chroma key."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Habilita ou desabilita o chroma key."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "enabled"
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

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->setChromaKeyEnabled(Z)V

    return-void
.end method

.method public setChromaKeyTolerance(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the chroma key tolerance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a tolerancia do chroma key."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "tolerance"
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

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->setChromaKeyTolerance(F)V

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

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->loop:Z

    return-void
.end method

.method public setOutputVideoFile(LJAVARuntime/File;)V
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

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {p1}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setOutputVideoFile(LJAVARuntime/OutputVideoFile;)V
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
    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->outTextureFile:Ljava/lang/String;

    return-void
.end method

.method public setVideoFile(LJAVARuntime/File;)V
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

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {p1}, LJAVARuntime/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    .line 7
    iget-object p1, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->E:Z

    :goto_0
    return-void
.end method

.method public setVideoFile(LJAVARuntime/VideoFile;)V
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
    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {p1}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->videoFile:Ljava/lang/String;

    .line 3
    iget-object p1, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->E:Z

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->stop()V

    return-void
.end method

.method public unPause()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VideoPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->resume()V

    return-void
.end method
