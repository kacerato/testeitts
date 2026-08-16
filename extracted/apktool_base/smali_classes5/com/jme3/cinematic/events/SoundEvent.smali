.class public Lcom/jme3/cinematic/events/SoundEvent;
.super Lcom/jme3/cinematic/events/AbstractCinematicEvent;
.source "SourceFile"


# instance fields
.field protected audioNode:Lcom/jme3/audio/AudioNode;

.field protected path:Ljava/lang/String;

.field protected stream:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/jme3/cinematic/events/SoundEvent;->stream:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/cinematic/events/SoundEvent;->stream:Z

    .line 3
    iput-object p1, p0, Lcom/jme3/cinematic/events/SoundEvent;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .line 15
    invoke-direct {p0, p2}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(F)V

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/jme3/cinematic/events/SoundEvent;->stream:Z

    .line 17
    iput-object p1, p0, Lcom/jme3/cinematic/events/SoundEvent;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLcom/jme3/animation/LoopMode;)V
    .locals 0

    .line 21
    invoke-direct {p0, p2, p3}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(FLcom/jme3/animation/LoopMode;)V

    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lcom/jme3/cinematic/events/SoundEvent;->stream:Z

    .line 23
    iput-object p1, p0, Lcom/jme3/cinematic/events/SoundEvent;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/animation/LoopMode;)V
    .locals 0

    .line 18
    invoke-direct {p0, p2}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(Lcom/jme3/animation/LoopMode;)V

    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, Lcom/jme3/cinematic/events/SoundEvent;->stream:Z

    .line 20
    iput-object p1, p0, Lcom/jme3/cinematic/events/SoundEvent;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/jme3/cinematic/events/SoundEvent;-><init>(Ljava/lang/String;)V

    .line 5
    iput-boolean p2, p0, Lcom/jme3/cinematic/events/SoundEvent;->stream:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZF)V
    .locals 0

    .line 6
    invoke-direct {p0, p3}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(F)V

    .line 7
    iput-object p1, p0, Lcom/jme3/cinematic/events/SoundEvent;->path:Ljava/lang/String;

    .line 8
    iput-boolean p2, p0, Lcom/jme3/cinematic/events/SoundEvent;->stream:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZFLcom/jme3/animation/LoopMode;)V
    .locals 0

    .line 12
    invoke-direct {p0, p3, p4}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(FLcom/jme3/animation/LoopMode;)V

    .line 13
    iput-object p1, p0, Lcom/jme3/cinematic/events/SoundEvent;->path:Ljava/lang/String;

    .line 14
    iput-boolean p2, p0, Lcom/jme3/cinematic/events/SoundEvent;->stream:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/jme3/animation/LoopMode;)V
    .locals 0

    .line 9
    invoke-direct {p0, p3}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(Lcom/jme3/animation/LoopMode;)V

    .line 10
    iput-object p1, p0, Lcom/jme3/cinematic/events/SoundEvent;->path:Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lcom/jme3/cinematic/events/SoundEvent;->stream:Z

    return-void
.end method


# virtual methods
.method public getAudioNode()Lcom/jme3/audio/AudioNode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/SoundEvent;->audioNode:Lcom/jme3/audio/AudioNode;

    return-object v0
.end method

.method public initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V

    new-instance p2, Lcom/jme3/audio/AudioNode;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/cinematic/events/SoundEvent;->path:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/jme3/cinematic/events/SoundEvent;->stream:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/audio/AudioData$DataType;->Stream:Lcom/jme3/audio/AudioData$DataType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/jme3/audio/AudioData$DataType;->Buffer:Lcom/jme3/audio/AudioData$DataType;

    :goto_0
    invoke-direct {p2, p1, v0, v1}, Lcom/jme3/audio/AudioNode;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Lcom/jme3/audio/AudioData$DataType;)V

    iput-object p2, p0, Lcom/jme3/cinematic/events/SoundEvent;->audioNode:Lcom/jme3/audio/AudioNode;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/jme3/audio/AudioNode;->setPositional(Z)V

    iget-object p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    invoke-virtual {p0, p1}, Lcom/jme3/cinematic/events/SoundEvent;->setLoopMode(Lcom/jme3/animation/LoopMode;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/SoundEvent;->audioNode:Lcom/jme3/audio/AudioNode;

    invoke-virtual {v0}, Lcom/jme3/audio/AudioNode;->pause()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/SoundEvent;->audioNode:Lcom/jme3/audio/AudioNode;

    invoke-virtual {v0}, Lcom/jme3/audio/AudioNode;->play()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/SoundEvent;->audioNode:Lcom/jme3/audio/AudioNode;

    invoke-virtual {v0}, Lcom/jme3/audio/AudioNode;->stop()V

    return-void
.end method

.method public onUpdate(F)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/cinematic/events/SoundEvent;->audioNode:Lcom/jme3/audio/AudioNode;

    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->getStatus()Lcom/jme3/audio/AudioSource$Status;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->stop()V

    :cond_0
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "path"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/cinematic/events/SoundEvent;->path:Ljava/lang/String;

    const-string v0, "stream"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/cinematic/events/SoundEvent;->stream:Z

    return-void
.end method

.method public setLoopMode(Lcom/jme3/animation/LoopMode;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->setLoopMode(Lcom/jme3/animation/LoopMode;)V

    sget-object v0, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/jme3/cinematic/events/SoundEvent;->audioNode:Lcom/jme3/audio/AudioNode;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jme3/audio/AudioNode;->setLooping(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/cinematic/events/SoundEvent;->audioNode:Lcom/jme3/audio/AudioNode;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/audio/AudioNode;->setLooping(Z)V

    :goto_0
    return-void
.end method

.method public setTime(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->setTime(F)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->stop()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/cinematic/events/SoundEvent;->audioNode:Lcom/jme3/audio/AudioNode;

    invoke-virtual {v0, p1}, Lcom/jme3/audio/AudioNode;->setTimeOffset(F)V

    :goto_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/cinematic/events/SoundEvent;->path:Ljava/lang/String;

    const-string v1, "path"

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jme3/cinematic/events/SoundEvent;->stream:Z

    const-string v1, "stream"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
