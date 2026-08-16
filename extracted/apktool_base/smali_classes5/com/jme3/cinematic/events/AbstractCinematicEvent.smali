.class public abstract Lcom/jme3/cinematic/events/AbstractCinematicEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/cinematic/events/CinematicEvent;


# instance fields
.field protected initialDuration:F

.field protected listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/cinematic/events/CinematicEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected loopMode:Lcom/jme3/animation/LoopMode;

.field protected playState:Lcom/jme3/cinematic/PlayState;

.field protected resuming:Z

.field protected speed:F

.field protected time:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/jme3/cinematic/PlayState;->Stopped:Lcom/jme3/cinematic/PlayState;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    .line 3
    sget-object v0, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    const/high16 v0, 0x41200000    # 10.0f

    .line 4
    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->resuming:Z

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/jme3/cinematic/PlayState;->Stopped:Lcom/jme3/cinematic/PlayState;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    .line 10
    sget-object v0, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->resuming:Z

    .line 14
    iput p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    return-void
.end method

.method public constructor <init>(FLcom/jme3/animation/LoopMode;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/jme3/cinematic/PlayState;->Stopped:Lcom/jme3/cinematic/PlayState;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    .line 25
    sget-object v0, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->resuming:Z

    .line 29
    iput p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    .line 30
    iput-object p2, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/animation/LoopMode;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/jme3/cinematic/PlayState;->Stopped:Lcom/jme3/cinematic/PlayState;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    .line 17
    sget-object v0, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    const/high16 v0, 0x41200000    # 10.0f

    .line 18
    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->resuming:Z

    .line 22
    iput-object p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    return-void
.end method

.method private getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/cinematic/events/CinematicEventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->listeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->listeners:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/jme3/cinematic/events/CinematicEventListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public forceStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->stop()V

    return-void
.end method

.method public getDuration()F
    .locals 2

    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    iget v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getInitialDuration()F
    .locals 1

    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    return v0
.end method

.method public getLoopMode()Lcom/jme3/animation/LoopMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    return-object v0
.end method

.method public getPlayState()Lcom/jme3/cinematic/PlayState;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    return v0
.end method

.method public getTime()F
    .locals 1

    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    return v0
.end method

.method public initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V
    .locals 0

    return-void
.end method

.method public internalUpdate(F)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    sget-object v1, Lcom/jme3/cinematic/PlayState;->Playing:Lcom/jme3/cinematic/PlayState;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    iget v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    invoke-virtual {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->onUpdate(F)V

    iget p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    sget-object v2, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->stop()V

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    sget-object v3, Lcom/jme3/animation/LoopMode;->Loop:Lcom/jme3/animation/LoopMode;

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->setTime(F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    invoke-static {p1, v0, v1}, Lcom/jme3/animation/AnimationUtils;->clampWrapTime(FFLcom/jme3/animation/LoopMode;)F

    move-result p1

    iput p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    neg-float p1, p1

    iput p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onPlay()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onUpdate(F)V
.end method

.method public pause()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->onPause()V

    sget-object v0, Lcom/jme3/cinematic/PlayState;->Paused:Lcom/jme3/cinematic/PlayState;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/cinematic/events/CinematicEventListener;

    invoke-interface {v1, p0}, Lcom/jme3/cinematic/events/CinematicEventListener;->onPause(Lcom/jme3/cinematic/events/CinematicEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->onPlay()V

    sget-object v0, Lcom/jme3/cinematic/PlayState;->Playing:Lcom/jme3/cinematic/PlayState;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/cinematic/events/CinematicEventListener;

    invoke-interface {v1, p0}, Lcom/jme3/cinematic/events/CinematicEventListener;->onPlay(Lcom/jme3/cinematic/events/CinematicEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-class v0, Lcom/jme3/cinematic/PlayState;

    sget-object v1, Lcom/jme3/cinematic/PlayState;->Stopped:Lcom/jme3/cinematic/PlayState;

    const-string v2, "playState"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/cinematic/PlayState;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    const-string v0, "speed"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    const-string v0, "initalDuration"

    const/high16 v1, 0x41200000    # 10.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    const-string v1, "initialDuration"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    const-class v0, Lcom/jme3/animation/LoopMode;

    sget-object v1, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    const-string v2, "loopMode"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/jme3/animation/LoopMode;

    iput-object p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    return-void
.end method

.method public removeListener(Lcom/jme3/cinematic/events/CinematicEventListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInitialDuration(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    return-void
.end method

.method public setLoopMode(Lcom/jme3/animation/LoopMode;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    return-void
.end method

.method public setTime(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->onStop()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    sget-object v0, Lcom/jme3/cinematic/PlayState;->Stopped:Lcom/jme3/cinematic/PlayState;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/cinematic/events/CinematicEventListener;

    invoke-interface {v1, p0}, Lcom/jme3/cinematic/events/CinematicEventListener;->onStop(Lcom/jme3/cinematic/events/CinematicEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    const-string v1, "playState"

    sget-object v2, Lcom/jme3/cinematic/PlayState;->Stopped:Lcom/jme3/cinematic/PlayState;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    const-string v1, "speed"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    const-string v1, "initialDuration"

    const/high16 v2, 0x41200000    # 10.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    const-string v1, "loopMode"

    sget-object v2, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
