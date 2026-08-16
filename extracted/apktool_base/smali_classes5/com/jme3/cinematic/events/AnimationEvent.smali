.class public Lcom/jme3/cinematic/events/AnimationEvent;
.super Lcom/jme3/cinematic/events/AbstractCinematicEvent;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MODEL_CHANNELS:Ljava/lang/String; = "modelChannels"

.field public static final SAVABLE_VERSION:I = 0x2

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected animationName:Ljava/lang/String;

.field protected blendTime:F

.field protected channel:Lcom/jme3/animation/AnimChannel;

.field protected channelIndex:I

.field protected cinematic:Lcom/jme3/cinematic/Cinematic;

.field protected model:Lcom/jme3/scene/Spatial;

.field protected modelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/cinematic/events/AnimationEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/cinematic/events/AnimationEvent;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 7
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    .line 8
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    .line 10
    const-class v0, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p1

    check-cast p1, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p1, p2}, Lcom/jme3/animation/AnimControl;->getAnimationLength(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Ljava/lang/String;F)V
    .locals 0

    .line 11
    invoke-direct {p0, p3}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(F)V

    const/4 p3, 0x0

    .line 12
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 p3, 0x0

    .line 13
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 14
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    .line 15
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Ljava/lang/String;FF)V
    .locals 0

    .line 30
    invoke-direct {p0, p3}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(F)V

    const/4 p3, 0x0

    .line 31
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 p3, 0x0

    .line 32
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 33
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    .line 34
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Ljava/lang/String;FI)V
    .locals 0

    .line 78
    invoke-direct {p0, p3}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(F)V

    const/4 p3, 0x0

    .line 79
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 p3, 0x0

    .line 80
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 81
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    .line 82
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    .line 84
    iput p4, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Ljava/lang/String;FLcom/jme3/animation/LoopMode;)V
    .locals 0

    .line 24
    invoke-direct {p0, p3, p4}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(FLcom/jme3/animation/LoopMode;)V

    const/4 p3, 0x0

    .line 25
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 p3, 0x0

    .line 26
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 27
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    .line 28
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Ljava/lang/String;FLcom/jme3/animation/LoopMode;F)V
    .locals 0

    .line 45
    invoke-direct {p0, p3, p4}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(FLcom/jme3/animation/LoopMode;)V

    const/4 p3, 0x0

    .line 46
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 p3, 0x0

    .line 47
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 48
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    .line 49
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    .line 51
    iput p5, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Ljava/lang/String;FLcom/jme3/animation/LoopMode;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p3, p4}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(FLcom/jme3/animation/LoopMode;)V

    const/4 p3, 0x0

    .line 86
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 p3, 0x0

    .line 87
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 88
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    .line 89
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    .line 91
    iput p5, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Ljava/lang/String;I)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 63
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    .line 64
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    .line 66
    const-class v0, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p1

    check-cast p1, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p1, p2}, Lcom/jme3/animation/AnimControl;->getAnimationLength(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    .line 67
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Ljava/lang/String;Lcom/jme3/animation/LoopMode;)V
    .locals 0

    .line 17
    invoke-direct {p0, p3}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(Lcom/jme3/animation/LoopMode;)V

    const/4 p3, 0x0

    .line 18
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 p3, 0x0

    .line 19
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 20
    const-class p3, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p1, p3}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p3

    check-cast p3, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p3, p2}, Lcom/jme3/animation/AnimControl;->getAnimationLength(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    .line 21
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    .line 22
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Ljava/lang/String;Lcom/jme3/animation/LoopMode;F)V
    .locals 0

    .line 37
    invoke-direct {p0, p3}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(Lcom/jme3/animation/LoopMode;)V

    const/4 p3, 0x0

    .line 38
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 p3, 0x0

    .line 39
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 40
    const-class p3, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p1, p3}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p3

    check-cast p3, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p3, p2}, Lcom/jme3/animation/AnimControl;->getAnimationLength(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    .line 41
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    .line 42
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Ljava/lang/String;Lcom/jme3/animation/LoopMode;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p3}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(Lcom/jme3/animation/LoopMode;)V

    const/4 p3, 0x0

    .line 53
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 p3, 0x0

    .line 54
    iput p3, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 55
    const-class p3, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p1, p3}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p3

    check-cast p3, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p3, p2}, Lcom/jme3/animation/AnimControl;->getAnimationLength(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    .line 56
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    .line 57
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    .line 59
    iput p4, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Ljava/lang/String;Lcom/jme3/animation/LoopMode;IF)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 71
    iput-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    .line 72
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    .line 75
    const-class p3, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p1, p3}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p1

    check-cast p1, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p1, p2}, Lcom/jme3/animation/AnimControl;->getAnimationLength(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    .line 76
    iput p4, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    .line 77
    iput p5, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    invoke-super {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->dispose()V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->cinematic:Lcom/jme3/cinematic/Cinematic;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    const-string v2, "modelChannels"

    invoke-virtual {v0, v2, v1}, Lcom/jme3/cinematic/Cinematic;->getEventData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->cinematic:Lcom/jme3/cinematic/Cinematic;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0, v2, v1}, Lcom/jme3/cinematic/Cinematic;->removeEventData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->cinematic:Lcom/jme3/cinematic/Cinematic;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    :cond_2
    return-void
.end method

.method public forceStop()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    invoke-virtual {v0, v1}, Lcom/jme3/animation/AnimChannel;->setTime(F)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/animation/AnimChannel;->reset(Z)V

    :cond_0
    invoke-super {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->forceStop()V

    return-void
.end method

.method public initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V

    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->cinematic:Lcom/jme3/cinematic/Cinematic;

    iget-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    const-string v0, "modelChannels"

    invoke-virtual {p2, v0, p1}, Lcom/jme3/cinematic/Cinematic;->getEventData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class v1, Lcom/jme3/animation/AnimControl;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    invoke-virtual {v2, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v2

    check-cast v2, Lcom/jme3/animation/AnimControl;

    invoke-virtual {v2}, Lcom/jme3/animation/AnimControl;->getNumChannels()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    invoke-virtual {v5, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v5

    check-cast v5, Lcom/jme3/animation/AnimControl;

    invoke-virtual {v5, v3}, Lcom/jme3/animation/AnimControl;->getChannel(I)Lcom/jme3/animation/AnimChannel;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    invoke-virtual {p2, v0, v2, p1}, Lcom/jme3/cinematic/Cinematic;->putEventData(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    check-cast p1, Ljava/util/Map;

    iget v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/AnimChannel;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/jme3/cinematic/Cinematic;->getScene()Lcom/jme3/scene/Node;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    :cond_2
    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/jme3/cinematic/Cinematic;->getScene()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/jme3/cinematic/Cinematic;->getScene()Lcom/jme3/scene/Node;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/jme3/cinematic/Cinematic;->getScene()Lcom/jme3/scene/Node;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    invoke-virtual {p2, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p2}, Lcom/jme3/animation/AnimControl;->createChannel()Lcom/jme3/animation/AnimChannel;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    iget p2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "model should not be null"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/animation/AnimChannel;->getControl()Lcom/jme3/animation/AnimControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/scene/control/AbstractControl;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {v0}, Lcom/jme3/animation/AnimChannel;->getControl()Lcom/jme3/animation/AnimControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/control/AbstractControl;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    sget-object v1, Lcom/jme3/cinematic/PlayState;->Stopped:Lcom/jme3/cinematic/PlayState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    iget v2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    invoke-virtual {v0, v1, v2}, Lcom/jme3/animation/AnimChannel;->setAnim(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    iget v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->speed:F

    invoke-virtual {v0, v1}, Lcom/jme3/animation/AnimChannel;->setSpeed(F)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    invoke-virtual {v0, v1}, Lcom/jme3/animation/AnimChannel;->setLoopMode(Lcom/jme3/animation/LoopMode;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/animation/AnimChannel;->setTime(F)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onUpdate(F)V
    .locals 0

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "modelName"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    const-string v0, "model"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    const-string v0, "animationName"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    const-string v0, "blendTime"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const-string v0, "channelIndex"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    return-void
.end method

.method public setLoopMode(Lcom/jme3/animation/LoopMode;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->setLoopMode(Lcom/jme3/animation/LoopMode;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/animation/AnimChannel;->setLoopMode(Lcom/jme3/animation/LoopMode;)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->setSpeed(F)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/animation/AnimChannel;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public setTime(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->setTime(F)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {v1}, Lcom/jme3/animation/AnimChannel;->getAnimationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    iget v2, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    invoke-virtual {v0, v1, v2}, Lcom/jme3/animation/AnimChannel;->setAnim(Ljava/lang/String;F)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    sget-object v1, Lcom/jme3/animation/LoopMode;->Loop:Lcom/jme3/animation/LoopMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {v0}, Lcom/jme3/animation/AnimChannel;->getAnimMaxTime()F

    move-result v0

    rem-float v0, p1, v0

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->loopMode:Lcom/jme3/animation/LoopMode;

    sget-object v2, Lcom/jme3/animation/LoopMode;->Cycle:Lcom/jme3/animation/LoopMode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {v1}, Lcom/jme3/animation/AnimChannel;->getAnimMaxTime()F

    move-result v1

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p1, v1

    cmpl-float v1, p1, v3

    if-lez v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    rem-float/2addr p1, v1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {p1}, Lcom/jme3/animation/AnimChannel;->getAnimMaxTime()F

    move-result p1

    iget-object v1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {v1}, Lcom/jme3/animation/AnimChannel;->getAnimMaxTime()F

    move-result v1

    rem-float/2addr v0, v1

    sub-float v0, p1, v0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {p1}, Lcom/jme3/animation/AnimChannel;->getAnimMaxTime()F

    move-result p1

    rem-float/2addr v0, p1

    :cond_3
    :goto_1
    cmpg-float p1, v0, v3

    if-gez p1, :cond_4

    iget-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {p1, v3}, Lcom/jme3/animation/AnimChannel;->setTime(F)V

    iget-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/jme3/animation/AnimChannel;->reset(Z)V

    :cond_4
    iget-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {p1}, Lcom/jme3/animation/AnimChannel;->getAnimMaxTime()F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {p1, v0}, Lcom/jme3/animation/AnimChannel;->setTime(F)V

    iget-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {p1}, Lcom/jme3/animation/AnimChannel;->getControl()Lcom/jme3/animation/AnimControl;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/jme3/scene/control/AbstractControl;->update(F)V

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->stop()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {p1, v0}, Lcom/jme3/animation/AnimChannel;->setTime(F)V

    iget-object p1, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channel:Lcom/jme3/animation/AnimChannel;

    invoke-virtual {p1}, Lcom/jme3/animation/AnimChannel;->getControl()Lcom/jme3/animation/AnimControl;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/jme3/scene/control/AbstractControl;->update(F)V

    :goto_2
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

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->model:Lcom/jme3/scene/Spatial;

    const-string v1, "model"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->modelName:Ljava/lang/String;

    const-string v1, "modelName"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->animationName:Ljava/lang/String;

    const-string v1, "animationName"

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->blendTime:F

    const-string v1, "blendTime"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/cinematic/events/AnimationEvent;->channelIndex:I

    const-string v1, "channelIndex"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
