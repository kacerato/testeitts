.class public Lcom/jme3/cinematic/events/AnimEvent;
.super Lcom/jme3/cinematic/events/AbstractCinematicEvent;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private actionName:Ljava/lang/String;

.field private cinematic:Lcom/jme3/cinematic/Cinematic;

.field private composer:Lcom/jme3/anim/AnimComposer;

.field private layerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/cinematic/events/AnimEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/cinematic/events/AnimEvent;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/anim/AnimComposer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    .line 3
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, p2}, Lcom/jme3/anim/AnimComposer;->action(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    return-void
.end method


# virtual methods
.method public initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V

    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimEvent;->cinematic:Lcom/jme3/cinematic/Cinematic;

    return-void
.end method

.method public onPause()V
    .locals 4

    sget-object v0, Lcom/jme3/cinematic/events/AnimEvent;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "layer={0} action={1}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jme3/anim/AnimComposer;->getLayerManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jme3/anim/AnimComposer;->action(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jme3/anim/tween/action/Action;->setSpeed(D)V

    :cond_1
    return-void
.end method

.method public onPlay()V
    .locals 5

    sget-object v0, Lcom/jme3/cinematic/events/AnimEvent;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "layer={0} action={1}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jme3/anim/AnimComposer;->getCurrentAction(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jme3/anim/AnimComposer;->action(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/anim/AnimComposer;->setCurrentAction(Ljava/lang/String;Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    :cond_1
    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    sget-object v2, Lcom/jme3/cinematic/PlayState;->Stopped:Lcom/jme3/cinematic/PlayState;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/jme3/anim/AnimComposer;->setTime(Ljava/lang/String;D)V

    :cond_2
    iget v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/jme3/anim/tween/action/Action;->setSpeed(D)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/jme3/anim/AnimComposer;->setLayerManager(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    sget-object v0, Lcom/jme3/cinematic/events/AnimEvent;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "layer={0} action={1}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jme3/anim/AnimComposer;->getLayerManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jme3/anim/AnimComposer;->removeCurrentAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jme3/anim/AnimComposer;->setLayerManager(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onUpdate(F)V
    .locals 0

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

    const-string v0, "actionName"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    const-string v0, "cinematic"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/cinematic/Cinematic;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->cinematic:Lcom/jme3/cinematic/Cinematic;

    const-string v0, "composer"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/AnimComposer;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    const-string v0, "layerName"

    const-string v1, "Default"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(F)V
    .locals 4

    sget-object v0, Lcom/jme3/cinematic/events/AnimEvent;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "speed = {0}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->setSpeed(F)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    sget-object v1, Lcom/jme3/cinematic/PlayState;->Stopped:Lcom/jme3/cinematic/PlayState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jme3/anim/AnimComposer;->action(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    move-result-object v0

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/anim/tween/action/Action;->setSpeed(D)V

    :cond_0
    return-void
.end method

.method public setTime(F)V
    .locals 5

    sget-object v0, Lcom/jme3/cinematic/events/AnimEvent;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "layer={0} action={1} time={2}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->setTime(F)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jme3/anim/AnimComposer;->getCurrentAction(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jme3/anim/AnimComposer;->action(Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/anim/AnimComposer;->setCurrentAction(Ljava/lang/String;Ljava/lang/String;)Lcom/jme3/anim/tween/action/Action;

    :cond_1
    invoke-virtual {v1}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    sget-object v2, Lcom/jme3/animation/LoopMode;->Loop:Lcom/jme3/animation/LoopMode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    :cond_2
    rem-float/2addr p1, v0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/jme3/animation/LoopMode;->Cycle:Lcom/jme3/animation/LoopMode;

    if-ne v1, v2, :cond_4

    div-float v1, p1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    cmpl-float v2, v1, v3

    if-lez v2, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    rem-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    rem-float/2addr p1, v0

    sub-float p1, v0, p1

    :cond_4
    :goto_0
    cmpg-float v1, p1, v3

    if-gez v1, :cond_5

    iget-object p1, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/anim/AnimComposer;->setTime(Ljava/lang/String;D)V

    goto :goto_1

    :cond_5
    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/anim/AnimComposer;->setTime(Ljava/lang/String;D)V

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->stop()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/anim/AnimComposer;->setTime(Ljava/lang/String;D)V

    :goto_1
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

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->actionName:Ljava/lang/String;

    const-string v1, "actionName"

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->cinematic:Lcom/jme3/cinematic/Cinematic;

    const-string v1, "cinematic"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->composer:Lcom/jme3/anim/AnimComposer;

    const-string v1, "composer"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimEvent;->layerName:Ljava/lang/String;

    const-string v1, "layerName"

    const-string v2, "Default"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
