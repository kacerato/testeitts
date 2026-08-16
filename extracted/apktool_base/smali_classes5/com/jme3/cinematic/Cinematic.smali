.class public Lcom/jme3/cinematic/Cinematic;
.super Lcom/jme3/cinematic/events/AbstractCinematicEvent;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/app/state/AppState;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private cameras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/scene/CameraNode;",
            ">;"
        }
    .end annotation
.end field

.field private final cinematicEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/cinematic/events/CinematicEvent;",
            ">;"
        }
    .end annotation
.end field

.field private currentCam:Lcom/jme3/scene/CameraNode;

.field private eventsData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private initialized:Z

.field private lastFetchedKeyFrame:I

.field private nextEnqueue:F

.field private scene:Lcom/jme3/scene/Node;

.field protected timeLine:Lcom/jme3/cinematic/TimeLine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/cinematic/Cinematic;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/cinematic/Cinematic;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/cinematic/TimeLine;

    invoke-direct {v0}, Lcom/jme3/cinematic/TimeLine;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/jme3/cinematic/Cinematic;->lastFetchedKeyFrame:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/jme3/cinematic/Cinematic;->initialized:Z

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/jme3/cinematic/Cinematic;->nextEnqueue:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(F)V

    .line 9
    new-instance p1, Lcom/jme3/cinematic/TimeLine;

    invoke-direct {p1}, Lcom/jme3/cinematic/TimeLine;-><init>()V

    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/jme3/cinematic/Cinematic;->lastFetchedKeyFrame:I

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/jme3/cinematic/Cinematic;->initialized:Z

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/jme3/cinematic/Cinematic;->nextEnqueue:F

    return-void
.end method

.method public constructor <init>(FLcom/jme3/animation/LoopMode;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(FLcom/jme3/animation/LoopMode;)V

    .line 23
    new-instance p1, Lcom/jme3/cinematic/TimeLine;

    invoke-direct {p1}, Lcom/jme3/cinematic/TimeLine;-><init>()V

    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/jme3/cinematic/Cinematic;->lastFetchedKeyFrame:I

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/jme3/cinematic/Cinematic;->initialized:Z

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/jme3/cinematic/Cinematic;->nextEnqueue:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/animation/LoopMode;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(Lcom/jme3/animation/LoopMode;)V

    .line 16
    new-instance p1, Lcom/jme3/cinematic/TimeLine;

    invoke-direct {p1}, Lcom/jme3/cinematic/TimeLine;-><init>()V

    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/jme3/cinematic/Cinematic;->lastFetchedKeyFrame:I

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/jme3/cinematic/Cinematic;->initialized:Z

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/jme3/cinematic/Cinematic;->nextEnqueue:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Node;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>()V

    .line 30
    new-instance v0, Lcom/jme3/cinematic/TimeLine;

    invoke-direct {v0}, Lcom/jme3/cinematic/TimeLine;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/jme3/cinematic/Cinematic;->lastFetchedKeyFrame:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/jme3/cinematic/Cinematic;->initialized:Z

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/jme3/cinematic/Cinematic;->nextEnqueue:F

    .line 36
    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->scene:Lcom/jme3/scene/Node;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Node;F)V
    .locals 0

    .line 37
    invoke-direct {p0, p2}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(F)V

    .line 38
    new-instance p2, Lcom/jme3/cinematic/TimeLine;

    invoke-direct {p2}, Lcom/jme3/cinematic/TimeLine;-><init>()V

    iput-object p2, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    const/4 p2, -0x1

    .line 39
    iput p2, p0, Lcom/jme3/cinematic/Cinematic;->lastFetchedKeyFrame:I

    .line 40
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    .line 41
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Lcom/jme3/cinematic/Cinematic;->initialized:Z

    const/4 p2, 0x0

    .line 43
    iput p2, p0, Lcom/jme3/cinematic/Cinematic;->nextEnqueue:F

    .line 44
    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->scene:Lcom/jme3/scene/Node;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Node;FLcom/jme3/animation/LoopMode;)V
    .locals 0

    .line 53
    invoke-direct {p0, p2, p3}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(FLcom/jme3/animation/LoopMode;)V

    .line 54
    new-instance p2, Lcom/jme3/cinematic/TimeLine;

    invoke-direct {p2}, Lcom/jme3/cinematic/TimeLine;-><init>()V

    iput-object p2, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    const/4 p2, -0x1

    .line 55
    iput p2, p0, Lcom/jme3/cinematic/Cinematic;->lastFetchedKeyFrame:I

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    .line 57
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    const/4 p2, 0x0

    .line 58
    iput-boolean p2, p0, Lcom/jme3/cinematic/Cinematic;->initialized:Z

    const/4 p2, 0x0

    .line 59
    iput p2, p0, Lcom/jme3/cinematic/Cinematic;->nextEnqueue:F

    .line 60
    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->scene:Lcom/jme3/scene/Node;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Node;Lcom/jme3/animation/LoopMode;)V
    .locals 0

    .line 45
    invoke-direct {p0, p2}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;-><init>(Lcom/jme3/animation/LoopMode;)V

    .line 46
    new-instance p2, Lcom/jme3/cinematic/TimeLine;

    invoke-direct {p2}, Lcom/jme3/cinematic/TimeLine;-><init>()V

    iput-object p2, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    const/4 p2, -0x1

    .line 47
    iput p2, p0, Lcom/jme3/cinematic/Cinematic;->lastFetchedKeyFrame:I

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    .line 49
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lcom/jme3/cinematic/Cinematic;->initialized:Z

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lcom/jme3/cinematic/Cinematic;->nextEnqueue:F

    .line 52
    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->scene:Lcom/jme3/scene/Node;

    return-void
.end method

.method private getEventsData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->eventsData:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/Cinematic;->eventsData:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->eventsData:Ljava/util/Map;

    return-object v0
.end method

.method private setEnableCurrentCam(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->currentCam:Lcom/jme3/scene/CameraNode;

    if-eqz v0, :cond_0

    const-class v1, Lcom/jme3/scene/control/CameraControl;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/control/CameraControl;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/control/AbstractControl;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public activateCamera(FLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/jme3/cinematic/events/CameraEvent;

    invoke-direct {v0, p0, p2}, Lcom/jme3/cinematic/events/CameraEvent;-><init>(Lcom/jme3/cinematic/Cinematic;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/jme3/cinematic/Cinematic;->addCinematicEvent(FLcom/jme3/cinematic/events/CinematicEvent;)Lcom/jme3/cinematic/KeyFrame;

    return-void
.end method

.method public addCinematicEvent(FLcom/jme3/cinematic/events/CinematicEvent;)Lcom/jme3/cinematic/KeyFrame;
    .locals 2

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    invoke-virtual {v0, p1}, Lcom/jme3/cinematic/TimeLine;->getKeyFrameAtTime(F)Lcom/jme3/cinematic/KeyFrame;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/cinematic/KeyFrame;

    invoke-direct {v0}, Lcom/jme3/cinematic/KeyFrame;-><init>()V

    iget-object v1, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    invoke-virtual {v1, p1, v0}, Lcom/jme3/cinematic/TimeLine;->addKeyFrameAtTime(FLcom/jme3/cinematic/KeyFrame;)V

    :cond_0
    iget-object p1, v0, Lcom/jme3/cinematic/KeyFrame;->cinematicEvents:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/cinematic/Cinematic;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p2, p1, p0}, Lcom/jme3/cinematic/events/CinematicEvent;->initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V

    :cond_1
    return-object v0
.end method

.method public bindCamera(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/scene/CameraNode;
    .locals 2

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/scene/CameraNode;

    invoke-direct {v0, p1, p2}, Lcom/jme3/scene/CameraNode;-><init>(Ljava/lang/String;Lcom/jme3/renderer/Camera;)V

    sget-object p2, Lcom/jme3/scene/control/CameraControl$ControlDirection;->SpatialToCamera:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    invoke-virtual {v0, p2}, Lcom/jme3/scene/CameraNode;->setControlDir(Lcom/jme3/scene/control/CameraControl$ControlDirection;)V

    const-class p2, Lcom/jme3/scene/control/CameraControl;

    invoke-virtual {v0, p2}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/control/CameraControl;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/jme3/scene/control/AbstractControl;->setEnabled(Z)V

    iget-object p2, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/jme3/cinematic/Cinematic;->scene:Lcom/jme3/scene/Node;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-object v0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already bound to this cinematic"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/cinematic/Cinematic;->dispose()V

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->eventsData:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/cinematic/events/CinematicEvent;

    invoke-interface {v1}, Lcom/jme3/cinematic/events/CinematicEvent;->dispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enqueueCinematicEvent(Lcom/jme3/cinematic/events/CinematicEvent;)F
    .locals 2

    iget v0, p0, Lcom/jme3/cinematic/Cinematic;->nextEnqueue:F

    invoke-virtual {p0, v0, p1}, Lcom/jme3/cinematic/Cinematic;->addCinematicEvent(FLcom/jme3/cinematic/events/CinematicEvent;)Lcom/jme3/cinematic/KeyFrame;

    iget v1, p0, Lcom/jme3/cinematic/Cinematic;->nextEnqueue:F

    invoke-interface {p1}, Lcom/jme3/cinematic/events/CinematicEvent;->getInitialDuration()F

    move-result p1

    add-float/2addr v1, p1

    iput v1, p0, Lcom/jme3/cinematic/Cinematic;->nextEnqueue:F

    return v0
.end method

.method public fitDuration()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    invoke-virtual {v0}, Lcom/jme3/cinematic/TimeLine;->getLastKeyFrameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/cinematic/TimeLine;->getKeyFrameAtIndex(I)Lcom/jme3/cinematic/KeyFrame;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/cinematic/KeyFrame;->getCinematicEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/jme3/cinematic/KeyFrame;->getCinematicEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/cinematic/events/CinematicEvent;

    iget-object v4, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    invoke-virtual {v4, v0}, Lcom/jme3/cinematic/TimeLine;->getKeyFrameTime(Lcom/jme3/cinematic/KeyFrame;)F

    move-result v4

    invoke-interface {v3}, Lcom/jme3/cinematic/events/CinematicEvent;->getDuration()F

    move-result v5

    invoke-interface {v3}, Lcom/jme3/cinematic/events/CinematicEvent;->getSpeed()F

    move-result v3

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    cmpg-float v3, v1, v4

    if-gez v3, :cond_0

    move v1, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initialDuration:F

    return-void
.end method

.method public getCamera(Ljava/lang/String;)Lcom/jme3/scene/CameraNode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/CameraNode;

    return-object p1
.end method

.method public getEventData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->eventsData:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()Lcom/jme3/scene/Node;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->scene:Lcom/jme3/scene/Node;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 2

    invoke-virtual {p0, p2, p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V

    iget-object p1, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/cinematic/events/CinematicEvent;

    invoke-interface {v0, p2, p0}, Lcom/jme3/cinematic/events/CinematicEvent;->initEvent(Lcom/jme3/app/Application;Lcom/jme3/cinematic/Cinematic;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/CameraNode;

    invoke-interface {p2}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/CameraNode;->setCamera(Lcom/jme3/renderer/Camera;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/cinematic/Cinematic;->initialized:Z

    return-void
.end method

.method public isEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    sget-object v1, Lcom/jme3/cinematic/PlayState;->Playing:Lcom/jme3/cinematic/PlayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/cinematic/Cinematic;->initialized:Z

    return v0
.end method

.method public onPause()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/cinematic/events/CinematicEvent;

    invoke-interface {v1}, Lcom/jme3/cinematic/events/CinematicEvent;->getPlayState()Lcom/jme3/cinematic/PlayState;

    move-result-object v2

    sget-object v3, Lcom/jme3/cinematic/PlayState;->Playing:Lcom/jme3/cinematic/PlayState;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/jme3/cinematic/events/CinematicEvent;->pause()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPlay()V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/cinematic/Cinematic;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    sget-object v1, Lcom/jme3/cinematic/PlayState;->Paused:Lcom/jme3/cinematic/PlayState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/cinematic/events/CinematicEvent;

    invoke-interface {v1}, Lcom/jme3/cinematic/events/CinematicEvent;->getPlayState()Lcom/jme3/cinematic/PlayState;

    move-result-object v2

    sget-object v3, Lcom/jme3/cinematic/PlayState;->Paused:Lcom/jme3/cinematic/PlayState;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/jme3/cinematic/events/CinematicEvent;->play()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/jme3/cinematic/Cinematic;->lastFetchedKeyFrame:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/cinematic/events/CinematicEvent;

    invoke-interface {v3, v0}, Lcom/jme3/cinematic/events/CinematicEvent;->setTime(F)V

    invoke-interface {v3}, Lcom/jme3/cinematic/events/CinematicEvent;->forceStop()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/jme3/cinematic/Cinematic;->setEnableCurrentCam(Z)V

    return-void
.end method

.method public onUpdate(F)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    iget v1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    invoke-virtual {v0, v1}, Lcom/jme3/cinematic/TimeLine;->getKeyFrameIndexFromTime(F)I

    move-result v0

    iget v1, p0, Lcom/jme3/cinematic/Cinematic;->lastFetchedKeyFrame:I

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v0, :cond_1

    iget-object v2, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/cinematic/KeyFrame;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/jme3/cinematic/KeyFrame;->trigger()Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/cinematic/events/CinematicEvent;

    invoke-interface {v2, p1}, Lcom/jme3/cinematic/events/CinematicEvent;->internalUpdate(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput v0, p0, Lcom/jme3/cinematic/Cinematic;->lastFetchedKeyFrame:I

    return-void
.end method

.method public postRender()V
    .locals 0

    return-void
.end method

.method public putEventData(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/cinematic/Cinematic;->getEventsData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "cinematicEvents"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    check-cast v4, Lcom/jme3/cinematic/events/CinematicEvent;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "cameras"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    const-string v0, "timeLine"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/cinematic/TimeLine;

    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    return-void
.end method

.method public removeCinematicEvent(FLcom/jme3/cinematic/events/CinematicEvent;)Z
    .locals 1

    .line 5
    invoke-interface {p2}, Lcom/jme3/cinematic/events/CinematicEvent;->dispose()V

    .line 6
    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    invoke-virtual {v0, p1}, Lcom/jme3/cinematic/TimeLine;->getKeyFrameAtTime(F)Lcom/jme3/cinematic/KeyFrame;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/jme3/cinematic/Cinematic;->removeCinematicEvent(Lcom/jme3/cinematic/KeyFrame;Lcom/jme3/cinematic/events/CinematicEvent;)Z

    move-result p1

    return p1
.end method

.method public removeCinematicEvent(Lcom/jme3/cinematic/KeyFrame;Lcom/jme3/cinematic/events/CinematicEvent;)Z
    .locals 2

    .line 8
    invoke-interface {p2}, Lcom/jme3/cinematic/events/CinematicEvent;->dispose()V

    .line 9
    iget-object v0, p1, Lcom/jme3/cinematic/KeyFrame;->cinematicEvents:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p1}, Lcom/jme3/cinematic/KeyFrame;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    iget-object p2, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    invoke-virtual {p1}, Lcom/jme3/cinematic/KeyFrame;->getIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/jme3/cinematic/TimeLine;->removeKeyFrame(I)V

    :cond_0
    return v0
.end method

.method public removeCinematicEvent(Lcom/jme3/cinematic/events/CinematicEvent;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/jme3/cinematic/events/CinematicEvent;->dispose()V

    .line 2
    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/cinematic/KeyFrame;

    .line 4
    iget-object v1, v1, Lcom/jme3/cinematic/KeyFrame;->cinematicEvents:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeEventData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->eventsData:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 0

    return-void
.end method

.method public setActiveCamera(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/cinematic/Cinematic;->setEnableCurrentCam(Z)V

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/CameraNode;

    iput-object v0, p0, Lcom/jme3/cinematic/Cinematic;->currentCam:Lcom/jme3/scene/CameraNode;

    if-nez v0, :cond_0

    sget-object v0, Lcom/jme3/cinematic/Cinematic;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} is not a camera bond to the cinematic, cannot activate"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/jme3/cinematic/Cinematic;->setEnableCurrentCam(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->play()V

    :cond_0
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->id:Ljava/lang/String;

    return-void
.end method

.method public setScene(Lcom/jme3/scene/Node;)V
    .locals 2

    iput-object p1, p0, Lcom/jme3/cinematic/Cinematic;->scene:Lcom/jme3/scene/Node;

    iget-object p1, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/CameraNode;

    iget-object v1, p0, Lcom/jme3/cinematic/Cinematic;->scene:Lcom/jme3/scene/Node;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->setSpeed(F)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/cinematic/events/CinematicEvent;

    invoke-interface {v1, p1}, Lcom/jme3/cinematic/events/CinematicEvent;->setSpeed(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTime(F)V
    .locals 7

    invoke-virtual {p0}, Lcom/jme3/cinematic/Cinematic;->onStop()V

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->setTime(F)V

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    invoke-virtual {v0, p1}, Lcom/jme3/cinematic/TimeLine;->getKeyFrameIndexFromTime(F)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_3

    iget-object v1, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/cinematic/KeyFrame;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jme3/cinematic/KeyFrame;->getCinematicEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/cinematic/events/CinematicEvent;

    iget v4, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->time:F

    iget-object v5, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    invoke-virtual {v5, v1}, Lcom/jme3/cinematic/TimeLine;->getKeyFrameTime(Lcom/jme3/cinematic/KeyFrame;)F

    move-result v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_1

    invoke-interface {v3}, Lcom/jme3/cinematic/events/CinematicEvent;->getInitialDuration()F

    move-result v5

    cmpg-float v5, v4, v5

    if-lez v5, :cond_0

    invoke-interface {v3}, Lcom/jme3/cinematic/events/CinematicEvent;->getLoopMode()Lcom/jme3/animation/LoopMode;

    move-result-object v5

    sget-object v6, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    if-eq v5, v6, :cond_1

    :cond_0
    invoke-interface {v3}, Lcom/jme3/cinematic/events/CinematicEvent;->play()V

    :cond_1
    invoke-interface {v3, v4}, Lcom/jme3/cinematic/events/CinematicEvent;->setTime(F)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/jme3/cinematic/Cinematic;->lastFetchedKeyFrame:I

    iget-object p1, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    sget-object v0, Lcom/jme3/cinematic/PlayState;->Playing:Lcom/jme3/cinematic/PlayState;

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->pause()V

    :cond_4
    return-void
.end method

.method public stateAttached(Lcom/jme3/app/state/AppStateManager;)V
    .locals 0

    return-void
.end method

.method public stateDetached(Lcom/jme3/app/state/AppStateManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->stop()V

    return-void
.end method

.method public update(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/cinematic/Cinematic;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->playState:Lcom/jme3/cinematic/PlayState;

    sget-object v1, Lcom/jme3/cinematic/PlayState;->Playing:Lcom/jme3/cinematic/PlayState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->internalUpdate(F)V

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

    invoke-super {p0, p1}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cinematicEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jme3/cinematic/events/CinematicEvent;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/export/Savable;

    const-string v1, "cinematicEvents"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->cameras:Ljava/util/Map;

    const-string v1, "cameras"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeStringSavableMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/jme3/cinematic/Cinematic;->timeLine:Lcom/jme3/cinematic/TimeLine;

    const-string v1, "timeLine"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
